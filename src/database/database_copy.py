
# Connection with the MySQL database
class DatabaseCopy:

    def __init__(self, parent):
        self.parent = parent
        return

    #######################################################
    # Empty databases
    #######################################################

    def copy_item(self, item_id, item_properties):

        # Insert this ID & new ID with same information
        self.parent.insert_item(
            item_id,
            item_properties
        )
        item_id2 = self.parent.insert_item(
            None,
            item_properties
        )

        # Copy the connected links as well
        self.copy_links(item_id, item_id2)
        return

    def copy_link(self, link,
                  item_id_old=None,
                  item_id_new=None):
        if link != "":
            # Get a copy of the base class for the link
            x_to_y = self.parent.item_base.get_link(link)
        else:
            # We already are a copy of the base class for the link
            x_to_y = self.parent.item_base

        # Get the current item_links
        data_list = x_to_y.db.get_link("", item_id_old)
        for data in data_list:
            # Convert the tuple to a list of the same size as the amount of columns
            item = list(data[slice(len(x_to_y.columns))])

            # Update the IDs in this link to the copy ID
            id1_idx = x_to_y.get_property_index(x_to_y.id1_name)

            # Insert the ID
            item[id1_idx] = item_id_new

            if x_to_y.order_name != "":
                # These tables have an order ID
                # The order ID needs to be one higher than its copy
                # Shifting all the other elements in the table
                order_idx = x_to_y.get_property_index(x_to_y.order_name)
                order_id = item[order_idx]

                # Insert the order id
                item[order_idx] = order_id + 1

                # Before we can push this to the database, all other items in this table need to be shifted
                x_to_y.db.shift_order(order_id)

            # Insert the copy
            x_to_y.db.insert_link("", item)
        return

    def copy_links(self, item_id1, item_id2):
        # copy every link with this ID
        links = self.parent.get_links()
        for link in links:
            self.copy_link(link, item_id1, item_id2)

        return
