ProDeo Database Helper:
=======================
This code is written in Python 3.10 and to execute it you will need a Python Interpreter that supports this version of Python.
The installer for this is located in the ProDeo Tools folder.

Project files:
==================
The textfiles are located in the files directory and the code in the src directory.
In the files directory there are multiple folders with abbriviations of different languages. The folder for the Dutch language is the main folder and contains the most information. The other languages are only translations of the Dutch version.
Every textfile starts with one or several lines to show to structure of the information. It's important to stick to this structure, otherwise the code won't be able to process the information correctly and can't import it into the database.

More about this structure later in this document.

The source directory has the following structure:
src
	- checks
								Not used yet, will be used soon to execute different checks on the database
	- database
		__init__.py
		database.py				General Database class, 
								Contains the other database classes
		database_copy.py		Database class to copy items
		database_empty.py		Database class to delete items
		database_get.py			Database class to read items
		database_insert.py		Database class to write om items
		database_merge.py		Database class to merge two items into one
	- objects
		__init__.py
		items.py				General Item base class, 
								Contains function that are used in the other classes
		activities.py			Item class for activities per event
		blogs.py				Item class for Blogs on the website
		books.py				Item class for Biblebooks
		events.py				Item class for events
		locations.py			Item class for locations
		notes.py				Item class for notes
		peoples.py				Item class for people
		sources					Item class for sources
		specials.py				Item class for special things
	__init__.py
	commands.py					Base class for all supported commands
generate_database.py			Main script. 
								Imports commands.py to execute commands.

The files directory has the following structure:
files
	- translate_en				Translation of the main language folder into English
	
	#############
		TODO
	#############
	
	
	
	
		- activities
								Deze map bevat alle activiteiten per gebeurtenis (event). 
								Elke page staat voor een gebeurtenis en bevat bijbehorende activiteiten
		books.txt				Bijbelboeken
		events.txt				Gebeurtenissen
		locations.txt			Locaties
		location_to_aka.txt		Andere namen voor locaties
		notes.txt				Notities
		peoples.txt				Personen
		people_to_aka.txt		Andere namen voor personen
		specials.txt			Speciale dingen
	- translate_nl				Hoofdtaal map
		- activities
								Deze map bevat alle activiteiten per gebeurtenis (event). 
								Elke page staat voor een gebeurtenis en bevat bijbehorende activiteiten
		activity_to_aka.txt		Andere vernoemingen van activiteiten
		activity_to_parent.txt	Volgorde activiteiten
		blogs.txt				Blogs op de website
		books.txt				Bijbelboeken
		events.txt				Gebeurtenissen
		event_to_aka.txt		Andere vernoemingen van gebeurtenissen
		event_to_parent.txt		Volgorde gebeurtenissen
		locations.txt			Locaties
		location_to_activity.txt	Verwijzing naar locaties
		location_to_aka.txt		Andere namen voor locaties
		notes.txt				Notities
		note_to_item.txt		Verwijzing naar items
		note_to_source.txt		Verwijzing naar bronnen
		peoples.txt				Personen
		people_to_activity.txt	Verwijzing naar personen
		people_to_aka.txt		Andere namen voor personen
		people_to_location.txt	Verwijzing naar locaties
		people_to_parent.txt	Verwijzing naar ouders/kinderen
		sources.txt				Bronnen
		specials.txt			Speciale dingen
		special_to_activity		Verwijzing naar speciale dingen
		types.txt				Tekstversie van types in de database
								In de database worden nummers gebruikt om typfouten te voorkomen
	- translate_xx
								Als er meerdere vertalingen beschikbaar zijn, zullen deze per map hier bij verschijnen en dezelfde indeling gebruiken als translate_en

Uitleg en gebruik tekstbestanden:
=================================
Zoals eerder beschreven, volgen de tekstbestanden een bepaalde structuur die moet worden aangehouden om de Database Helper te kunnen gebruiken. Deze structuur is deels bepaald door de tabellen in de database en deels door mij zodat ze beter begrijpbaar zijn.

Elke eerste paar regels van elk tekstbestand geven de template van een document. Dit is de structuur die moet worden aangehouden en is anders per tekstbestand. Deze template wordt bepaald door de Item classes en maakt het schrijven van generieke code een stuk makkelijker.

De template wordt gebruikt voor het lezen en het schrijven van tekstbestanden en is daarom zo belangrijk om aan te houden. Er wordt een regex search gedaan met deze template en deze krijgt alleen een match zodra de tekstbestanden deze template volgen. Anders kan er geen informatie worden gelezen uit de tekstbestanden.

De template bestaat altijd uit een titel in de eerste regel en eigenschappen in de overige regels. Dit is vaak een naam en een ID en in sommige gevallen ook het bijbelgedeelte waarin een item voor komt. In geval van vertalingen zijn dit ook vaak de Nederlandse versie van namen/titels en de vertaling ervan. In sommige gevallen zitten de titel en de eigenschappen samen in een enkele regel.

Als je een template wilt aanpassen, dan moet je dit doen in de behorende Classes. Niet alle gegevens hoeven voor elk item te worden ingevuld en sommige eigenschappen mogen dus leeg gelaten worden. Je krijgt vanzelf een foutmelding in Python als iets ingevuld had moeten worden. Voor types is het belangrijk dat je de voluit geschreven tekst versie gebruikt en niet de nummers die in de database opgeslagen zijn. Dit is om het leesbaar te houden voor mensen.

Ten slotte is het gebruik van ';' in de tekstbestanden alleen toegestaan om eigenschappen van elkaar te scheiden. Als ';' ergens anders wordt gebruikt, wordt dit gezien als een scheiding tussen eigenschappen en zal de informatie niet goed gelezen worden.

