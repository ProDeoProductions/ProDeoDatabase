
# Connection with the MySQL database
class DatabaseEmpty:

    def __init__(self, parent):
        self.parent = parent
        return

    #######################################################
    # Empty databases
    #######################################################

    def empty_items(self, item_id=None):
        table_name = self.parent.get_table_name()
        id1_name = self.parent.get_id1_name()

        sql = f"DELETE FROM {table_name}"
        if item_id is not None:
            sql += f" WHERE {id1_name} = {item_id}"

            # Delete the connected links
            self.delete_links(item_id)

        sql = sql + " LIMIT 99999999"

        self.parent.execute_set(sql)
        return

    def empty_link(self, link, item1_id=None, item2_id=None):
        if link != "":
            # Get a copy of the base class for the link
            x_to_y = self.parent.item_base.get_link(link)
        else:
            # We already are a copy of the base class for the link
            x_to_y = self.parent.item_base

        table_name = x_to_y.db.get_table_name()
        id1_name = x_to_y.db.get_id1_name()
        id2_name = x_to_y.db.get_id2_name()
        item_type = x_to_y.db.get_type()
        lang = x_to_y.lang

        # Select query
        select_sql = f"DELETE FROM {table_name}"

        # If ID is given
        where_sql = ""
        if item1_id is not None:
            # ID 1 is given
            where_sql = f" WHERE {id1_name} = {item1_id}"
        if item2_id is not None:
            # ID 2 is given
            where_sql += f" %s {id2_name} = {item2_id}" \
                        % ("AND" if item1_id is not None else "WHERE")

        if item1_id is None and item2_id is None and not x_to_y.db.is_default_lang():
            # Different language, only take the language that we are currently parsing
            where_sql = f" WHERE lang = '{lang}' or lang is null"

        if table_name == "note_to_item" and item_type != "note" and \
                (item1_id is not None or item2_id is not None):
            item_type = x_to_y.db.get_type_id()
            # Make sure to choose the item_id from the correct table type
            where_sql = where_sql + f" AND item_type = {item_type}"

        # Add it all together
        sql = select_sql + where_sql + " LIMIT 99999999"

        x_to_y.db.execute_set(sql)
        return

    def delete_links(self, item_id):
        # Delete every link with this ID
        links = self.parent.get_links()
        for link in links:
            self.empty_link(link, item_id)

        return
