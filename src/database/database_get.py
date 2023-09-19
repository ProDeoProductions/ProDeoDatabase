
# Connection with the MySQL database
class DatabaseGet:

    def __init__(self, parent):
        self.parent = parent
        return

    #######################################################
    # Get databases
    #######################################################

    def get_items(self, item_id=None):
        table_name = self.parent.get_table_name()
        order_name = self.parent.get_order_name()
        id1_name = self.parent.get_id1_name()

        # The columns
        columns = self.parent.get_columns()

        # Select all
        select_sql = f"SELECT {columns} FROM {table_name}"

        where_sql = ""
        if item_id is not None:
            # Add the where clause with the ID
            where_sql = f" WHERE {id1_name} = {item_id}"

            # Add join and a where clause with the ID
            if self.parent.get_type() == "activity":
                where_sql = f" JOIN (SELECT activity_id as a_id, event_id as e_id FROM activity_to_event) a2e" \
                            f" ON a2e.a_id = activitys.id WHERE a2e.e_id = {item_id}"

        order_sql = ""
        if order_name != "":
            order_sql = f" ORDER BY {order_name}"

        # Add it all together
        sql = select_sql + where_sql + order_sql

        # Get the results
        return self.parent.execute_get(sql)

    def get_link(self, link, item1_id=None, item2_id=None):
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

        # The columns (Two IDs and the extra columns)
        columns = x_to_y.db.get_columns()

        if not x_to_y.db.is_default_lang():
            # Different language, only take the language that we are currently parsing
            # Do this by changing the table_name
            table_name = f"(SELECT * FROM {table_name} WHERE lang = '{lang}' OR lang IS NULL)"

        # Select query
        select_sql = f"SELECT {columns} FROM {table_name} AS x2y"

        # Join tables that are needed for this link
        join_sql = x_to_y.db.get_joins()

        # If ID is given
        where_sql = ""
        if item1_id is not None:
            # ID 1 is given
            where_sql = f" WHERE {id1_name} = {item1_id}"
        if item2_id is not None:
            # ID 2 is given
            where_sql += f" %s {id2_name} = {item2_id}" \
                        % ("AND" if item1_id is not None else "WHERE")

        group_sql = x_to_y.db.get_groups()

        # Ordering by a certain value for notes
        order_sql = ""
        if table_name == "note_to_item":
            if (item1_id is not None or item2_id is not None) and item_type != "note":
                item_type = x_to_y.db.get_type_id()
                # Make sure to choose the item_id from the correct table type
                where_sql = where_sql + f" AND item_type = {item_type}"
            order_sql = " ORDER BY note_id ASC, item_type ASC, item_id ASC"

        sql = select_sql + join_sql + where_sql + group_sql + order_sql

        return x_to_y.db.execute_get(sql)
