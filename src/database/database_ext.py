
import src.settings
import mysql.connector
import os
from mysql.connector import errorcode


class DatabaseExt:
    def __init__(self):
        self.conn = mysql.connector
        self.dba_host = ""
        self.dba_username = ""
        self.dba_password = ""
        self.dba_database = ""

        if hasattr(src.settings, "dba_host"):
            self.dba_host = src.settings.dba_host
        if hasattr(src.settings, "dba_username"):
            self.dba_username = src.settings.dba_username
        if hasattr(src.settings, "dba_password"):
            self.dba_password = src.settings.dba_password
        if hasattr(src.settings, "dba_database"):
            self.dba_database = src.settings.dba_database

        return

    # This function makes a connection to the live external database that
    # is hosted on prodeodatabase.com, makes a backup of it and then updates
    # it with the current state of the local database.
    def update_ext(self):
        # We need to be sure we have all the login settings
        if (self.dba_host == "" or self.dba_username == "" or
                self.dba_password == "" or self.dba_database == ""):
            print("You do not have the required information to access the live external database")
            return

        conn = self.connect_ext()
        if conn is not None:
            # We are connected, start by making a backup
            self.backup_ext(conn)

        conn.close()
        return

    def connect_ext(self):
        conn = None

        # Connect to the database
        try:
            conn = self.conn.connect(host=self.dba_host,
                                     user=self.dba_username,
                                     passwd=self.dba_password,
                                     db=self.dba_database)
        except self.conn.Error as err:
            if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
                # Couldn't log in..
                print("Incorrect password or username")
            else:
                print(err)

        return conn

    def backup_ext(self, conn):
        print("Generating backup in files/sql/")
        os.system('mysqldump --host=%s --port=3306 --default-character-set=utf8 '
                  '--user=%s -p%s --protocol=tcp --skip-triggers "%s" > files/sql/backup.sql' %
                  (self.dba_host, self.dba_username, self.dba_password, self.dba_database))
        print("Backup created")
