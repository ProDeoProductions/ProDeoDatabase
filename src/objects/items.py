import re
from src.database.database import Database, DEFAULT_LANG

book_names = [
    "Genesis",
    "Exodus",
    "Leviticus",
    "Numeri",
    "Deuteronomium",
    "Jozua",
    "Rechters",
    "Ruth",
    "1-Samuel",
    "2-Samuel",
    "1-Koningen",
    "2-Koningen",
    "1-Kronieken",
    "2-Kronieken",
    "Ezra",
    "Nehemia",
    "Ester",
    "Job",
    "Psalmen",
    "Spreuken",
    "Prediker",
    "Hooglied",
    "Jesaja",
    "Jeremia",
    "Klaagliederen",
    "Ezechiel",
    "Daniel",
    "Hosea",
    "Joel",
    "Amos",
    "Obadja",
    "Jona",
    "Micha",
    "Nahum",
    "Habakuk",
    "Sefanja",
    "Haggai",
    "Zacharia",
    "Maleachi",
    "Matteus",
    "Marcus",
    "Lucas",
    "Johannes",
    "Handelingen",
    "Romeinen",
    "1-Korintiers",
    "2-Korintiers",
    "Galaten",
    "Efeziers",
    "Filippenzen",
    "Kolossenzen",
    "1-Tessalonicenzen",
    "2-Tessalonicenzen",
    "1-Timoteus",
    "2-Timoteus",
    "Titus",
    "Filemon",
    "Hebreeen",
    "Jakobus",
    "1-Petrus",
    "2-Petrus",
    "1-Johannes",
    "2-Johannes",
    "3-Johannes",
    "Judas",
    "Openbaring"
]


def get_book_idx(book_name):
    if book_name == "-1":
        # New record, no name
        book_idx = -1
    else:
        book_idx = book_names.index(book_name) + 1
    return book_idx


def get_book_name(book_idx):
    if book_idx == -1:
        book_name = "-1"
    else:
        book_name = book_names[book_idx - 1]
    return book_name


