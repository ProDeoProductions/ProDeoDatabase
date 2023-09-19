# Everything related to reading and parsing the item files
# coding: utf-8
from src.database import database
from collections import OrderedDict
from src.tools.base import getFiles, isFile, properties
import re


###########################################
# Books
def check_books():
    check_item("book")
    return


###########################################
# Events
def check_events():
    check_item("event")
    return


###########################################
# Events
def check_activities(event_id):
    check_item("activity", event_id)
    return


###########################################
# People
def check_peoples(event_id):
    check_item("people", event_id)
    return


###########################################
# Locations
def check_locations(event_id):
    check_item("location", event_id)
    return


###########################################
# Specials
def check_specials(event_id):
    check_item("special", event_id)
    return


###########################################
# The actual item function
def check_item(item_type, item_id=-1):
    db = database.Database()
    checks = []

    if item_type == "activity":
        checks.append(["Checking activities for missing information",
            """select distinct(a.id), a.name, 
                    if(a.descr is null or a.descr = '',"Descr is missing", ""), 
                    if(a.length is null or a.length = '', "Length is missing", ""), 
                    if(a.date is null or a.date = '', "Date is missing", "")
                from activitys as a 
                join activity_to_event as a2e
                on a2e.activity_id = a.id                
                where 
                    (a.descr is null 
                    or a.descr = '' 
                    or length is null
                    or length = ''
                    or date is null
                    or date = '')
                    and a2e.event_id = %s""" % item_id])
    if item_type == "event":
        checks.append(["Checking events for missing information",
            """select distinct(a.id), a.name,
                    if(a.descr is null or a.descr = '',"Descr is missing", ""), 
                    if(a.length is null or a.length = '', "Length is missing", ""), 
                    if(a.date is null or a.date = '', "Date is missing", "")
                from events as a                 
                where 
                    a.descr is null 
                    or a.descr = '' 
                    or length is null
                    or length = ''
                    or date is null
                    or date = ''"""])

    for check in checks:
        log, sql = check
        db.cursor.execute(sql.encode('utf-8'))
        results = db.cursor.fetchall()

        print(log)
        print(results)
        print()

    return


# Everything related to checking and parsing the item files
# coding: utf-8
from src.database import database
import re


###########################################
# event_to_parent
def check_event_to_parent():
    check_item_file("event", "parent")
    return


###########################################
# activity_to_parent
def check_activity_to_parent(event_id):
    check_item_file("activity", "parent", event_id)
    return


###########################################
# location_to_activity
def check_location_to_activity(event_id):
    check_item_file("location", "activity", event_id)
    return


###########################################
# people_to_activity
def check_people_to_activity(event_id):
    check_item_file("people", "activity", event_id)
    return


###########################################
# special_to_activity
def check_special_to_activity(event_id):
    check_item_file("special", "activity", event_id)
    return


###########################################
# people_to_aka
def check_people_to_aka():
    check_item_file("people", "aka")
    return


###########################################
# people_to_parent
def check_people_to_parent():
    check_item_file("people", "parent")
    return


###########################################
# location_to_aka
def check_location_to_aka():
    check_item_file("location", "aka")
    return


###########################################
# people_to_location
def check_people_to_location():
    check_item_file("people", "location")
    return


###########################################
# The actual item function
def check_item_file(item_type1, item_type2, item_id1=-1, item_id2=-1):
    db = database.Database()
    checks = []
    if (item_type1 == "activity") and (item_type2 == "parent"):
        # This is all about timelines, do some checking here!
        #
        checks.append(["Starts of timelines of the selected event",
                       """select distinct(a.id), a.name from activitys as a 
                           left join activity_to_parent as a2p
                           on a2p.activity_id = a.id
                           left join activity_to_event as a2e
                           on a2e.activity_id = a.id
           
                           where 
                               a2p.parent_id is null 
                               and 
                               a2e.event_id = %s""" % item_id1])

        checks.append(["Start of sub timelines of the selected event",
                       """select distinct(a2.id), a2.name from activitys as a
                           left join activity_to_parent as a2p
                           on a2p.activity_id = a.id
                           left join activitys as a2
                           on a2p.parent_id = a2.id
                           left join activity_to_event as a2e
                           on a2e.activity_id = a.id
           
                           where 
                               a2.level < a.level
                               and 
                               a2e.event_id = %s""" % item_id1])

    for check in checks:
        log, sql = check
        db.cursor.execute(sql.encode('utf-8'))
        results = db.cursor.fetchall()

        print(log)
        print(results)
        print()
    return

