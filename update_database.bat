1>2# : ^
''' 
@echo off
python "%~f0" %*
pause
exit /b 0
'''

import src.settings
import src.commands
import os

# Check if main.py exists.
# If not, create it
if not os.path.exists("main.py"):

    dba_username = ""
    dba_password = ""
    if hasattr(src.settings, "dba_username"):
        dba_username = src.settings.dba_username
    if hasattr(src.settings, "dba_password"):
        dba_password = src.settings.dba_password

    # Generate this file
    script = open("main.py", "w", encoding="utf8")

    if dba_username != "" and dba_password != "":
        # This person has access to the external database
        script.write("from src.database.database_ext import DatabaseExt\n")
    script.write("from src.commands import CommandHandler\n\n")
    script.write("# All available commands:\n")

    # Get all the available commands from the command handler
    CH = src.commands.CommandHandler("")
    commands = [command for command in dir(CH) if not callable(getattr(CH, command)) and not command.startswith("__") and isinstance(getattr(CH, command), list)]

    # Remove this list
    commands.remove("langs")
    for command in commands:
        script.write("# %s\n" % command)

    for lang in CH.langs:
        script.writelines("""
CH = CommandHandler("%s")
CH.execute_commands([
    CH.read_all
])\n""" % lang.upper())

    for lang in CH.langs:
        script.writelines("""
CH = CommandHandler("%s")
CH.execute_commands([
    CH.write_all
])\n""" % lang.upper())

    if dba_username != "" and dba_password != "":
        # This person has access to the external database
        script.writelines("""
# To update the external database with the current state of the local database
# Use the following code:
# db = DatabaseExt()
# db.update_ext()
""")

    script.close()

# Execute the file
os.system("python main.py")
