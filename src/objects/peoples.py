
from src.database.database import DEFAULT_LANG
from src.objects.items import ItemBase


class Peoples (ItemBase):
    def __init__(self, lang):
        # Set the object base
        self.type = "people"
        ItemBase.__init__(self, self.type)
        self.item_class = Peoples

        # Language used for this class
        self.lang = lang.lower()

        # The info on this table
        self.table_name = "peoples"
        self.order_name = "order_id"
        self.id1_name = "id"
        self.columns = [
            "order_id",
            "id",
            "name",
            "descr",
            "meaning_name",
            "father_age",
            "mother_age",
            "age",
            "gender",
            "tribe",
            "profession",
            "nationality",
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
                        "{{%DESCR%}; {%MEANING_NAME%}; {%FATHER_AGE%}; {%MOTHER_AGE%}; " \
                        "{%AGE%}; {%GENDER%}; {%TRIBE%}; {%PROFESSION%}; {%NATIONALITY%}}\n"

        self.links = {
            "lang": {
                "table_name": "peoples_lang",
                "order_name": "id",
                "id1_name": "people_id",
                "columns": ["id",
                            "people_id",
                            "name",
                            "descr",
                            "meaning_name",
                            "profession",
                            "nationality",
                            "lang"],
                "extra": ["p_id",
                          "p_name",
                          "p_descr",
                          "p_meaning_name",
                          "p_profession",
                          "p_nationality"],
                "joins": ["RIGHT JOIN (SELECT p.id AS p_id, p.name AS p_name, p.descr AS p_descr, "
                          "p.meaning_name AS p_meaning_name, p.profession AS p_profession, "
                          "p.nationality AS p_nationality FROM peoples p) p ON p.p_id = x2y.people_id"],
                "template": "{%NAME%} ({%P_ID%}) [{%P_NAME%}]\n"
                            "\t{{%DESCR%}; {%MEANING_NAME%}; {%PROFESSION%}; {%NATIONALITY%}}\n"
                            "\t{{%P_DESCR%}; {%P_MEANING_NAME%}; {%P_PROFESSION%}; {%P_NATIONALITY%}}\n",
            },
            "activity": {
                "table_name": "people_to_activity",
                "id1_name": "people_id",
                "id2_name": "activity_id",
                "columns": ["people_id",
                            "activity_id"],
                "renames": {"name": "a.name",
                            "a_id": "a.id as a_id",
                            "book_start_id": "a.book_start_id",
                            "book_start_chap": "a.book_start_chap",
                            "book_start_vers": "a.book_start_vers",
                            "people_id_group": "GROUP_CONCAT(CONCAT(p.name, ' (', p.id, ')') "
                                               "ORDER BY p.id ASC SEPARATOR ', ') AS people_id_group"},
                "joins": ["LEFT JOIN peoples p ON p.id = x2y.people_id",
                          "RIGHT JOIN activitys a on a.id = x2y.activity_id"],
                "groups": {"people_id": "a.id"},
                "template": "[{%BOOK_START_ID%} {%BOOK_START_CHAP%}:{%BOOK_START_VERS%}] {%NAME%}\n\t"
                            "({%A_ID%}) {{%PEOPLE_ID_GROUP%}}\n",
            },
            "aka": {
                "table_name": "people_to_aka",
                "order_name": "id",
                "id1_name": "people_id",
                "columns": [
                    "id",
                    "people_id",
                    "people_name",
                    "meaning_name",
                ],
                "extra": ["name"],
                "joins": ["LEFT JOIN (SELECT id AS p_id, name FROM peoples) AS peoples "
                          "ON x2y.people_id = peoples.p_id"],
                "template": "[{%NAME%}] ({%PEOPLE_ID%}) -> [{%PEOPLE_NAME%}] ({%MEANING_NAME%})\n",
            },
            "aka_lang": {
                "table_name": "people_to_aka_lang",
                "order_name": "id",
                "id1_name": "people_id",
                "columns": [
                    "id",
                    "people_id",
                    "people_name",
                    "meaning_name",
                    "lang"
                ],
                "extra": ["p_id",
                          "p_name",
                          "lang_name",
                          "aka_name",
                          "aka_meaning_name"],
                "joins": ["RIGHT JOIN (SELECT aka.people_id AS aka_id, aka.people_name AS aka_name, "
                          "aka.meaning_name AS aka_meaning_name FROM people_to_aka aka) aka "
                          "ON x2y.people_id = aka.aka_id",
                          "JOIN (SELECT p1.id AS p_id, p1.name AS p_name FROM peoples p1) p1 "
                          "ON aka.aka_id = p1.p_id",
                          "LEFT JOIN (SELECT p2.people_id AS lang_id, p2.name AS lang_name "
                          "FROM peoples_lang p2 WHERE lang = '%LANG%') p2 ON aka.aka_id = p2.lang_id"],
                "template": "{%LANG_NAME%} ({%P_ID%}) [{%P_NAME%}] -> \n"
                            "\t[{%PEOPLE_NAME%}] ({%MEANING_NAME%})\n"
                            "\t[{%AKA_NAME%}] ({%AKA_MEANING_NAME%})\n",
            },
            "parent": {
                "table_name": "people_to_parent",
                "id1_name": "people_id",
                "id2_name": "parent_id",
                "columns": ["people_id",
                            "parent_id"],
                "extra": [],
                "renames": {"child_name": "children.name AS child_name",
                            "parent_name": "parents.name AS parent_name"},
                "joins": ["LEFT JOIN peoples AS parents ON parents.id = parent_id",
                          "LEFT JOIN peoples AS children ON children.id = people_id"],
                "template": "[{%PARENT_NAME%}] ({%PARENT_ID%}) -> [{%CHILD_NAME%}] ({%PEOPLE_ID%})\n",
            },
            "child": {
                "table_name": "people_to_parent",
                "id1_name": "parent_id",
                "id2_name": "people_id",
                "columns": ["people_id",
                            "parent_id"],
                "extra": [],
                "renames": {"child_name": "children.name AS child_name",
                            "parent_name": "parents.name AS parent_name"},
                "joins": ["LEFT JOIN peoples AS parents ON parents.id = parent_id",
                          "LEFT JOIN peoples AS children ON children.id = people_id"],
                "template": "[{%PARENT_NAME%}] ({%PARENT_ID%}) -> [{%CHILD_NAME%}] ({%PEOPLE_ID%})\n",
            },
            "location": {
                "table_name": "people_to_location",
                "id1_name": "people_id",
                "id2_name": "location_id",
                "columns": [
                    "people_id",
                    "location_id",
                    "type",
                ],
                "extra": ["people_name",
                          "location_name"],
                "joins": ["LEFT JOIN (SELECT id AS p_id, name as people_name FROM peoples) "
                          "AS peoples ON x2y.people_id = peoples.p_id",
                          "LEFT JOIN (SELECT id AS l_id, name as location_name FROM locations) "
                          "AS locations ON x2y.location_id = locations.l_id"],
                "template": "[{%PEOPLE_NAME%}] ({%PEOPLE_ID%}) -> [{%LOCATION_NAME%} ({%LOCATION_ID%})] ({%TYPE%})\n",
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
            print("### people_to_activity is not supported in other languages ###")
        return

    def read_activities(self):
        if self.lang == DEFAULT_LANG:
            self.read_link("activity")
        else:
            print("### people_to_activity is not supported in other languages ###")
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

    def write_parents(self):
        if self.lang == DEFAULT_LANG:
            self.write_link("parent")
        else:
            print("### people_to_parent is not supported in other languages ###")
        return

    def read_parents(self):
        if self.lang == DEFAULT_LANG:
            self.read_link("parent")
        else:
            print("### people_to_parent is not supported in other languages ###")
        return

    def write_locations(self):
        if self.lang == DEFAULT_LANG:
            self.write_link("location")
        else:
            print("### people_to_location is not supported in other languages ###")
        return

    def read_locations(self):
        if self.lang == DEFAULT_LANG:
            self.read_link("location")
        else:
            print("### people_to_location is not supported in other languages ###")
        return
