
from src.objects.items import ItemBase


class Books (ItemBase):
    def __init__(self, lang):
        # Set the object base
        self.type = "book"
        ItemBase.__init__(self, self.type)
        self.item_class = Books

        # Language used for this class
        self.lang = lang.lower()

        # The info on this table
        self.table_name = "books"
        self.order_name = "order_id"
        self.id1_name = "id"
        self.columns = [
            "order_id",
            "id",
            "name",
            "num_chapters",
            "summary"
        ]

        # The template used for the file
        self.template = "{%NAME%} ({%ID%})\n\t{{%NUM_CHAPTERS%}; {%SUMMARY%}}\n"

        self.links = {
            "lang": {
                "table_name": "books_lang",
                "order_name": "id",
                "id1_name": "book_id",
                "columns": ["id",
                            "book_id",
                            "name",
                            "summary",
                            "lang"],
                "extra": ["b_id",
                          "b_name",
                          "b_summary"],
                "joins": ["RIGHT JOIN (SELECT b.id AS b_id, b.name AS b_name, b.summary AS b_summary "
                          "FROM books b) b ON b_id = x2y.book_id"],
                "template": "{%NAME%} ({%B_ID%}) [{%B_NAME%}]\n"
                            "\t{{%SUMMARY%}}\n"
                            "\t{{%B_SUMMARY%}}\n"
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
