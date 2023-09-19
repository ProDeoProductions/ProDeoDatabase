
# Connection with the MySQL database
class DatabaseMerge:

    def __init__(self, parent):
        self.parent = parent
        return

    #######################################################
    # Merge databases
    #######################################################

    def merge_link(self, link,
                   item_id_old=None, item_id_new=None):
        if link != "":
            # Get a copy of the base class for the link
            x_to_y = self.parent.item_base.get_link(link)
        else:
            # We already are a copy of the base class for the link
            x_to_y = self.parent.item_base

        table_name = x_to_y.db.get_table_name()
        order_name = x_to_y.db.get_order_name()
        id1_name = x_to_y.db.get_id1_name()
        id2_name = x_to_y.db.get_id2_name()

        if order_name == "" and id2_name != "":
            # These tables have the item_id as a PK, and it can't be a duplicate
            # Make sure the merging IDs don't have overlapping PKs
            data_list_old = x_to_y.db.get_link("", item_id_old)
            data_list_old = [data[slice(len(x_to_y.columns))] for data in data_list_old]
            data_list_new = x_to_y.db.get_link("", item_id_new)
            data_list_new = [data[slice(len(x_to_y.columns))] for data in data_list_new]

            for data_old in data_list_old:
                # Convert the tuple to a list of the same size as the amount of columns
                item_old = list(data_old)

                # Update the IDs in this link to the copy ID
                id1_idx = x_to_y.get_property_index(x_to_y.id1_name)
                id2_idx = x_to_y.get_property_index(x_to_y.id2_name)

                item1_id = item_old[id1_idx]
                item2_id = item_old[id2_idx]

                # Insert the ID
                item_new = item_old
                item_new[id1_idx] = int(item_id_new)

                data_new = tuple(item_new)
                if data_new in data_list_new:
                    # This would be a duplicate, delete it
                    x_to_y.db.empty_link("", item1_id, item2_id)
                elif x_to_y.table_name == "people_to_location":
                    # This table is the only exception by having a type as well
                    type_idx = x_to_y.get_property_index("type")
                    item_type = item_old[type_idx]

                    # Not a duplicate, merge it
                    # Update the ID to the new ID
                    sql = f"UPDATE {x_to_y.table_name} SET " \
                          f"{x_to_y.id1_name} = {item_id_new} WHERE {x_to_y.id1_name} = {item1_id} " \
                          f"AND {x_to_y.id2_name} = {item2_id} " \
                          f"AND type = {item_type} LIMIT 1"

                    x_to_y.db.execute_set(sql)
                else:
                    # Not a duplicate, merge it
                    # Update the ID to the new ID
                    sql = f"UPDATE {x_to_y.table_name} SET " \
                          f"{x_to_y.id1_name} = {item_id_new} WHERE {x_to_y.id1_name} = {item1_id} " \
                          f"AND {x_to_y.id2_name} = {item2_id} LIMIT 1"

                    x_to_y.db.execute_set(sql)
        else:
            # Update the ID to the new ID
            sql = f"UPDATE {table_name} SET " \
                  f"{id1_name} = {item_id_new} WHERE {id1_name} = {item_id_old} LIMIT 99999999"

            if table_name == "note_to_item":
                item_type = x_to_y.db.get_type_id()

                # Update the ID to the new ID
                sql = f"UPDATE {table_name} SET " \
                      f"{id1_name} = {item_id_new} WHERE {id1_name} = {item_id_old} " \
                      f"AND item_type = {item_type} LIMIT 99999999"

            x_to_y.db.execute_set(sql)

        return

    def merge_links(self, item_ids):
        # Merge every link with this ID
        links = self.parent.get_links()
        for link in links:
            self.merge_link(link, *item_ids)

        return
