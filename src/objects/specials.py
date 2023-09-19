
from src.database.database import DEFAULT_LANG
from src.objects.items import ItemBase


class Specials (ItemBase):
    def __init__(self, lang):
        # Set the object base
        self.type = "special"
        ItemBase.__init__(self, self.type)
        self.item_class = Specials

        # Language used for this class
        self.lang = lang.lower()

        # The info on this table
        self.table_name = "specials"
        self.order_name = "order_id"
        self.id1_name = "id"
        self.columns = [
            "order_id",
            "id",
            "name",
            "descr",
            "meaning_name",
            "type",
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
                        "{{%DESCR%}; {%MEANING_NAME%}; {%TYPE%}}\n"

        self.links = {
            "lang": {
                "table_name": "specials_lang",
                "order_name": "id",
                "id1_name": "special_id",
                "columns": ["id",
                            "special_id",
                            "name",
                            "descr",
                            "meaning_name",
                            "lang"],
                "extra": ["s_id",
                          "s_name",
                          "s_descr",
                          "s_meaning_name"],
                "joins": ["RIGHT JOIN (SELECT s.id AS s_id, s.name AS s_name, s.descr AS s_descr, "
                          "s.meaning_name AS s_meaning_name FROM specials s) s ON s_id = x2y.special_id"],
                "template": "{%NAME%} ({%S_ID%}) [{%S_NAME%}]\n"
                            "\t{{%DESCR%}; {%MEANING_NAME%}}\n"
                            "\t{{%S_DESCR%}; {%S_MEANING_NAME%}}\n",
            },
            "activity": {
                "table_name": "special_to_activity",
                "id1_name": "special_id",
                "id2_name": "activity_id",
                "columns": ["special_id",
                            "activity_id"],
                "renames": {"name": "a.name",
                            "a_id": "a.id as a_id",
                            "book_start_id": "a.book_start_id",
                            "book_start_chap": "a.book_start_chap",
                            "book_start_vers": "a.book_start_vers",
                            "special_id_group": "GROUP_CONCAT(CONCAT(s.name, ' (', s.id, ')') "
                                                "ORDER BY s.id ASC SEPARATOR ', ') AS special_id_group"},
                "joins": ["LEFT JOIN specials s ON s.id = x2y.special_id",
                          "RIGHT JOIN activitys a on a.id = x2y.activity_id"],
                "groups": {"special_id": "a.id"},
                "template": "[{%BOOK_START_ID%} {%BOOK_START_CHAP%}:{%BOOK_START_VERS%}] {%NAME%}\n\t"
                            "({%A_ID%}) {{%SPECIAL_ID_GROUP%}}\n",
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
            print("### special_to_activity is not supported in other languages ###")
        return

    def read_activities(self):
        if self.lang == DEFAULT_LANG:
            self.read_link("activity")
        else:
            print("### special_to_activity is not supported in other languages ###")
        return
