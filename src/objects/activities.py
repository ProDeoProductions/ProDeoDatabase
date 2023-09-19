
import os
from src.database.database import DEFAULT_LANG
from src.objects.items import ItemBase


# Get all the activity files in a certain directory
def get_files(path):
    try:
        files = filter(lambda f: f != "desktop.ini", os.listdir(path))
    except FileNotFoundError:
        files = []
    return files


class Activities (ItemBase):
    def __init__(self, lang, event_id=None):
        # Set the object base
        self.type = "activity"
        ItemBase.__init__(self, self.type)
        self.item_class = Activities

        # Language used for this class
        self.lang = lang.lower()

        # The event_id these activities belong to
        self.event_id = event_id
        if isinstance(event_id, tuple):
            self.event_id = event_id[0]
        if isinstance(self.event_id, int):
            self.event_id = str(self.event_id)

        self.file_name = self.get_file_name()

        # The info on this table
        self.table_name = "activitys"
        self.order_name = "order_id"
        self.id1_name = "id"
        self.columns = [
            "order_id",
            "id",
            "name",
            "descr",
            "length",
            "date",
            "level",
            "book_start_id",
            "book_start_chap",
            "book_start_vers",
            "book_end_id",
            "book_end_chap",
            "book_end_vers"
        ]

        # The template used for the file
        self.template = "{%NAME%} ({%ID%}) [{%BOOK_START_ID%} " \
                        "{%BOOK_START_CHAP%}:{%BOOK_START_VERS%} - " \
                        "{%BOOK_END_ID%} {%BOOK_END_CHAP%}:{%BOOK_END_VERS%}]\n\t" \
                        "{{%DESCR%}; {%LENGTH%}; {%DATE%}; {%LEVEL%}}\n"

        self.links = {
            "lang": {
                "table_name": "activitys_lang",
                "order_name": "id",
                "id1_name": "activity_id",
                "columns": ["id",
                            "activity_id",
                            "name",
                            "descr",
                            "length",
                            "date",
                            "lang"],
                "extra": ["a_id",
                          "a_name",
                          "a_descr",
                          "a_length",
                          "a_date"],
                "joins": ["RIGHT JOIN (SELECT a.id AS a_id, a.name AS a_name, a.descr AS a_descr, "
                          "a.length AS a_length, a.date AS a_date FROM activitys a) a ON a.a_id = x2y.activity_id",
                          "JOIN (SELECT activity_id AS a2e_id, event_id AS e_id "
                          "FROM activity_to_event WHERE event_id = '%E_ID%') a2e ON a2e.a2e_id = a_id"],
                "template": "{%NAME%} ({%A_ID%}) [{%A_NAME%}]\n"
                            "\t{{%DESCR%}; {%LENGTH%}; {%DATE%}}\n"
                            "\t{{%A_DESCR%}; {%A_LENGTH%}; {%A_DATE%}}\n"
            },
            "parent": {
                "table_name": "activity_to_parent",
                "id1_name": "activity_id",
                "id2_name": "parent_id",
                "columns": ["activity_id",
                            "parent_id"],
                "extra": [],
                "renames": {"child_name": "children.name AS child_name",
                            "parent_name": "parents.name AS parent_name"},
                "joins": ["LEFT JOIN activitys AS parents ON parents.id = parent_id",
                          "LEFT JOIN activitys AS children ON children.id = activity_id"],
                "template": "[{%PARENT_NAME%}] ({%PARENT_ID%}) -> [{%CHILD_NAME%}] ({%ACTIVITY_ID%})\n",
            },
            "child": {
                "table_name": "activity_to_parent",
                "id1_name": "parent_id",
                "id2_name": "activity_id",
                "columns": ["activity_id",
                            "parent_id"],
                "extra": [],
                "renames": {"child_name": "children.name AS child_name",
                            "parent_name": "parents.name AS parent_name"},
                "joins": ["LEFT JOIN activitys AS parents ON parents.id = parent_id",
                          "LEFT JOIN activitys AS children ON children.id = activity_id"],
                "template": "[{%PARENT_NAME%}] ({%PARENT_ID%}) -> [{%CHILD_NAME%}] ({%ACTIVITY_ID%})\n",
            },
            "aka": {
                "table_name": "activity_to_aka",
                "order_name": "id",
                "id1_name": "activity_id",
                "columns": [
                    "id",
                    "activity_id",
                    "book_start_id",
                    "book_start_chap",
                    "book_start_vers",
                    "book_end_id",
                    "book_end_chap",
                    "book_end_vers",
                ],
                "extra": ["name"],
                "joins": ["LEFT JOIN (SELECT id AS a_id, name FROM activitys) "
                          "AS activitys ON x2y.activity_id = activitys.a_id"],
                "template": "{%NAME%} ({%ACTIVITY_ID%}) -> [{%BOOK_START_ID%} " 
                            "{%BOOK_START_CHAP%}:{%BOOK_START_VERS%} - " 
                            "{%BOOK_END_ID%} {%BOOK_END_CHAP%}:{%BOOK_END_VERS%}]\n",
            },
            "event": {
                "table_name": "activity_to_event",
                "id1_name": "activity_id",
                "id2_name": "event_id",
                "columns": ["activity_id",
                            "event_id"],
                "template": "",
            },
            "people": {
                "table_name": "people_to_activity",
                "id1_name": "activity_id",
                "id2_name": "people_id",
                "columns": ["people_id",
                            "activity_id"],
                "template": "",
            },
            "location": {
                "table_name": "location_to_activity",
                "id1_name": "activity_id",
                "id2_name": "location_id",
                "columns": ["location_id",
                            "activity_id"],
                "template": "",
            },
            "special": {
                "table_name": "special_to_activity",
                "id1_name": "activity_id",
                "id2_name": "special_id",
                "columns": ["special_id",
                            "activity_id"],
                "template": "",
            },
            "note": {
                "table_name": "note_to_item",
                "order_name": "id",
                "id1_name": "item_id",
                "id2_name": "note_id",
                "columns": ["id",
                            "note_id",
                            "item_id",
                            "item_type"],
                "template": ""
            },
        }
        return

    def get_file_name(self):
        file_name = ""

        # Path to the activity files
        file_path = f"files/translate_{self.lang}/activities"

        # Get all the activity files
        files = get_files(file_path)
        for file in files:
            # Get file_id
            page, file_id, *name = file.replace(".txt", "").split('_')

            # Only return with the file for this event_id
            if file_id == self.event_id:
                file_name = f"activities/" + "_".join([page, file_id, *name])
                break

        if file_name == "":
            # This file does not exist yet
            file_name = f"activities/page_{self.event_id}"

        return file_name

    def empty_db(self):
        if self.lang != DEFAULT_LANG:
            item_base = self.get_link("lang")
        else:
            item_base = self

        # Get the currently highest ID number
        # This is to prevent double item IDs when there are new items
        max_id = item_base.db.get_max_id()
        order_id = 1

        # Clean out the activity_to_event part
        if item_base.lang == DEFAULT_LANG:
            # Not supported for other languages
            item_base.db.empty_link("event")
            item_base.db.empty_items()
        else:
            # If there are still other languages present in the lang tables,
            # make sure to update the order id to get the max
            item_base.db.empty_link("")
            order_id = item_base.db.get_max_order_id()
        return max_id, order_id

    def write(self):
        if self.lang != DEFAULT_LANG:
            item_base = self.get_link("lang")
            item_base.file_name = self.file_name
            item_base.event_id = self.event_id

            # Get all the information from the database
            items = item_base.db.get_link("")
        else:
            item_base = self

            # Get all the information from the database
            items = item_base.db.get_items(item_base.event_id)

        file = item_base.get_file()
        file.write(item_base.template.replace("{%", "").replace("%}", ""))

        for item in items:
            # Insert the properties into the pattern for this item
            write_line = item_base.insert_properties(item)

            print(write_line)
            file.write(write_line)
        return

    def read(self):
        if self.lang != DEFAULT_LANG:
            item_base = self.get_link("lang")
            item_base.file_name = self.file_name
            item_base.event_id = self.event_id
        else:
            item_base = self

        event = []
        file = self.get_file("r")

        # Read out the template
        file.readline()
        if item_base.is_multiline():
            # Multiple lines used for the template? Read them all
            num_lines = item_base.get_multiline()
            for _ in range(num_lines - 1):
                file.readline()

        line = file.readline()
        while line != "":

            # Depending on the template, we might need more than 1 line per item
            lines = [line]
            if line.strip() == "()":
                lines = ""
            elif item_base.is_multiline():
                # Multiple lines used for the template? Read them all
                num_lines = item_base.get_multiline()
                for _ in range(num_lines - 1):
                    lines.append(file.readline())

            # Extract the properties using the template
            properties = item_base.extract_properties(lines)

            # There are unfilled items in the text file to make it easier for us to translate everything
            if item_base.lang != DEFAULT_LANG:
                # Check the name, if the translated name is not set, skip this one
                name = item_base.get_property(properties, "name")
                if name == "":
                    line = file.readline()
                    continue

            # Get the item id and order id
            item_id = item_base.get_property(properties, item_base.id1_name)

            # Remove the order id and the item id
            if item_base.lang == DEFAULT_LANG:
                if item_base.get_property_index(item_base.order_name) < \
                        item_base.get_property_index(item_base.id1_name):
                    # Remove the highest ID first, so the lowest ID doesn't shift in index
                    del properties[item_base.get_property_index(item_base.id1_name)]
                    del properties[item_base.get_property_index(item_base.order_name)]
                else:
                    # Remove the highest ID first, so the lowest ID doesn't shift in index
                    del properties[item_base.get_property_index(item_base.order_name)]
                    del properties[item_base.get_property_index(item_base.id1_name)]

            # Get the action that is indicated by the ID
            action, item_id = item_base.parse_action(item_id)

            event.append([action, item_id, properties])

            # Next line for the while loop
            line = file.readline()

        return event

    def parse_events(self):
        for item in self.read():
            action, item_id, properties = item

            if action == self.db.ACTION_MERGE:
                # Take the old ID, this will be merged when the activities are being parsed
                item_id = item_id[0]
            elif action == self.db.ACTION_NEW:
                # Skip this one, we need an ID first
                continue

            # Insert a link between activity and event right away
            self.db.insert_link("event", [item_id, self.event_id])

    def parse_activities(self, max_id, order_id):
        self.db.MAX_ID = max_id
        self.db.ORDER_ID = order_id

        for item in self.read():
            action, item_id, properties = item

            if self.lang == DEFAULT_LANG:
                # Insert the information that we parsed
                item_id = self.db.exec_action(action, item_id, properties)
            else:
                # These tables have an order ID, make sure to set it manually
                # Get the ID names and indices
                order_idx = self.get_property_index(self.order_name)
                id1_idx = self.get_property_index(self.id1_name)

                # Retrieve the IDs
                order_id, item_id = self.db.retrieve_id(properties[id1_idx])

                # Insert the order id
                properties[order_idx] = order_id

                # Insert the information that we parsed
                item_id = self.db.insert_link("lang", properties)

            if action == self.db.ACTION_NEW:
                # Insert a link between activity and event now that we have an ID
                self.db.insert_link("event", [item_id, self.event_id])

        # Save the max_id and order_id after each event to prevent them
        # from resetting each time
        max_id = self.db.MAX_ID
        order_id = self.db.ORDER_ID
        return max_id, order_id

    def write_parents(self):
        if self.lang == DEFAULT_LANG:
            self.write_link("parent")
        else:
            print("### activity_to_parent is not supported in other languages ###")
        return

    def read_parents(self):
        if self.lang == DEFAULT_LANG:
            self.read_link("parent")
        else:
            print("### activity_to_parent is not supported in other languages ###")
        return

    def write_aka(self):
        if self.lang == DEFAULT_LANG:
            self.write_link("aka")
        else:
            print("### activity_to_aka is not supported in other languages ###")
        return

    def read_aka(self):
        if self.lang == DEFAULT_LANG:
            self.read_link("aka")
        else:
            print("### activity_to_aka is not supported in other languages ###")
        return
