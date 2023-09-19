
from src.database.database import DEFAULT_LANG
from src.objects.items import ItemBase

###########################################


class Notes (ItemBase):
    def __init__(self, lang):
        # Set the object base
        self.type = "note"
        ItemBase.__init__(self, self.type)
        self.item_class = Notes

        # Language used for this class
        self.lang = lang.lower()

        # File name
        self.file_name = "notes"

        # The info on this table
        self.table_name = "notes"
        self.id1_name = "id"
        self.columns = [
            "id",
            "note",
            "type",
        ]

        # The template used for the file
        self.template = "{%TYPE%} ({%ID%})\n\t" \
                        "{{%NOTE%}}\n"

        self.links = {
            "lang": {
                "table_name": "notes_lang",
                "order_name": "id",
                "id1_name": "note_id",
                "columns": ["id",
                            "note_id",
                            "note",
                            "lang"],
                "extra": ["n_id",
                          "n_note"],
                "joins": ["RIGHT JOIN (SELECT n.id AS n_id, n.note AS n_note "
                          "FROM notes n) n ON n.n_id = x2y.note_id"],
                "template": "Note: {%N_ID%}\n"
                            "\t{{%NOTE%}}\n"
                            "\t{{%N_NOTE%}}\n",
            },
            "item": {
                "table_name": "note_to_item",
                "order_name": "id",
                "id1_name": "note_id",
                "id2_name": "item_id",
                "columns": ["id",
                            "note_id",
                            "item_id",
                            "item_type"],
                "renames": {"note_capped": "SUBSTRING(n.note, 1, 30) AS note_capped",
                            "item_name": "IFNULL(b.name, "
                                         "IFNULL(e.name, "
                                         "IFNULL(a.name, "
                                         "IFNULL(p.name, "
                                         "IFNULL(l.name, "
                                         "s.name))))) AS item_name"},
                "joins": ["LEFT JOIN (SELECT id AS n_id, note FROM notes) n ON n_id = x2y.note_id",
                          "LEFT JOIN type_item on item_type = type_id",
                          "LEFT JOIN (SELECT id AS b_id, name FROM books) b "
                          "on b_id = item_id AND type_name = 'book'",
                          "LEFT JOIN (SELECT id AS e_id, name FROM events) e "
                          "on e_id = item_id AND type_name = 'event'",
                          "LEFT JOIN (SELECT id AS a_id, name FROM activitys) a "
                          "on a_id = item_id AND type_name = 'activity'",
                          "LEFT JOIN (SELECT id AS p_id, name FROM peoples) p "
                          "on p_id = item_id AND type_name = 'people'",
                          "LEFT JOIN (SELECT id AS l_id, name FROM locations) l "
                          "on l_id = item_id AND type_name = 'location'",
                          "LEFT JOIN (SELECT id AS s_id, name FROM specials) s "
                          "on s_id = item_id AND type_name = 'special'"],
                "template": "{%NOTE_CAPPED%} ({%NOTE_ID%})\n\t"
                            "{{%ITEM_NAME%} ({%ITEM_ID%}); {%ITEM_TYPE%}}\n"
            },
            "source": {
                "table_name": "note_to_source",
                "id1_name": "note_id",
                "id2_name": "source_id",
                "columns": ["note_id",
                            "source_id"],
                "template": "",
            }
        }

        return

    def write_items(self):
        if self.lang == DEFAULT_LANG:
            self.write_link("item")
        else:
            print("### note_to_item is not supported in other languages ###")
        return

    def read_items(self):
        if self.lang == DEFAULT_LANG:
            self.read_link("item")
        else:
            print("### note_to_item is not supported in other languages ###")
        return
