
from src.database.database import DEFAULT_LANG
from src.objects.items import ItemBase


class Locations (ItemBase):
    def __init__(self, lang):
        # Set the object base
        self.type = "location"
        ItemBase.__init__(self, self.type)
        self.item_class = Locations

        # Language used for this class
        self.lang = lang.lower()

        # The info on this table
        self.table_name = "locations"
        self.order_name = "order_id"
        self.id1_name = "id"
        self.columns = [
            "order_id",
            "id",
            "name",
            "descr",
            "meaning_name",
            "type",
            "coordinates",
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
                        "{{%DESCR%}; {%MEANING_NAME%}; {%TYPE%}; {%COORDINATES%}}\n"

        self.links = {
            "lang": {
                "table_name": "locations_lang",
                "order_name": "id",
                "id1_name": "location_id",
                "columns": ["id",
                            "location_id",
                            "name",
                            "descr",
                            "meaning_name",
                            "lang"],
                "extra": ["l_id",
                          "l_name",
                          "l_descr",
                          "l_meaning_name"],
                "joins": ["RIGHT JOIN (SELECT l.id AS l_id, l.name AS l_name, l.descr AS l_descr, "
                          "l.meaning_name AS l_meaning_name FROM locations l) l ON l.l_id = x2y.location_id"],
                "template": "{%NAME%} ({%L_ID%}) [{%L_NAME%}]\n"
                            "\t{{%DESCR%}; {%MEANING_NAME%}}\n"
                            "\t{{%L_DESCR%}; {%L_MEANING_NAME%}}\n",

            },
            "activity": {
                "table_name": "location_to_activity",
                "id1_name": "location_id",
                "id2_name": "activity_id",
                "columns": ["location_id",
                            "activity_id"],
                "renames": {"name": "a.name",
                            "a_id": "a.id as a_id",
                            "book_start_id": "a.book_start_id",
                            "book_start_chap": "a.book_start_chap",
                            "book_start_vers": "a.book_start_vers",
                            "location_id_group": "GROUP_CONCAT(CONCAT(l.name, ' (', l.id, ')') "
                                                 "ORDER BY l.id ASC SEPARATOR ', ') AS location_id_group"},
                "joins": ["LEFT JOIN locations l ON l.id = x2y.location_id",
                          "RIGHT JOIN activitys a on a.id = x2y.activity_id"],
                "groups": {"location_id": "a.id"},
                "template": "[{%BOOK_START_ID%} {%BOOK_START_CHAP%}:{%BOOK_START_VERS%}] {%NAME%}\n\t"
                            "({%A_ID%}) {{%LOCATION_ID_GROUP%}}\n"
            },
            "aka": {
                "table_name": "location_to_aka",
                "order_name": "id",
                "id1_name": "location_id",
                "columns": [
                    "id",
                    "location_id",
                    "location_name",
                    "meaning_name",
                ],
                "extra": ["name"],
                "joins": ["LEFT JOIN (SELECT id AS l_id, name FROM locations) "
                          "AS locations ON x2y.location_id = locations.l_id"],
                "template": "[{%NAME%}] ({%LOCATION_ID%}) -> [{%LOCATION_NAME%}] ({%MEANING_NAME%})\n",
            },
            "aka_lang": {
                "table_name": "location_to_aka_lang",
                "order_name": "id",
                "id1_name": "location_id",
                "columns": [
                    "id",
                    "location_id",
                    "location_name",
                    "meaning_name",
                    "lang"
                ],
                "extra": ["l_id",
                          "l_name",
                          "lang_name",
                          "aka_name",
                          "aka_meaning_name"],
                "joins": ["RIGHT JOIN (SELECT aka.location_id AS aka_id, aka.location_name AS aka_name, "
                          "aka.meaning_name AS aka_meaning_name FROM location_to_aka aka) aka "
                          "ON x2y.location_id = aka.aka_id",
                          "JOIN (SELECT l1.id AS l_id, l1.name AS l_name FROM locations l1) l1 "
                          "ON aka.aka_id = l1.l_id",
                          "LEFT JOIN (SELECT l2.location_id AS lang_id, l2.name AS lang_name "
                          "FROM locations_lang l2 WHERE lang = '%LANG%') l2 ON l1.l_id = l2.lang_id"],
                "template": "{%LANG_NAME%} ({%L_ID%}) [{%L_NAME%}] -> \n"
                            "\t[{%LOCATION_NAME%}] ({%MEANING_NAME%})\n"
                            "\t[{%AKA_NAME%}] ({%AKA_MEANING_NAME%})\n",
            },
            "people": {
                "table_name": "people_to_location",
                "id1_name": "location_id",
                "id2_name": "people_id",
                "columns": [
                    "people_id",
                    "location_id",
                    "type",
                ],
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

    def write_activities(self):
        if self.lang == DEFAULT_LANG:
            self.write_link("activity")
        else:
            print("### location_to_activity is not supported in other languages ###")
        return

    def read_activities(self):
        if self.lang == DEFAULT_LANG:
            self.read_link("activity")
        else:
            print("### location_to_activity is not supported in other languages ###")
        return

    def write_aka(self):
        if self.lang == DEFAULT_LANG:
            self.write_link("aka")
        else:
            self.write_link("aka_lang")
        return

    def read_aka(self):
        if self.lang == DEFAULT_LANG:
            self.read_link("aka")
        else:
            self.read_link("aka_lang")
        return
