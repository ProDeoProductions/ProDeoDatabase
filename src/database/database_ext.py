
import src.settings
import mysql.connector
import subprocess
from mysql.connector import errorcode


class DatabaseExt:
    def __init__(self):
        self.conn = mysql.connector

        # External database
        self.dba_host = ""
        self.dba_username = ""
        self.dba_password = ""
        self.dba_database = ""
        self.dba_dump = ""

        # Local database
        self.db_username = src.settings.db_username
        self.db_password = src.settings.db_password

        if hasattr(src.settings, "dba_host"):
            self.dba_host = src.settings.dba_host
        if hasattr(src.settings, "dba_username"):
            self.dba_username = src.settings.dba_username
        if hasattr(src.settings, "dba_password"):
            self.dba_password = src.settings.dba_password
        if hasattr(src.settings, "dba_database"):
            self.dba_database = src.settings.dba_database
        if hasattr(src.settings, "dba_dump"):
            self.dba_dump = src.settings.dba_dump

        return

    # This function makes a connection to the live external database that
    # is hosted on prodeodatabase.com, makes a backup of it and then updates
    # it with the current state of the local database.
    def update_ext(self):
        # We need to be sure we have all the login settings
        if (self.dba_host == "" or self.dba_username == "" or
                self.dba_password == "" or self.dba_database == "" or
                self.dba_dump == ""):
            print("You do not have the required information to access the live external database")
            return

        conn = self.connect_ext()
        if conn is not None:
            # We are connected, start by making a backup
            self.backup_ext()

            # Time to backup the local database as well
            self.backup_local()

            print("Updating the external database with the stored 'bible.sql' file")
            # Backup is created, time to update the database with the current state of the local database
            cursor = conn.cursor()

            # Backup of the local database
            file = open("files/sql/bible.sql", encoding="UTF8")
            sql = file.read()

            # We need to change the database name to the name of the external database
            sql = sql.replace("bible", self.dba_database)

            # This is an annoying issue.. The local database uses the "utf8mb4_0900_ai_ci" collation
            # by default, but it doesn't exist in the version the external database uses
            sql = sql.replace("utf8mb4_0900_ai_ci", "utf8mb4_general_ci")

            cursor.execute(sql, multi=True)

            # Close the cursor again
            cursor.close()

            print("Update finished")

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

    def backup_local(self):
        print("Generating backup for local database in files/sql/bible.sql")
        subprocess.check_output(f'"{self.dba_dump}" --host=localhost --port=3306 --default-character-set=utf8 '
                                f'--user={self.db_username} -p{self.db_password} --protocol=tcp --skip-triggers "bible" '
                                '> files/sql/bible.sql', shell=True).decode("utf-8")
        print("Backup created\n")

    def backup_ext(self):
        print("Generating backup for external database in files/sql/backup.sql")
        subprocess.check_output(f'"{self.dba_dump}" --host={self.dba_host} --port=3306 --default-character-set=utf8 '
                                f'--user={self.dba_username} -p{self.dba_password} --protocol=tcp --skip-triggers '
                                f'"{self.dba_database}" > files/sql/backup.sql', shell=True).decode("utf-8")
        print("Backup created\n")
