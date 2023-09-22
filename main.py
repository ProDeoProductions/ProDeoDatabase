from src.commands import CommandHandler

# Commands:
# write_event_to_parent
# read_event_to_parent
# write_event_to_aka
# read_event_to_aka
# write_activity_to_parent
# read_activity_to_parent
# write_activity_to_aka
# read_activity_to_aka
# write_books
# read_books
# write_events
# read_events
# write_activities
# read_activities
# write_locations
# read_locations
# write_peoples
# read_peoples
# write_specials
# read_specials
# write_location_to_activity
# read_location_to_activity
# write_people_to_activity
# read_people_to_activity
# write_special_to_activity
# read_special_to_activity
# write_people_to_parent
# read_people_to_parent
# write_people_to_location
# read_people_to_location
# write_location_to_aka
# read_location_to_aka
# write_people_to_aka
# read_people_to_aka
# write_types
# read_types
# write_blogs
# read_blogs
# write_notes
# read_notes
# write_sources
# read_sources
# write_note_to_item
# read_note_to_item
# write_note_to_source
# read_note_to_source
# read_all
# write_all
# reorder
# prepare_translation

# TODO:
# Verschillende soorten checks die handig zijn tijdens het invullen

CH = CommandHandler("EN")
CH.execute_commands([
    CH.read_all
])

CH = CommandHandler("NL")
CH.execute_commands([
    CH.read_all
])

CH = CommandHandler("EN")
CH.execute_commands([
    CH.write_all
])

CH = CommandHandler("NL")
CH.execute_commands([
    CH.write_all
])

# files.files_check.check_activity_to_parent(event_id)
# files.files_check.check_event_to_parent()

# files.files_check.check_events()
# files.files_check.check_activities(event_id)
# files.files_check.check_peoples(event_id)
# files.files_check.check_locations(event_id)
# files.files_check.check_specials(event_id)
#
# files.files_check.check_people_to_activity(event_id)
# files.files_check.check_location_to_activity(event_id)
# files.files_check.check_special_to_activity(event_id)

# files.files_check.check_location_to_aka()
# files.files_check.check_people_to_aka()
# files.files_check.check_people_to_location()
# files.files_check.check_people_to_parent()
# files.files_check.check_books()