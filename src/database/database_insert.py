
# Connection with the MySQL database
class DatabaseInsert:

    def __init__(self, parent):
        self.parent = parent

        self.MAX_ID = -1
        self.ORDER_ID = 1
        return

    #######################################################
    # Fill
    #######################################################

    def insert_item(self, item_id, item_data):
        table_name = self.parent.get_table_name()
        order_name = self.parent.get_order_name()

        # Get the order ID and item ID (if not given)
        order_id, item_id = self.retrieve_id(item_id)

        # Prepare the properties for SQL
        data_list = []
        for data in item_data:
            if isinstance(data, str):
                # Escape all single quotes
                data = data.replace("'", "\\'")

            # Add it to the list
            data_list.append(f"'{data}'")

        # Join the props together in a string
        values = ", ".join(data_list)

        # Create SQL statement
        sql = f"INSERT INTO {table_name} VALUES ({order_id}, {item_id}, {values})"
        if order_name == "":
            # These don't have an order ID
            sql = f"INSERT INTO {table_name} VALUES ({item_id}, {values})"
        print(sql)

        self.parent.execute_set(sql)
        return item_id

    def insert_link(self, link, item_data):
        if link != "":
            # Get a copy of the base class for the link
            x_to_y = self.parent.item_base.get_link(link)
        else:
            # We already are a copy of the base class for the link
            x_to_y = self.parent.item_base

        table_name = x_to_y.db.get_table_name()

        # Prepare the properties for SQL
        data_list = []
        for data in item_data:
            if isinstance(data, str):
                # Escape all single quotes
                data = data.replace("'", "\\'")

            # Add it to the list
            data_list.append(f"'{data}'")

        # Join the data together in a string
        values = ", ".join(data_list)

        sql = f"INSERT INTO {table_name} VALUES ({values})"
        print(sql)

        x_to_y.db.execute_set(sql)
        return

    #######################################################
    # Other functions
    #######################################################
    def retrieve_id(self, item_id):
        if item_id is None:
            item_id = self.MAX_ID
            self.MAX_ID += 1

        order_id = self.ORDER_ID
        self.ORDER_ID += 1

        return order_id, item_id

    def reset_order_id(self):
        self.ORDER_ID = 1
        return

    def get_max_id(self):
        table_name = self.parent.get_table_name()
        id1_name = self.parent.get_id1_name()

        # Retrieve the highest ID we have and make the new ID one higher
        sql = f"SELECT {id1_name} FROM {table_name} ORDER BY {id1_name} DESC LIMIT 1"
        results = self.parent.execute_get(sql)

        if len(results) > 0:
            item_id = results[0][0] + 1
            self.MAX_ID = item_id
        else:
            self.MAX_ID = 0
        return self.MAX_ID

    def get_max_order_id(self):
        table_name = self.parent.get_table_name()
        order_name = self.parent.get_order_name()

        # Retrieve the highest ID we have and make the new ID one higher
        sql = f"SELECT {order_name} FROM {table_name} ORDER BY {order_name} DESC LIMIT 1"
        results = self.parent.execute_get(sql)

        if len(results) > 0:
            item_id = results[0][0] + 1
            self.ORDER_ID = item_id
        else:
            self.ORDER_ID = 0
        return self.ORDER_ID