Uitleg en gebruik Database Helper:
==================================
Met het bestand generate_database.py kun je kiezen welke database onderdelen worden gelezen of geschreven en voor welke talen je dit wilt doen. Dit doe je door een CommandHandler object aan te maken voor de gekozen taal, en dan commands te sturen met execute_commands. Deze commands moeten worden gescheiden met komma’s. De volledige lijst met commands is te vinden in het bestand generate_database.py.

Ook wordt er met een read bedoelt dat de tekstbestanden worden gelezen en naar de database worden geschreven. Met writes wordt er bedoelt dat de database wordt gelezen en er naar de tekstbestanden wordt geschreven.

Voorbeeld:
# Gekozen talen worden afgekort met 2 letters
CH = CommandHandler("EN")
CH.execute_commands([
    CH.read_peoples,
    CH.read_locations
])

# Er is ook een read_all en een write_all command
CH = CommandHandler("NL")
CH.execute_commands([
    CH.read_all
])

CH = CommandHandler("EN")
CH.execute_commands([
    CH.write_peoples,
    CH.write_locations

])

CH = CommandHandler("NL")
CH.execute_commands([
    CH.write_all
])

Daarna kan je generate_database.bat uitvoeren/dubbel klikken om de Python code te laten uitvoeren met de gekozen commands. 

Ik raad aan altijd eerst reads te doen in de vertalingen en daarna pas reads in de hoofdtaal (Nederlands). Hetzelfde voor writes, eerst de vertalingen en dan pas de hoofdtaal. 
Ook raad ik aan eerst reads te doen en daarna pas writes, dan kan je daarna met versie control software de wijzigingen zien en mogelijke fouten direct bekijken en oplossen. 

Overigens worden niet alle commands ondersteund bij vertalingen van de database. Voor niet ondersteunde functies bij vertalingen wordt een waarschuwing gegeven bij het uitvoeren van de Python code.

ID commands:
============
Mocht je echt zeker willen zijn dat alles goed gaat, dan raad ik aan eerst alle links (x_to_y) te laten lezen/schrijven voordat je dat items zelf doet. Dit komt omdat er bepaalde commands zijn die je in de tekstbestanden kan plaatsen bij de IDs. 

Het gaat hier om een command die je bij de ID plaats die tussen haken staat. Het maakt niet uit of je deze voor of achter de ID plaats, als deze maar tussen de haken bij de ID staat. De volgende commands zijn beschikbaar als ID commands: 
- '' en '-1', oftewel een leeg ID veld of een -1 tussen de haken.
	Dit command gebruik je als je een ID wilt laten genereren en er zeker van wilt zijn dat IDs niet dubbel voorkomen in het tekstbestand. Ook kan je een item toevoegen vanuit het template door alleen '()' neer te zetten op een lege regel. De code herkent dit en zal een lege item neerzetten die ingevuld is met het template.
- '-', oftewel een min tussen de haken.
	Gebruik dit command om een item te verwijderen. Houd er rekening mee dat niet alleen het item zelf verwijderd wordt, maar ook alles wat verwijst naar dat item. Dit zijn dus ook vertalingen en verwijzingen naar deze vertalingen.
- '*', oftewel een asteriks tussen de haken.
	Gebruik dit command om een item te kopieren. Er wordt een nieuw item aangemaakt met dezelfde eigenschappen als de item waar dit command bij staat, met een uniek gegenereert ID. Net als bij het verwijderen van een item, wordt niet alleen het item zelf gekopieerd maar ook alles wat verwijst naar het item. Dus ook vertalingen en verwijzingen naar deze vertalignen.
- '+', oftewel een plus tussen de haken. 
	Gebruik dit command om twee items met elkaar te mergen. In dit geval moet de plus achter het ID staan, en wordt er een tweede ID gegeven na de plus. De plus komt dus tussen twee IDs in te staan. De tweede ID geeft aan naar welk item het huidige item moet worden gemergd. Alle verwijzingen naar het eerste item worden aangepast en naar het tweede item verwezen. Dus ook vertalingen en verwijzingen naar deze vertalingen. Daarna wordt het eerste item verwijderd en blijft alleen het tweede item over van de twee.
- Normaal ID veld, dit houd in dat er alleen een getal staat tussen de haken en geen andere tekens.
	In dit geval heb je een regulier ID veld en worden de eigenschappen en titel opgeslagen bij dit ID. Als je zelf een ID intikt, mag deze niet overeenkomen met andere IDs en moet dus volledig uniek zijn. Wil je ervan verzekerd zijn dat je een uniek ID gebruikt, typ dat geen ID in of zet een -1 neer. Dan zal de code een ID voor je genereren die volledig uniek is en ongebruikt.

Dit type commands wordt niet ondersteund door vertalingen of verwijzingen, deze commands zijn alleen nodig voor de hoofdtaal.

Tips:
=====
Gebruik PyCharm om een goed overzicht te krijgen van het Python project als je hier wijzigingen in wilt aanbrengen. Hierin kan je ook gelijk de code uitvoeren, debuggen en laten controleren. Ook raad ik aan om Notepad++ te gebruiken voor de tekstbestanden. Hiermee kan je ook regex zoekfuncties uitvoeren! Installers voor beide programma's zijn te vinden in ProDeo Tools, alhoewel dit oudere installers zijn als deze niet bijgewerkt worden met de nieuwste versies.

Tenslotte is de website https://regex101.com/ een enorm handig middel om regex zoekfuncties te testen. Dit heeft mij veel geholpen met de templates per tekstfile om te zien wat er mis ging. 
