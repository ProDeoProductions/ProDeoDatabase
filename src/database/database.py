
import mysql.connector
from mysql.connector import errorcode

from src.database.database_insert import DatabaseInsert
from src.database.database_empty import DatabaseEmpty
from src.database.database_get import DatabaseGet
from src.database.database_copy import DatabaseCopy
from src.database.database_merge import DatabaseMerge

DEFAULT_LANG = "nl"


# Connection with the MySQL database
class Database(DatabaseInsert, DatabaseEmpty, DatabaseGet, DatabaseCopy, DatabaseMerge):

    ACTION_NEW = 0
    ACTION_DELETE = 1
    ACTION_COPY = 2
    ACTION_MERGE = 3
    ACTION_UPDATE = 4

    def __init__(self, item_base):
        DatabaseInsert.__init__(self, self)
        DatabaseEmpty.__init__(self, self)
        DatabaseGet.__init__(self, self)
        DatabaseCopy.__init__(self, self)
        DatabaseMerge.__init__(self, self)

        self.conn = mysql.connector

        self.override_ids = False
        self.item_base = item_base
        return
        
    def connect_database(self):
        # Connect to the database
        try:
            conn = self.conn.connect(host="localhost",
                                     user="root",
                                     passwd="12345",
                                     db="bible")
        except self.conn.Error as err:
            if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
                # Couldn't log in..
                print("Incorrect password or username")
            elif err.errno == errorcode.ER_BAD_DB_ERROR:
                # This database doesn't exist yet, initialize it for use
                conn = self.conn.connect(host="localhost",
                                         user="root",
                                         passwd="12345")
                self.init_database(conn)
            else:
                print(err)
                
        return conn
        
    def init_database(self, conn):
        cursor = conn.cursor()
        
        # We have a backup in the SQL folder
        file = open("files/sql/bible.sql")
        sql = file.read()
        
        for result in cursor.execute(sql, multi=True):
            print("Numbers of Row affected bt tatement '{}': {}".format(result.statement, result.rowcount))
        
        # Close the cursor again
        cursor.close()
        
        return

    def execute_get(self, sql):
        # Connect to the database
        conn = self.connect_database()

        # Execute the query
        cursor = conn.cursor()
        cursor.execute(sql)
        results = cursor.fetchall()

        conn.close()

        # Get the results
        return results

    def execute_set(self, sql):
        # Connect to the database
        conn = self.connect_database()

        # Execute the query
        cursor = conn.cursor()
        cursor.execute(sql)
        conn.commit()
        conn.close()
        return

    #######################################################
    # Execute action on databases
    #######################################################

    def exec_action(self, action,
                    item_id, item_data):

        if action == self.ACTION_NEW:
            # Insert new ID
            item_id = self.insert_item(
                None,
                item_data,
            )
        elif action == self.ACTION_DELETE:
            # Delete ID
            self.empty_items(item_id)
        elif action == self.ACTION_COPY:
            # Copy ID
            self.copy_item(
                item_id,
                item_data
            )
        elif action == self.ACTION_MERGE:
            self.merge_links(item_id)
        else:
            # Update ID
            self.insert_item(
                item_id,
                item_data
            )

        return item_id

    def get_type(self):
        return self.item_base.item_type

    def get_type_id(self):
        return self.item_base.get_type_id("type_item", self.get_type())

    def get_type_names(self, table):
        sql = f"SELECT type_id, type_name FROM {table} ORDER BY type_id ASC"
        return self.execute_get(sql)

    def get_table_name(self):
        return self.item_base.table_name

    def get_order_name(self):
        return self.item_base.order_name

    def get_id1_name(self):
        return self.item_base.id1_name

    def get_id2_name(self):
        return self.item_base.id2_name

    def get_columns(self):
        columns = self.item_base.columns
        extra_columns = self.item_base.extra_columns
        sql_columns = self.item_base.sql_columns

        # Return the columns as a string
        columns = ", ".join(columns + extra_columns)

        if sql_columns is not None:
            # When there are columns with "AS" to give a different name
            columns = ", ".join(sql_columns)

        return columns

    def get_joins(self):
        sql_join = self.item_base.sql_join

        joins = ""
        if sql_join is not None:
            joins = " " + " ".join(sql_join)

        if "%LANG%" in joins:
            joins = joins.replace("%LANG%", self.item_base.lang)

        if "%E_ID%" in joins:
            joins = joins.replace("%E_ID%", self.item_base.event_id)

        return joins

    def get_groups(self):
        sql_group = self.item_base.sql_group

        # Return the groups as a string
        groups = ""

        if sql_group is not None:
            # Return the columns as a string
            groups = " GROUP BY " + ", ".join(sql_group.values())

        return groups

    def get_links(self):
        links = self.item_base.links.keys()
        return links

    def shift_order(self, order_id):
        table_name = self.get_table_name()
        order_name = self.get_order_name()

        get_sql = f"SELECT {order_name} FROM {table_name} " \
                  f"WHERE {order_name} > {order_id} ORDER BY {order_name} DESC;"

        # Get the results
        order_ids = self.execute_get(get_sql)

        for order_id in order_ids:
            order_id = order_id[0]
            sql = f"UPDATE {table_name} set {order_name} = {order_id} + 1 " \
                  f"WHERE {order_name} = {order_id} LIMIT 1"

            self.execute_set(sql)
        return

    def is_default_lang(self):
        return self.item_base.lang == DEFAULT_LANG