class ItemBase:
    def __init__(self, item_type):
        # Information about the table in the database
        # To be filled in by every object
        self.table_name = ""
        self.order_name = ""
        self.id1_name = ""
        self.id2_name = ""
        self.columns = []

        self.lang = DEFAULT_LANG
        self.item_type = item_type

        # Connection to the database
        self.db = Database(self)

        # Information on the file for the database helper
        self.file_name = ""
        if self.item_type == "book":
            self.file_name = "books"
        if self.item_type == "event":
            self.file_name = "events"
        if self.item_type == "activity":
            self.file_name = "page_{%EVENT_ID%}"
        if self.item_type == "people":
            self.file_name = "peoples"
        if self.item_type == "location":
            self.file_name = "locations"
        if self.item_type == "special":
            self.file_name = "specials"

        # Template for the file to write to.
        # To be filled in by every object
        self.template = ""

        # Links to other tables
        self.links = {}
        self.event_id = None

        # Only used in case of link
        # These are extra columns with information shown in the file,
        # but not present in the database
        self.extra_columns = []

        # Some stuff needed for better SQL generation
        self.sql_join = None
        self.sql_columns = None
        self.sql_group = None
        return

    def get_file(self, mode="w"):
        # File to write to/read from
        file_name = f"files/translate_{self.lang}/{self.file_name}.txt"

        # Get the file if it exists
        file_object = open(file_name, mode, encoding='utf-8')

        return file_object

    def get_property(self, item_object, column):
        index = self.get_property_index(column)
        return item_object[index]

    def get_property_index(self, column):
        all_columns = self.columns + self.extra_columns
        return all_columns.index(column)

    def insert_properties(self, item_object):
        # Get all the properties from the template
        properties = re.findall(r"(?<={%)(\w+)(?=%})", self.template)

        # Start with the template
        write_line = self.template

        # Replace every property from the template
        for prop in properties:
            value = self.get_property(item_object, prop.lower())

            # Some things need to be converted
            if prop == "BOOK_START_ID" or prop == "BOOK_END_ID":
                value = get_book_name(value)
            if prop == "GENDER":
                value = self.get_type_name("type_gender", value)
            if prop == "TRIBE":
                value = self.get_type_name("type_tribe", value)
            if prop == "TYPE" and self.item_type == "location":
                value = self.get_type_name("type_location", value)
            if prop == "TYPE" and self.item_type == "people":
                value = self.get_type_name("type_people", value)
            if prop == "TYPE" and self.item_type == "special":
                value = self.get_type_name("type_special", value)
            if prop == "TYPE" and self.item_type == "note":
                value = self.get_type_name("type_note", value)
            if prop == "ITEM_TYPE" and self.item_type == "note":
                value = self.get_type_name("type_item", value)

            # If the value is an integer or None, make it a string
            if isinstance(value, int):
                value = str(value)
            if value is None:
                value = ""

            # Insert the value
            write_line = write_line.replace("{%" + prop + "%}", value)

        return write_line

    def extract_properties(self, lines):
        item_line = "".join(lines)
        if item_line != "" and item_line[-1] != "\n":
            item_line = item_line + "\n"

        # The template to extract the properties with
        regex_template = self.template.replace("; ", ";") \
            .replace("(", r"\(").replace(")", r"\)") \
            .replace("[", r"\[").replace("]", r"\]") \
            .replace("{%", "(?P<").replace("%}", ">.*)")
        props = re.match(regex_template, item_line)

        # The property list to fill up with found properties
        property_list = [""] * len(self.columns)

        # Get all the properties from the template
        t_props = re.findall(r"(?<={%)(\w+)(?=%})", self.template)
        for prop in t_props:
            list_index = self.get_property_index(prop.lower())
            list_value = "-1"
            if props is not None:
                # In case of a new record, props is None and can't be used
                list_value = props.group(prop).strip()

            # Some things need to be converted
            if prop == "BOOK_START_ID" or prop == "BOOK_END_ID":
                list_value = get_book_idx(list_value)
            if prop == "GENDER":
                list_value = self.get_type_id("type_gender", list_value)
            if prop == "TRIBE":
                list_value = self.get_type_id("type_tribe", list_value)
            if prop == "TYPE" and self.item_type == "location":
                list_value = self.get_type_id("type_location", list_value)
            if prop == "TYPE" and self.item_type == "people":
                list_value = self.get_type_id("type_people", list_value)
            if prop == "TYPE" and self.item_type == "special":
                list_value = self.get_type_id("type_special", list_value)
            if prop == "TYPE" and self.item_type == "note":
                list_value = self.get_type_id("type_note", list_value)
            if prop == "ITEM_TYPE" and self.item_type == "note":
                list_value = self.get_type_id("type_item", list_value)
            if prop == "B_ID":
                list_index = self.get_property_index("book_id")
            if prop == "E_ID":
                list_index = self.get_property_index("event_id")
            if prop == "A_ID":
                list_index = self.get_property_index("activity_id")
            if prop == "P_ID":
                list_index = self.get_property_index("people_id")
            if prop == "L_ID":
                list_index = self.get_property_index("location_id")
            if prop == "S_ID":
                list_index = self.get_property_index("special_id")
            if prop == "N_ID":
                list_index = self.get_property_index("note_id")
            if self.is_group(prop):
                # The actual property we want
                prop = prop.replace("_GROUP", "")
                list_index = self.get_property_index(prop.lower())

                # Get all the IDs from this group
                if props is not None:
                    list_value = re.findall(r"(?:\((\d*)\))+", list_value)
                else:
                    list_value = [-1]

            # Only add the properties that are in the database
            if list_index in range(len(property_list)):
                property_list[list_index] = list_value

        if "lang" in self.columns:
            list_index = self.get_property_index("lang")
            list_value = self.lang
            property_list[list_index] = list_value

        return property_list

    def is_multiline(self):
        return self.get_multiline() > 1

    def get_multiline(self):
        lines = self.template.split("\n")
        while "" in lines:
            lines.remove("")

        return len(lines)

    def is_group(self, prop):
        if self.sql_group is not None:
            name = prop.replace("_GROUP", "")
            return name.lower() in self.sql_group
        else:
            return False

    def parse_action(self, item_id):
        # Parse the action to be executed
        if item_id == '' or item_id == "-1":
            # New record has been added
            action = self.db.ACTION_NEW
        elif '-' in item_id:
            # Record can be deleted
            action = self.db.ACTION_DELETE
            item_id = item_id.replace("-", "")  # Remove '-' from ID
        elif '*' in item_id:
            # Record to be copied (for splitting)
            action = self.db.ACTION_COPY
            item_id = item_id.replace("*", "")  # Remove '*' from ID
        elif '+' in item_id:
            # Records can be merged
            action = self.db.ACTION_MERGE
            item_id = item_id.split('+')  # Remove '+' from IDs
        else:
            # Updated record
            action = self.db.ACTION_UPDATE

        if self.lang != DEFAULT_LANG:
            # Other actions aren't allowed in lang files
            action = self.db.ACTION_UPDATE

        return action, item_id

    def get_type_name(self, table, type_id):
        if type_id == -1:
            return ""

        # Get the special types from the database
        type_tuple = self.db.get_type_names(table)

        # Convert it to a dict
        type_dict = {}
        for name in type_tuple:
            type_dict[name[0]] = name[1]

        # Get the type name
        type_name = type_dict[type_id]
        return type_name

    def get_type_id(self, table, type_name):
        if type_name == "" or type_name == "-1":
            return -1

        # Get the special types from the database
        type_tuple = self.db.get_type_names(table)

        # Convert it to a dict
        type_dict = {}
        for name in type_tuple:
            type_dict[name[1]] = name[0]

        # Get the type name
        type_id = type_dict[type_name]
        return type_id

    def get_link(self, link):
        # The link to write
        link_details = self.links[link]

        # Make a copy of this class for the link
        x_to_y = ItemBase(self.item_type)
        x_to_y.lang = self.lang
        x_to_y.template = link_details["template"]

        # Information on this table
        x_to_y.columns = link_details["columns"]
        x_to_y.table_name = link_details["table_name"]

        if "order_name" in link_details:
            x_to_y.order_name = link_details["order_name"]
        if "id1_name" in link_details:
            x_to_y.id1_name = link_details["id1_name"]
        if "id2_name" in link_details:
            x_to_y.id2_name = link_details["id2_name"]

        # File name
        x_to_y.file_name = x_to_y.table_name.replace("_lang", "")

        # Extra columns for information in the read/write file
        if "extra" in link_details:
            x_to_y.extra_columns = link_details["extra"]

        # SQL stuff
        if "joins" in link_details:
            x_to_y.sql_join = link_details["joins"]
        if "groups" in link_details:
            x_to_y.sql_group = link_details["groups"]
        if "renames" in link_details:
            # The renames consist out of
            # - keys (used to read/write properties)
            # - values (used to read/write database)
            keys = list(link_details["renames"].keys())
            values = list(link_details["renames"].values())

            x_to_y.extra_columns += keys
            x_to_y.sql_columns = x_to_y.columns + values

        return x_to_y

    def write(self):
        if self.lang != DEFAULT_LANG:
            self.write_link("lang")
        else:
            file = self.get_file()
            file.write(self.template.replace("{%", "").replace("%}", ""))

            # Get all the information from the database
            items = self.db.get_items(self.event_id)

            for item in items:
                # Insert the properties into the pattern for this item
                write_line = self.insert_properties(item)

                print(write_line)
                file.write(write_line)
        return

    def write_link(self, link):
        # Get a copy of the base class for the link
        x_to_y = self.get_link(link)

        # Write the link file
        file = x_to_y.get_file()
        file.write(x_to_y.template.replace("{%", "").replace("%}", ""))

        # Get all the information from the database
        items = x_to_y.db.get_link("", self.event_id)

        for item in items:
            # Insert the properties into the pattern for this item
            write_line = x_to_y.insert_properties(item)

            print(write_line)
            file.write(write_line)
        return

    def read(self):
        if self.lang != DEFAULT_LANG:
            self.read_link("lang")
        else:
            file = self.get_file("r")

            # Read out the template
            file.readline()
            if self.is_multiline():
                # Multiple lines used for the template? Read them all
                num_lines = self.get_multiline()
                for _ in range(num_lines - 1):
                    file.readline()

            # Get the highest ID number
            # This is to prevent double item IDs when there are new items
            self.db.get_max_id()
            self.db.empty_items()

            line = file.readline()
            while line.strip() != "":

                # Depending on the template, we might need more than 1 line per item
                lines = [line]
                if line.strip() == "()":
                    lines = ""
                elif self.is_multiline():
                    # Multiple lines used for the template? Read them all
                    num_lines = self.get_multiline()
                    for _ in range(num_lines - 1):
                        lines.append(file.readline())

                # Extract the properties using the template
                properties = self.extract_properties(lines)

                # Get the item id and order id
                item_id = self.get_property(properties, self.id1_name)

                # Remove the order id and the item id
                if self.order_name == "":
                    # No order ID, only remove the item ID
                    del properties[self.get_property_index(self.id1_name)]
                elif self.get_property_index(self.order_name) < self.get_property_index(self.id1_name):
                    # Remove the highest ID first, so the lowest ID doesn't shift in index
                    del properties[self.get_property_index(self.id1_name)]
                    del properties[self.get_property_index(self.order_name)]
                else:
                    # Remove the highest ID first, so the lowest ID doesn't shift in index
                    del properties[self.get_property_index(self.order_name)]
                    del properties[self.get_property_index(self.id1_name)]

                # Get the action that is indicated by the ID
                action, item_id = self.parse_action(item_id)

                # Insert the information that we parsed
                self.db.exec_action(action, item_id, properties)

                # Next line for the while loop
                line = file.readline()

        return

    def read_link(self, link):
        # Get a copy of the base class for the link
        x_to_y = self.get_link(link)

        file = x_to_y.get_file("r")

        # Read out the template
        file.readline()
        if x_to_y.is_multiline():
            # Multiple lines used for the template? Read them all
            num_lines = x_to_y.get_multiline()
            for _ in range(num_lines - 1):
                file.readline()

        # Empty the link table
        x_to_y.db.get_max_id()
        x_to_y.db.empty_link("")

        # If there are still other languages present in the lang tables,
        # make sure to update the order id to get the max
        if not x_to_y.db.is_default_lang():
            x_to_y.db.get_max_order_id()

        line = file.readline()
        while line != "":

            # Depending on the template, we might need more than 1 line per item
            lines = [line]
            if line.strip() == "()":
                lines = ""
            elif x_to_y.is_multiline():
                # Multiple lines used for the template? Read them all
                num_lines = x_to_y.get_multiline()
                for _ in range(num_lines - 1):
                    lines.append(file.readline())

            # Extract the properties using the template
            properties = x_to_y.extract_properties(lines)

            # There are unfilled items in the text file to make it easier for us to translate everything
            if link == "lang" and x_to_y.item_type == "note":
                # Check the name, if the translated name is not set, skip this one
                name = x_to_y.get_property(properties, "note")
                if name == "":
                    line = file.readline()
                    continue
            elif link == "lang":
                # Check the name, if the translated name is not set, skip this one
                name = x_to_y.get_property(properties, "name")
                if name == "":
                    line = file.readline()
                    continue
            elif link == "aka_lang":
                # Check the name, if the translated name is not set, skip this one
                name = x_to_y.get_property(properties, f"{x_to_y.item_type}_name")
                if name == "":
                    line = file.readline()
                    continue

            if x_to_y.order_name != "":
                # These tables have an order ID, make sure to set it manually
                # Get the ID names and indices
                order_idx = x_to_y.get_property_index(x_to_y.order_name)
                id_idx = x_to_y.get_property_index(x_to_y.id1_name)

                # Retrieve the IDs
                order_id, item_id = x_to_y.db.retrieve_id(properties[id_idx])

                # Insert the order id
                properties[order_idx] = order_id

            # Insert the information that we parsed
            if x_to_y.sql_group is not None:
                # Something was grouped, meaning that we have multiple items per result
                groups = x_to_y.sql_group.keys()
                for group in groups:
                    # Get the index of the IDs
                    id_idx = x_to_y.get_property_index(group)

                    # And the IDs themselves
                    ids = properties[id_idx]
                    for item_id in ids:
                        properties[id_idx] = item_id
                        x_to_y.db.insert_link("", properties)
            else:
                x_to_y.db.insert_link("", properties)

            # Next line for the while loop
            line = file.readline()
        return


