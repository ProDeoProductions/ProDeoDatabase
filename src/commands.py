import os
from src.objects.books import Books
from src.objects.events import Events
from src.objects.activities import Activities
from src.objects.peoples import Peoples
from src.objects.locations import Locations
from src.objects.specials import Specials
from src.objects.items import Types
from src.objects.blogs import Blogs
from src.objects.notes import Notes
from src.objects.sources import Sources
from src.database.database import DEFAULT_LANG


class CommandHandler:
    def __init__(self, lang):
        self.lang = lang.lower()

        # First all the other languages and last the default language
        self.langs = ["en", "nl"]

        # Parse all event related things
        self.write_event_to_parent = ["write_event_to_parent", Events(self.lang).write_parents]
        self.read_event_to_parent = ["read_event_to_parent", Events(self.lang).read_parents]
        self.write_event_to_aka = ["write_event_to_aka", Events(self.lang).write_aka]
        self.read_event_to_aka = ["read_event_to_aka", Events(self.lang).read_aka]
        self.write_activity_to_parent = ["write_activity_to_parent", Activities(self.lang).write_parents]
        self.read_activity_to_parent = ["read_activity_to_parent", Activities(self.lang).read_parents]
        self.write_activity_to_aka = ["write_activity_to_aka", Activities(self.lang).write_aka]
        self.read_activity_to_aka = ["read_activity_to_aka", Activities(self.lang).read_aka]

        # Parse all items
        self.write_books = ["write_books", Books(self.lang).write]
        self.read_books = ["read_books", Books(self.lang).read]
        self.write_events = ["write_events", Events(self.lang).write]
        self.read_events = ["read_events", Events(self.lang).read]
        self.write_activities = ["write_activities", Events(self.lang).write_activities]
        self.read_activities = ["read_activities", Events(self.lang).read_activities]
        self.write_locations = ["write_locations", Locations(self.lang).write]
        self.read_locations = ["read_locations", Locations(self.lang).read]
        self.write_peoples = ["write_peoples", Peoples(self.lang).write]
        self.read_peoples = ["read_peoples", Peoples(self.lang).read]
        self.write_specials = ["write_specials", Specials(self.lang).write]
        self.read_specials = ["read_specials", Specials(self.lang).read]

        # Parse everything that links to activities
        self.write_location_to_activity = ["write_location_to_activity", Locations(self.lang).write_activities]
        self.read_location_to_activity = ["read_location_to_activity", Locations(self.lang).read_activities]
        self.write_people_to_activity = ["write_people_to_activity", Peoples(self.lang).write_activities]
        self.read_people_to_activity = ["read_people_to_activity", Peoples(self.lang).read_activities]
        self.write_special_to_activity = ["write_special_to_activity", Specials(self.lang).write_activities]
        self.read_special_to_activity = ["read_special_to_activity", Specials(self.lang).read_activities]

        # Parse all links
        self.write_people_to_parent = ["write_people_to_parent", Peoples(self.lang).write_parents]
        self.read_people_to_parent = ["read_people_to_parent", Peoples(self.lang).read_parents]
        self.write_people_to_location = ["write_people_to_location", Peoples(self.lang).write_locations]
        self.read_people_to_location = ["read_people_to_location", Peoples(self.lang).read_locations]
        self.write_location_to_aka = ["write_location_to_aka", Locations(self.lang).write_aka]
        self.read_location_to_aka = ["read_location_to_aka", Locations(self.lang).read_aka]
        self.write_people_to_aka = ["write_people_to_aka", Peoples(self.lang).write_aka]
        self.read_people_to_aka = ["read_people_to_aka", Peoples(self.lang).read_aka]

        # Parse all types
        self.write_types = ["write_types", Types().write]
        self.read_types = ["read_types", Types().read]

        # Parse blogs
        self.write_blogs = ["write_blogs", Blogs().write]
        self.read_blogs = ["read_blogs", Blogs().read]

        # Parse all notes & sources
        self.write_notes = ["write_notes", Notes(self.lang).write]
        self.read_notes = ["read_notes", Notes(self.lang).read]
        self.write_sources = ["write_sources", Sources(self.lang).write]
        self.read_sources = ["read_sources", Sources(self.lang).read]

        self.write_note_to_item = ["write_note_to_item", Notes(self.lang).write_items]
        self.read_note_to_item = ["read_note_to_item", Notes(self.lang).read_items]
        self.write_note_to_source = ["write_note_to_source", Sources(self.lang).write_notes]
        self.read_note_to_source = ["read_note_to_source", Sources(self.lang).read_notes]

        # Parse the entire database
        self.read_all = ["read_all", self.read_files]
        self.write_all = ["write_all", self.write_files]

        # Set the order_id and item_id to the same values
        self.reorder = ["reorder", self.reorder_database]

        # Create a translation directory with all necessary subdirs
        self.prepare_translation = ["prepare_translation", self.prepare_lang]
        return

    # Command Handler, to execute what I want it to execute
    def execute_commands(self, command_list):
        for command in command_list:
            if hasattr(self, command[0]):
                print("Executing: " + command[0])
                command[1]()
            else:
                print(f"Command {command[0]} does not exist")
        return

    def prepare_lang(self):
        lang_path = f'files/translate_{self.lang}'

        # Check the dir and create it if it doesn't exist yet
        if not os.path.isdir(lang_path):
            os.makedirs(lang_path)

        # Do this for the subdir too
        subdir_path = os.path.join(lang_path, "activities")
        if not os.path.isdir(subdir_path):
            os.makedirs(subdir_path)

        return

    def write_files(self):
        # When not the default lang, it's only for that single lang
        if self.lang != DEFAULT_LANG:
            # Links between the databases
            self.write_event_to_parent[1]()
            self.write_event_to_aka[1]()
            self.write_activity_to_parent[1]()
            self.write_activity_to_aka[1]()
            self.write_location_to_activity[1]()
            self.write_people_to_activity[1]()
            self.write_special_to_activity[1]()
            self.write_people_to_parent[1]()
            self.write_people_to_location[1]()
            self.write_people_to_aka[1]()
            self.write_location_to_aka[1]()
            self.write_note_to_item[1]()
            self.write_note_to_source[1]()

            # Main databases
            self.write_books[1]()
            self.write_events[1]()
            self.write_activities[1]()
            self.write_peoples[1]()
            self.write_locations[1]()
            self.write_specials[1]()

            # Other tables
            self.write_notes[1]()
        else:
            for lang in self.langs:
                # Make a copy in the correct language
                ch = CommandHandler(lang)

                # Links between the databases
                ch.write_event_to_parent[1]()
                ch.write_event_to_aka[1]()
                ch.write_activity_to_parent[1]()
                ch.write_activity_to_aka[1]()
                ch.write_location_to_activity[1]()
                ch.write_people_to_activity[1]()
                ch.write_special_to_activity[1]()
                ch.write_people_to_parent[1]()
                ch.write_people_to_location[1]()
                ch.write_people_to_aka[1]()
                ch.write_location_to_aka[1]()
                ch.write_note_to_item[1]()
                ch.write_note_to_source[1]()

            for lang in self.langs:
                # Make a copy in the correct language
                ch = CommandHandler(lang)

                # Main databases
                ch.write_books[1]()
                ch.write_events[1]()
                ch.write_activities[1]()
                ch.write_peoples[1]()
                ch.write_locations[1]()
                ch.write_specials[1]()

                # Other tables
                if lang == DEFAULT_LANG:
                    ch.write_types[1]()
                    ch.write_blogs[1]()
                    ch.write_notes[1]()
                    ch.write_sources[1]()
                else:
                    ch.write_notes[1]()

        return

    def read_files(self):
        # When not the default lang, it's only for that single lang
        if self.lang != DEFAULT_LANG:
            # Links between the databases
            self.read_event_to_parent[1]()
            self.read_event_to_aka[1]()
            self.read_activity_to_parent[1]()
            self.read_activity_to_aka[1]()
            self.read_location_to_activity[1]()
            self.read_people_to_activity[1]()
            self.read_special_to_activity[1]()
            self.read_people_to_parent[1]()
            self.read_people_to_location[1]()
            self.read_people_to_aka[1]()
            self.read_location_to_aka[1]()
            self.read_note_to_item[1]()
            self.read_note_to_source[1]()

            # Main databases
            self.read_books[1]()
            self.read_events[1]()
            self.read_activities[1]()
            self.read_peoples[1]()
            self.read_locations[1]()
            self.read_specials[1]()

            # Other tables
            self.read_notes[1]()
        else:
            for lang in self.langs:
                ch = CommandHandler(lang)

                # Links between the databases
                ch.read_event_to_parent[1]()
                ch.read_event_to_aka[1]()
                ch.read_activity_to_parent[1]()
                ch.read_activity_to_aka[1]()
                ch.read_location_to_activity[1]()
                ch.read_people_to_activity[1]()
                ch.read_special_to_activity[1]()
                ch.read_people_to_parent[1]()
                ch.read_people_to_location[1]()
                ch.read_people_to_aka[1]()
                ch.read_location_to_aka[1]()
                ch.read_note_to_item[1]()
                ch.read_note_to_source[1]()

            for lang in self.langs:
                # Make a copy in the correct language
                ch = CommandHandler(lang)

                # Main databases
                ch.read_books[1]()
                ch.read_events[1]()
                ch.read_activities[1]()
                ch.read_peoples[1]()
                ch.read_locations[1]()
                ch.read_specials[1]()

                # Other tables
                if lang == DEFAULT_LANG:
                    ch.read_types[1]()
                    ch.read_blogs[1]()
                    ch.read_notes[1]()
                    ch.read_sources[1]()
                else:
                    ch.read_notes[1]()

        return

    def reorder_database(self):
        # per type/table
        item_bases = [Books(DEFAULT_LANG),
                      Events(DEFAULT_LANG),
                      Activities(DEFAULT_LANG, None),
                      Locations(DEFAULT_LANG),
                      Peoples(DEFAULT_LANG),
                      Specials(DEFAULT_LANG)]

        # The item_base to work with
        for item_base in item_bases:
            db = item_base.db

            # Run it twice, once for negative numbers and once for positive numbers
            for i in range(2):
                # Start fresh with the order ID numbers
                db.reset_order_id()

                # Copy all elements and give them negative IDs
                items = db.get_items()
                for item in items:
                    item = list(item)

                    # Get the order id
                    order_id = item_base.get_property(item, item_base.order_name)
                    item_id = item_base.get_property(item, item_base.id1_name)
                    if i == 0:
                        # For the first round, we'll be using negative order IDs as the new item IDs
                        order_id = -order_id

                    # Remove the order id and the item id
                    if item_base.order_name == "":
                        # No order ID, only remove the item ID
                        del item[item_base.get_property_index(item_base.id1_name)]
                    elif item_base.get_property_index(item_base.order_name) < \
                            item_base.get_property_index(item_base.id1_name):
                        # Remove the highest ID first, so the lowest ID doesn't shift in index
                        del item[item_base.get_property_index(item_base.id1_name)]
                        del item[item_base.get_property_index(item_base.order_name)]
                    else:
                        # Remove the highest ID first, so the lowest ID doesn't shift in index
                        del item[item_base.get_property_index(item_base.order_name)]
                        del item[item_base.get_property_index(item_base.id1_name)]

                    # Create a new item with a negative ID
                    db.insert_item(order_id, item)

                    # Merge this item with the old item
                    db.merge_links([item_id, order_id])

                    # Delete the old item
                    db.empty_items(item_id)
        return
