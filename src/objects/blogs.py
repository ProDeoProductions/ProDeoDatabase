
from src.objects.items import ItemBase

###########################################


def sanitize(text):
    s_text = text.replace(";", "<DEL>").replace("\n", "<br>").replace("\r", "")
    return s_text


class Blogs (ItemBase):
    def __init__(self):
        # Set the object base
        self.type = "blog"
        ItemBase.__init__(self, self.type)
        self.file_name = "blogs"

        # The info on this table
        self.table_name = "blog"
        self.id1_name = "id"
        self.columns = [
            "id",
            "title",
            "text",
            "user",
            "date"
        ]

        # The template used for the file
        self.template = "{%TITLE%} ({%ID%})\n\t" \
                        "{{%TEXT%}; {%USER%}; {%DATE%}}\n"

        return
