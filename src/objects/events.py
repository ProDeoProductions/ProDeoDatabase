
from src.database.database import DEFAULT_LANG
from src.objects.items import ItemBase
from src.objects.activities import Activities


class Events (ItemBase):
    def __init__(self, lang):
        # Set the object base
        self.type = "event"
        ItemBase.__init__(self, self.type)
        self.item_class = Events

        # Language used for this class
        self.lang = lang.lower()

        # The info on this table
        self.table_name = "events"
        self.order_name = "order_id"
        self.id1_name = "id"
        self.columns = [
            "order_id",
            "id",
            "name",
            "descr",
            "length",
            "date",
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
                        "{{%DESCR%}; {%LENGTH%}; {%DATE%}}\n"

        self.links = {
            "lang": {
                "table_name": "events_lang",
                "order_name": "id",
                "id1_name": "event_id",
                "columns": ["id",
                            "event_id",
                            "name",
                            "descr",
                            "length",
                            "date",
                            "lang"],
                "extra": ["e_id",
                          "e_name",
                          "e_descr",
                          "e_length",
                          "e_date"],
                "joins": ["RIGHT JOIN (SELECT e.id AS e_id, e.name AS e_name, e.descr AS e_descr,"
                          "e.length AS e_length, e.date AS e_date FROM events e) e ON e_id = x2y.event_id"],
                "template": "{%NAME%} ({%E_ID%}) [{%E_NAME%}]\n"
                            "\t{{%DESCR%}; {%LENGTH%}; {%DATE%}}\n"
                            "\t{{%E_DESCR%}; {%E_LENGTH%}; {%E_DATE%}}\n",
            },
            "activity": {
                "table_name": "activity_to_event",
                "id1_name": "event_id",
                "id2_name": "activity_id",
                "columns": ["activity_id",
                            "event_id"],
                "template": ""
            },
            "parent": {
                "table_name": "event_to_parent",
                "id1_name": "event_id",
                "id2_name": "parent_id",
                "columns": ["event_id",
                            "parent_id"],
                "extra": [],
                "renames": {"child_name": "children.name AS child_name",
                            "parent_name": "parents.name AS parent_name"},
                "joins": ["LEFT JOIN events AS parents ON parents.id = parent_id",
                          "LEFT JOIN events AS children ON children.id = event_id"],
                "template": "[{%PARENT_NAME%}] ({%PARENT_ID%}) -> [{%CHILD_NAME%}] ({%EVENT_ID%})\n",
            },
            "child": {
                "table_name": "event_to_parent",
                "id1_name": "parent_id",
                "id2_name": "event_id",
                "columns": ["event_id",
                            "parent_id"],
                "extra": [],
                "renames": {"child_name": "children.name AS child_name",
                            "parent_name": "parents.name AS parent_name"},
                "joins": ["LEFT JOIN events AS parents ON parents.id = parent_id",
                          "LEFT JOIN events AS children ON children.id = event_id"],
                "template": "[{%PARENT_NAME%}] ({%PARENT_ID%}) -> [{%CHILD_NAME%}] ({%EVENT_ID%})\n",
            },
            "aka": {
                "table_name": "event_to_aka",
                "order_name": "id",
                "id1_name": "event_id",
                "columns": [
                    "id",
                    "event_id",
                    "book_start_id",
                    "book_start_chap",
                    "book_start_vers",
                    "book_end_id",
                    "book_end_chap",
                    "book_end_vers",
                ],
                "extra": ["name"],
                "joins": ["LEFT JOIN (SELECT id AS e_id, name FROM events) AS events ON x2y.event_id = events.e_id"],
                "template": "{%NAME%} ({%EVENT_ID%}) -> [{%BOOK_START_ID%} " 
                            "{%BOOK_START_CHAP%}:{%BOOK_START_VERS%} - " 
                            "{%BOOK_END_ID%} {%BOOK_END_CHAP%}:{%BOOK_END_VERS%}]\n",
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

    def write_activities(self):
        # Get all the events
        sql = "SELECT DISTINCT event_id FROM activity_to_event"
        event_ids = self.db.execute_get(sql)

        for event_id in event_ids:
            # Write the activity file per event
            activity = Activities(self.lang, event_id)
            activity.write()
        return

    def read_activities(self):
        activity = Activities(self.lang, -1)

        # Save the max_id and order_id after each event to prevent them
        # from resetting each time
        max_id, order_id = activity.empty_db()

        # Get all the events
        sql = "SELECT DISTINCT id FROM events"
        event_ids = self.db.execute_get(sql)

        # Read all the activities from the files, but do not insert them in the database yet
        activities = {}
        for event_id in event_ids:
            # read the activity file per event
            activity = Activities(self.lang, event_id)
            activities[event_id] = activity

        # Insert the activity_to_event links first
        # These are needed for certain actions like merge and copy
        if self.lang == DEFAULT_LANG:
            # Only for the default language
            for event_id in activities:
                activity = activities[event_id]
                activity.parse_events()

        # Insert the activities themselves
        for event_id in activities:
            activity = activities[event_id]
            max_id, order_id = activity.parse_activities(max_id, order_id)

        return

    def write_parents(self):
        if self.lang == DEFAULT_LANG:
            self.write_link("parent")
        else:
            print("### event_to_parent is not supported in other languages ###")
        return

    def read_parents(self):
        if self.lang == DEFAULT_LANG:
            self.read_link("parent")
        else:
            print("### event_to_parent is not supported in other languages ###")
        return

    def write_aka(self):
        if self.lang == DEFAULT_LANG:
            self.write_link("aka")
        else:
            print("### event_to_aka is not supported in other languages ###")
        return

    def read_aka(self):
        if self.lang == DEFAULT_LANG:
            self.read_link("aka")
        else:
            print("### event_to_aka is not supported in other languages ###")
        return