class Types(ItemBase):
    def __init__(self):
        self.item_type = "type"
        ItemBase.__init__(self, self.item_type)

        self.file_name = "types"
        self.tables = ["gender", "item", "location", "note", "people", "special", "tribe"]

        # Not used, just for reference
        self.columns = ["type_id", "type_name"]
        self.template = "{{%NAME%}, {%ID%}, {%TABLE%}}\n"
        return

    def write(self):
        file = self.get_file("w")

        # We have different tables to write with a single file and the other way around
        for table in self.tables:
            types = self.db.get_type_names("type_" + table)
            for row in types:
                type_id = row[0]
                type_name = row[1]

                write_line = f"({type_name}, {type_id}, {table})\n"

                print(write_line)
                file.write(write_line)
        return

    def read(self):
        # Clear out the database
        for table in self.tables:
            sql = f"DELETE FROM type_{table} LIMIT 99999999"
            self.db.execute_set(sql)

        file = self.get_file("r")

        # We have different tables to write with a single file and the other way around
        for line in file.readlines():
            # Its already written as a tuple
            row = tuple(line.replace("(", "")
                            .replace(")", "")
                            .split(","))

            type_name = row[0].strip()
            type_id = row[1].strip()
            table = row[2].strip()

            sql = f"INSERT INTO type_{table} VALUES ('{type_id}', '{type_name}')"
            print(sql)

            self.db.execute_set(sql)
        return
