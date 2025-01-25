;*****************************************************************************
; "game : SHERLOCK!"
; "file : PLACES1.ZIL"
; "auth :   $Author:   RAB  $"
; "date :     $Date:   25 Oct 1987 19:04:04  $"
; "rev  : $Revision:   1.49  $"
; "vers : 1.00"
;*****************************************************************************

; "FORMERLY SHADOWED BY LG-BAKER-ST"

<OBJECT RM-221B-BAKER-ST
   (LOC ROOMS)
   (DESC "221-B Baker Street")
   (SYNONYM STREET ST)
   (ADJECTIVE 221-B 221B BAKER)
   (NORTH TO RM-YORK-PLACE)
   (SOUTH TO RM-ORCHARD-ST)
   (WEST  TO RM-ENTRY-HALL IF LG-BAKER-ST-DOOR IS OPEN)
   (IN    TO RM-ENTRY-HALL IF LG-BAKER-ST-DOOR IS OPEN)
   (FLAGS FL-LIGHTED FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL  LG-BAKER-ST-DOOR LG-WINDOW
	    RM-ENTRY-HALL LG-STREETLIGHT)
   (ACTION RT-AC-RM-221B-BAKER-ST)>

<OBJECT RM-ENTRY-HALL
   (LOC ROOMS)
   (DESC "entry hall")
   (NORTH PER RT-EX-PARLOUR-ENTRY)
   (EAST  TO RM-221B-BAKER-ST IF LG-BAKER-ST-DOOR IS OPEN)
   (UP    TO RM-VESTIBULE)
   (IN    PER RT-EX-PARLOUR-ENTRY)
   (OUT   TO RM-221B-BAKER-ST IF LG-BAKER-ST-DOOR IS OPEN)
   (FLAGS FL-INDOORS FL-LIGHTED FL-VOWEL FL-HAS-DESCFCN FL-NEEDS-IDENTITY)
   (GLOBAL  LG-BAKER-ST-DOOR LG-PARLOUR-DOOR LG-STAIRWAY RM-PARLOUR
	    RM-221B-BAKER-ST)
   (OBJ-ADJ 0)
   (OBJ-NOUN 0)
   (PSEUDOS GAS (LIGHT GASLIGHT) RT-AC-TH-GAS-LIGHT)
   (SYNONYM HALL HOUSE)
   (ADJECTIVE ENTRY HOLMES\' HOLMES\'S)
   (ACTION RT-AC-RM-ENTRY-HALL)>

<OBJECT RM-PARLOUR
   (LOC ROOMS)
   (DESC "parlour")
   (SOUTH TO RM-ENTRY-HALL IF LG-PARLOUR-DOOR IS OPEN)
   (OUT   TO RM-ENTRY-HALL IF LG-PARLOUR-DOOR IS OPEN)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN)
   (GLOBAL LG-PARLOUR-DOOR RM-ENTRY-HALL)
   (SYNONYM PARLOUR PARLOR)
   (ACTION RT-AC-RM-PARLOUR)>

<OBJECT RM-VESTIBULE
   (LOC ROOMS)
   (DESC "vestibule")
   (NORTH TO RM-HOLMES-STUDY IF LG-HOLMES-STUDY-DOOR IS OPEN)
   (IN	 TO RM-HOLMES-STUDY IF LG-HOLMES-STUDY-DOOR IS OPEN)
   (DOWN  TO RM-ENTRY-HALL)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN)
   (GLOBAL LG-HOLMES-STUDY-DOOR LG-STAIRWAY RM-HOLMES-STUDY
    	   RM-ENTRY-HALL)
   (SYNONYM VESTIBULE)
   (ACTION RT-AC-RM-VESTIBULE)>

<OBJECT RM-HOLMES-STUDY
   (LOC ROOMS)
   (DESC "Holmes's study")
   (NORTH SORRY "The fireplace is in the way.")
   (EAST SORRY "You would fly out the bow window.")
   (SOUTH TO RM-VESTIBULE IF LG-HOLMES-STUDY-DOOR IS OPEN)
   (IN	 TO RM-HOLMES-BEDROOM IF LG-HOLMES-BEDROOM-DOOR IS OPEN)
   (OUT	 TO RM-VESTIBULE IF LG-HOLMES-STUDY-DOOR IS OPEN)
   (WEST TO RM-HOLMES-BEDROOM IF LG-HOLMES-BEDROOM-DOOR IS OPEN)
   (FLAGS FL-INDOORS FL-LIGHTED FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL  LG-HOLMES-STUDY-DOOR LG-HOLMES-BEDROOM-DOOR
	    LG-WINDOW RM-HOLMES-BEDROOM RM-VESTIBULE RM-ENTRY-HALL)
   (SYNONYM STUDY)
   (PSEUDOS <> (FIREPLACE FIRE FLAME) RT-AC-TH-FIREPLACE)
   (ACTION RT-AC-RM-HOLMES-STUDY)>

<OBJECT RM-HOLMES-BEDROOM
   (LOC ROOMS)
   (DESC "Holmes's bedroom")
   (EAST TO RM-HOLMES-STUDY IF LG-HOLMES-BEDROOM-DOOR IS OPEN)
   (OUT	 TO RM-HOLMES-STUDY IF LG-HOLMES-BEDROOM-DOOR IS OPEN)
   (FLAGS FL-INDOORS FL-LIGHTED FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL LG-HOLMES-BEDROOM-DOOR RM-HOLMES-STUDY RM-ENTRY-HALL)
   (PSEUDOS <> (PICTURES CRIMINAL PICTURE CRIMINALS) RT-AC-TH-PICTURES)
   (SYNONYM BEDROOM)
   (ACTION RT-AC-RM-HOLMES-BEDROOM)>

<OBJECT RM-YORK-PLACE
   (LOC ROOMS)
   (DESC "York Place")
   (NORTH PER RT-SURGE)
   (EAST TO RM-MARYLEBONE-RD)
   (SOUTH TO RM-221B-BAKER-ST)
   (WEST PER RT-SURGE)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (SYNONYM PLACE)
   (ADJECTIVE YORK)
   (ACTION RT-AC-RM-YORK-PLACE)>

<OBJECT RM-MARYLEBONE-RD
   (LOC ROOMS)
   (DESC "Marylebone Road")
   (NORTH PER RT-EX-RM-MATCH-SNIFFING-DOG)
   (EAST  TO RM-TOTTENHAM-COURT-RD)
   (WEST  TO RM-YORK-PLACE)
   (IN    PER RT-EX-RM-MATCH-SNIFFING-DOG)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL RM-MARYLEBONE-RD RM-MADAME-TUSSAUDS)
   (SYNONYM ROAD)
   (ADJECTIVE MARYLEBONE)
   (ACTION RT-AC-RM-MARYLEBONE-RD)>

<OBJECT RM-MADAME-TUSSAUDS
   (LOC ROOMS)
   (DESC "Madame Tussaud's")
   (SOUTH PER RT-EX-RM-EXIT-TUSSAUDS)
   (WEST  TO RM-CHAMBER-OF-HORRORS)
   (IN    TO RM-CHAMBER-OF-HORRORS)
   (OUT   PER RT-EX-RM-EXIT-TUSSAUDS)
   (FLAGS FL-INDOORS FL-LIGHTED FL-NOARTC FL-HAS-DESCFCN
	  FL-NO-ETHERIUM)
   (GLOBAL LG-PLAQUES)
   (PSEUDOS WAX (SAND BOWLS CLOAK MUD MEADOW WAX) RT-AC-TH-WAX-OBJECT-1
	    WAX (GROUPINGS STATUES FIGURES SCULPTURES STATUE SCENES WAX)
	    RT-DF-LG-WAX-STATUES)
   (SYNONYM TUSSAUDS TUSSAUD\'S MUSEUM)
   (ADJECTIVE MADAME WAX)
   (ACTION RT-AC-RM-MADAME-TUSSAUDS)>

<OBJECT RM-CHAMBER-OF-HORRORS
   (LOC ROOMS)
   (DESC "Chamber of Horrors")
   (EAST  TO RM-MADAME-TUSSAUDS)
   (OUT   TO RM-MADAME-TUSSAUDS)
   (FLAGS FL-INDOORS FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (SYNONYM CHAMBER HORRORS)
   (ADJECTIVE CHAMBER HORRORS)
   (PSEUDOS WAX (BARREL BARRELS BLOCK EXECUTIONER MUD KNIGHTS
		 KNIGHT SWORD SWORDS ALTAR GUNPOWDER WAX)
	    RT-AC-TH-WAX-OBJECT-1
	    WAX (GROUPINGS STATUES FIGURES SCULPTURES STATUE SCENES WAX)
	    RT-DF-LG-WAX-STATUES)
   (ACTION RT-AC-RM-CHAMBER-OF-HORRORS)>

<OBJECT RM-TOTTENHAM-COURT-RD
   (LOC ROOMS)
   (DESC "Tottenham Court Road")
   (NORTH PER RT-SURGE)
   (EAST  PER RT-SURGE)
   (SOUTH TO RM-ST-GILES-CIRCUS)
   (WEST  TO RM-MARYLEBONE-RD)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL LG-SHOPS)
   (SYNONYM ROAD)
   (ADJECTIVE TOTTENHAM COURT)
   (ACTION RT-AC-RM-TOTTENHAM-COURT-RD)>

<OBJECT RM-ST-GILES-CIRCUS
   (LOC ROOMS)
   (DESC "St Giles Circus")
   (NORTH TO RM-TOTTENHAM-COURT-RD)
   (EAST  TO RM-NEW-OXFORD-ST)
   (SOUTH TO RM-TRAFALGAR-SQUARE)
   (WEST  TO RM-OXFORD-ST)
   (NE    TO RM-GREAT-RUSSELL-ST)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (SYNONYM GILES CIRCUS)
   (ADJECTIVE ST SAINT GILES)
   (ACTION RT-AC-RM-ST-GILES-CIRCUS)>

<OBJECT RM-OXFORD-ST
   (LOC ROOMS)
   (DESC "Oxford Street")
   (EAST  TO RM-ST-GILES-CIRCUS)
   (WEST  TO RM-ORCHARD-ST)
   (FLAGS FL-NOARTC FL-VOWEL FL-HAS-DESCFCN)
   (GLOBAL LG-SHOPS)
   (ADJECTIVE OXFORD)
   (SYNONYM STREET ST)
   (ACTION RT-AC-RM-OXFORD-ST)>

<OBJECT RM-ORCHARD-ST
   (LOC ROOMS)
   (DESC "Orchard Street")
   (NORTH TO RM-221B-BAKER-ST)
   (EAST  TO RM-OXFORD-ST)
   (SOUTH TO RM-AUDLEY-ST)
   (WEST  PER RT-SURGE)
   (FLAGS FL-NOARTC FL-VOWEL FL-HAS-DESCFCN)
   (ADJECTIVE ORCHARD)
   (SYNONYM STREET ST)
   (ACTION RT-AC-RM-ORCHARD-ST)>

<OBJECT RM-AUDLEY-ST
   (LOC ROOMS)
   (DESC "Audley Street")
   (NORTH TO RM-ORCHARD-ST)
   (SOUTH TO RM-HYDE-PARK-CORNER)
   (FLAGS FL-NOARTC FL-VOWEL FL-HAS-DESCFCN)
   (ADJECTIVE AUDLEY)
   (SYNONYM STREET ST)
   (ACTION RT-AC-RM-AUDLEY-ST)>

<OBJECT RM-HYDE-PARK-CORNER
   (LOC ROOMS)
   (DESC "Hyde Park Corner")
   (NORTH TO RM-AUDLEY-ST)
   (EAST  PER RT-SURGE)
   (SOUTH PER RT-SURGE)
   (WEST  PER RT-SURGE)
   (NE    PER RT-SURGE)
   (NW    TO RM-KENSINGTON-GARDENS)
   (SE    TO RM-GROSVENOR-PLACE)
   (SW    PER RT-SURGE)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (SYNONYM CORNER)
   (ADJECTIVE HYDE PARK)
   (PSEUDOS TRIUMPHAL ARCH RT-AC-TH-ARCH
	    <> CHARIOT RT-AC-TH-CHARIOT)
   (ACTION RT-AC-RM-HYDE-PARK-CORNER)>

<OBJECT RM-KENSINGTON-GARDENS
   (LOC ROOMS)
   (DESC "Kensington Gardens")
   (NORTH PER RT-SURGE)
   (EAST  PER RT-SURGE)
   (SOUTH PER RT-SURGE)
   (WEST  PER RT-SURGE)
   (NE    PER RT-SURGE)
   (NW    PER RT-SURGE)
   (SE    TO RM-HYDE-PARK-CORNER)
   (SW    PER RT-SURGE)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL RM-HYDE-PARK-CORNER)
   (SYNONYM GARDENS)
   (ADJECTIVE KENSINGTON)
   (ACTION RT-AC-RM-KENSINGTON-GARDENS)>

<OBJECT RM-TRAFALGAR-SQUARE
   (LOC ROOMS)
   (DESC "Trafalgar Square")
   (NORTH TO RM-ST-GILES-CIRCUS)
   (EAST  PER RT-SURGE)
   (SOUTH TO RM-WHITEHALL)
   (WEST  TO RM-DIOGENES-CLUB)
   (IN    TO RM-DIOGENES-CLUB)
   (NE    TO RM-THE-STRAND)
   (SW    TO RM-THE-MALL)
   (UP    SORRY "You were thinking maybe you had wings?")
   (FLAGS FL-LIGHTED FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL LG-PLAQUES RM-DIOGENES-CLUB)
   (SYNONYM SQUARE)
   (ADJECTIVE TRAFALGAR)
   (PSEUDOS <> PEDESTAL RT-AC-LG-PEDESTAL)
   (ACTION RT-AC-RM-TRAFALGAR-SQUARE)>

<OBJECT RM-DIOGENES-CLUB
   (LOC ROOMS)
   (DESC "Diogenes Club")
   (EAST  TO RM-TRAFALGAR-SQUARE)
   (OUT	 TO RM-TRAFALGAR-SQUARE)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL RM-TRAFALGAR-SQUARE)
   (SYNONYM CLUB)
   (ADJECTIVE DIOGENES)
   (ACTION RT-AC-RM-DIOGENES-CLUB)>

<OBJECT RM-GREAT-RUSSELL-ST
   (LOC ROOMS)
   (DESC "Great Russell Street")
   (NORTH TO RM-BRITISH-MUSEUM IF LG-BRITISH-MUSEUM-DOOR IS OPEN)
   (EAST  PER RT-SURGE)
   (WEST  PER RT-SURGE)
   (SW    TO RM-ST-GILES-CIRCUS)
   (IN    TO RM-BRITISH-MUSEUM IF LG-BRITISH-MUSEUM-DOOR IS OPEN)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL  LG-BRITISH-MUSEUM-DOOR LG-PLAQUES LG-STAIRWAY
	    RM-BRITISH-MUSEUM)
   (SYNONYM STREET ST)
   (ADJECTIVE GREAT RUSSELL)
   (ACTION RT-AC-RM-GREAT-RUSSELL-ST)>

<OBJECT RM-BRITISH-MUSEUM
   (LOC ROOMS)
   (DESC "British Museum")
   (EAST  TO RM-MANUSCRIPT-ROOM)
   (SOUTH TO RM-GREAT-RUSSELL-ST IF LG-BRITISH-MUSEUM-DOOR IS OPEN)
   (IN    TO RM-MANUSCRIPT-ROOM)
   (OUT   TO RM-GREAT-RUSSELL-ST IF LG-BRITISH-MUSEUM-DOOR IS OPEN)
   (NORTH  PER RT-SURGE)
   (WEST   PER RT-SURGE)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-BRITISH-MUSEUM-DOOR LG-STAIRWAY RM-GREAT-RUSSELL-ST)
   (SYNONYM MUSEUM)
   (ADJECTIVE BRITISH)
   (ACTION RT-AC-RM-BRITISH-MUSEUM)>

<OBJECT RM-MANUSCRIPT-ROOM
   (LOC ROOMS)
   (DESC "Manuscript Room")
   (WEST  TO RM-BRITISH-MUSEUM)
   (OUT  TO RM-BRITISH-MUSEUM)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-PLAQUES)
   (SYNONYM ROOM)
   (ADJECTIVE MANUSCRIPT)
   (PSEUDOS DUSTY (DESK BOOKS CASES CASE BOOKSHELVES BOOKCASE)
	    RT-AC-TH-LIBRARY-OBJ)
   (ACTION RT-AC-RM-MANUSCRIPT-ROOM)>

<OBJECT RM-GROSVENOR-PLACE
   (LOC ROOMS)
   (DESC "Grosvenor Place")
   (NW    TO RM-HYDE-PARK-CORNER)
   (SE    TO RM-VICTORIA-SQUARE)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (SYNONYM PLACE)
   (ADJECTIVE GROSVENOR)
   (ACTION RT-AC-RM-GROSVENOR-PLACE)>

<OBJECT RM-VICTORIA-SQUARE
   (LOC ROOMS)
   (DESC "Victoria Square")
   (EAST  TO RM-VICTORIA-STREET)
   (NE    TO RM-BUCKINGHAM-PALACE-RD)
   (NW    TO RM-GROSVENOR-PLACE)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL LG-SHOPS)
   (SYNONYM SQUARE)
   (ADJECTIVE VICTORIA)
   (ACTION RT-AC-RM-VICTORIA-SQUARE)>

<OBJECT RM-VICTORIA-STREET
   (LOC ROOMS)
   (DESC "Victoria Street")
   (EAST  TO RM-BROAD-SANCTUARY)
   (WEST  TO RM-VICTORIA-SQUARE)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL LG-SHOPS LG-PLAQUES)
   (SYNONYM STREET ST)
   (ADJECTIVE VICTORIA)
   (ACTION RT-AC-RM-VICTORIA-STREET)>

<OBJECT RM-BROAD-SANCTUARY
   (LOC ROOMS)
   (DESC "Broad Sanctuary")
   (EAST  TO RM-NAVE IF LG-WESTMINSTER-DOOR IS OPEN)
   (WEST  TO RM-VICTORIA-STREET)
   (NE    TO RM-PARLIAMENT-SQUARE)
   (IN    TO RM-NAVE IF LG-WESTMINSTER-DOOR IS OPEN)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL LG-WESTMINSTER-DOOR LG-PLAQUES LG-TOMBS-ABBEY)
   (SYNONYM SANCTUARY)
   (ADJECTIVE BROAD)
   (ACTION RT-AC-RM-BROAD-SANCTUARY)>

<OBJECT RM-PARLIAMENT-SQUARE
   (LOC ROOMS)
   (DESC "Parliament Square")
   (NORTH TO RM-WHITEHALL)
   (EAST  PER RT-SURGE)
   (WEST  TO RM-BIRDCAGE-WALK)
   (SE    TO RM-PARLIAMENT)
   (SW    TO RM-BROAD-SANCTUARY)
   (IN    TO RM-PARLIAMENT)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL RM-PARLIAMENT)
   (SYNONYM SQUARE)
   (ADJECTIVE PARLIAMENT)
   (ACTION RT-AC-RM-PARLIAMENT-SQUARE)>

<OBJECT RM-PARLIAMENT
   (LOC ROOMS)
   (DESC "Houses of Parliament")
   (IN    PER RT-SURGE)
   (NW    TO RM-PARLIAMENT-SQUARE)
   (UP    TO RM-CLOCK-TOWER)
   (OUT   TO RM-PARLIAMENT-SQUARE)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-STAIRWAY RM-PARLIAMENT-SQUARE)
   (SYNONYM HOUSE HOUSES PARLIAMENT COMMONS)
   (ADJECTIVE HOUSES HOUSE PARLIAMENT)
   (ACTION RT-AC-RM-PARLIAMENT)>

<OBJECT RM-CLOCK-TOWER
   (LOC ROOMS)
   (DESC "Clock Tower")
   (DOWN  TO RM-PARLIAMENT)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN)
   (GLOBAL LG-STAIRWAY)
   ;(LOOKDN TH-SHAFT)
   (ACTION RT-AC-RM-CLOCK-TOWER)>

<OBJECT RM-BUCKINGHAM-PALACE-RD
   (LOC ROOMS)
   (DESC "Buckingham Palace Road")
   (NE    TO RM-QUEENS-GARDENS)
   (SW    TO RM-VICTORIA-SQUARE)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (SYNONYM ROAD)
   (ADJECTIVE BUCKINGHAM PALACE)
   (ACTION RT-AC-RM-BUCKINGHAM-PALACE-RD)>

<OBJECT RM-QUEENS-GARDENS
   (LOC ROOMS)
   (DESC "Queens Gardens")
   (WEST  PER RT-EX-RM-ENTER-BUCKINGHAM-PALACE)
   (NE    TO RM-THE-MALL)
   (SE    TO RM-BIRDCAGE-WALK)
   (SW    TO RM-BUCKINGHAM-PALACE-RD)
   (IN    PER RT-EX-RM-ENTER-BUCKINGHAM-PALACE)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL RM-BUCKINGHAM-PALACE)
   (SYNONYM GARDENS)
   (ADJECTIVE QUEENS QUEEN\'S)
   (ACTION RT-AC-RM-QUEENS-GARDENS)>

<OBJECT RM-BUCKINGHAM-PALACE
   (LOC ROOMS)
   (DESC "Buckingham Palace")
   (EAST  TO RM-QUEENS-GARDENS)
   (FLAGS FL-INDOORS FL-LIGHTED FL-NOARTC FL-NO-ETHERIUM)
   (SYNONYM PALACE)
   (ADJECTIVE BUCKINGHAM)
   (GLOBAL RM-QUEENS-GARDENS)
   (ACTION RT-AC-RM-BUCKINGHAM-PALACE)>

<OBJECT RM-BIRDCAGE-WALK
   (LOC ROOMS)
   (DESC "Birdcage Walk")
   (EAST  TO RM-PARLIAMENT-SQUARE)
   (NW    TO RM-QUEENS-GARDENS)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (SYNONYM WALK)
   (ADJECTIVE BIRDCAGE)
   (ACTION RT-AC-RM-BIRDCAGE-WALK)>

<OBJECT RM-THE-MALL
   (LOC ROOMS)
   (DESC "The Mall")
   (NE    TO RM-TRAFALGAR-SQUARE)
   (SW    TO RM-QUEENS-GARDENS)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (SYNONYM MALL)
   (ACTION RT-AC-RM-THE-MALL)>

<OBJECT RM-WHITEHALL
   (LOC ROOMS)
   (DESC "Whitehall")
   (EAST  TO RM-SCOTLAND-YARD)
   (IN    TO RM-SCOTLAND-YARD)
   (NORTH TO RM-TRAFALGAR-SQUARE)
   (SOUTH TO RM-PARLIAMENT-SQUARE)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL RM-SCOTLAND-YARD)
   (SYNONYM WHITEHALL)
   (ACTION RT-AC-RM-WHITEHALL)>

<OBJECT RM-SCOTLAND-YARD
   (LOC ROOMS)
   (DESC "Scotland Yard")
   (WEST  TO RM-WHITEHALL)
   (DOWN  TO RM-THE-BLACK-MUSEUM)
   (OUT   TO RM-WHITEHALL)
   (FLAGS FL-INDOORS FL-LIGHTED FL-NOARTC FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-STAIRWAY RM-WHITEHALL)
   (SYNONYM YARD)
   (ADJECTIVE SCOTLAND)
   (ACTION RT-AC-RM-SCOTLAND-YARD)>

<OBJECT RM-THE-BLACK-MUSEUM
   (LOC ROOMS)
   (DESC "The Black Museum")
   (UP    TO RM-SCOTLAND-YARD)
   (FLAGS FL-INDOORS FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL LG-PLAQUES LG-STAIRWAY RM-SCOTLAND-YARD)
   (SYNONYM MUSEUM)
   (ADJECTIVE BLACK)
   (ACTION RT-AC-RM-THE-BLACK-MUSEUM)>

<OBJECT RM-NEW-OXFORD-ST
   (LOC ROOMS)
   (DESC "New Oxford Street")
   (EAST  TO RM-CHEAPSIDE)
   (SOUTH TO RM-COVENT-GARDEN)
   (WEST  TO RM-ST-GILES-CIRCUS)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (SYNONYM STREET ST)
   (ADJECTIVE NEW OXFORD)
   (ACTION RT-AC-RM-NEW-OXFORD-ST)>

<OBJECT RM-COVENT-GARDEN
   (LOC ROOMS)
   (DESC "Covent Garden")
   (NORTH TO RM-NEW-OXFORD-ST)
   (SOUTH TO RM-THE-STRAND)
   (EAST PER RT-SURGE)
   (WEST PER RT-SURGE)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN FL-NO-CROWDS)
   (SYNONYM GARDEN)
   (ADJECTIVE COVENT)
   (PSEUDOS GIANT (PRODUCE APPLES ORANGES FRUIT FRUITS VEGETABLES PEAS)
	    RT-AC-TH-PRODUCE)
   (ACTION RT-AC-RM-COVENT-GARDEN)>

<OBJECT RM-THE-STRAND
   (LOC ROOMS)
   (DESC "The Strand")
   (NORTH TO RM-COVENT-GARDEN)
   (EAST  TO RM-FLEET-STREET)
   (WEST  PER RT-SURGE)
   (SW    TO RM-TRAFALGAR-SQUARE)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (PSEUDOS <> (MARQUEES THEATRES THEATRE MARQUEE THEATER THEATERS)
	    RT-AC-TH-MARQUEES)
   (SYNONYM STRAND)
   (ACTION RT-AC-RM-THE-STRAND)>

<OBJECT RM-FLEET-STREET
   (LOC ROOMS)
   (DESC "Fleet Street")
   (EAST PER RT-SURGE)
   ;(EAST  TO RM-BLIND-ALLEY)
   (SOUTH TO RM-THE-EMBANKMENT)
   (WEST  TO RM-THE-STRAND)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (SYNONYM STREET ST)
   (ADJECTIVE FLEET)
   (ACTION RT-AC-RM-FLEET-STREET)>

<OBJECT RM-THE-EMBANKMENT
   (LOC ROOMS)
   (DESC "the Embankment")
   (NORTH PER RT-EX-LEAVE-EMBANKMENT)
   (EAST  PER RT-EX-LEAVE-EMBANKMENT)
   (SOUTH PER RT-EX-RM-LAUNCH-BOAT)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL LG-WATER LG-UP-DOWN-STREAM LG-BOATS)
   (SYNONYM EMBANKMENT)
   (ACTION RT-AC-RM-THE-EMBANKMENT)>

<OBJECT RM-THAMES-ONE
   (LOC ROOMS)
   (DESC "On the Thames")
   (NORTH PER RT-EX-RM-LAND-BOAT)
   (EAST  PER RT-EX-RM-STEER-BOAT)
   (SOUTH PER RT-EX-RM-STEER-BOAT)
   (WEST  PER RT-EX-RM-STEER-BOAT)
   (FLAGS FL-NOARTC FL-VOWEL FL-HAS-DESCFCN FL-NO-CROWDS)
   (GLOBAL LG-WATER LG-UP-DOWN-STREAM RM-THE-EMBANKMENT LG-BOATS)
   (ACTION RT-AC-RM-THAMES-ONE)>

<OBJECT RM-THAMES-TWO
   (LOC ROOMS)
   (DESC "On the Thames")
   (NORTH PER RT-EX-RM-LAND-BOAT)
   (EAST  PER RT-EX-RM-STEER-BOAT)
   (SOUTH PER RT-EX-RM-STEER-BOAT)
   (WEST  PER RT-EX-RM-STEER-BOAT)
   (FLAGS FL-NOARTC FL-VOWEL FL-HAS-DESCFCN FL-NO-CROWDS)
   (GLOBAL LG-WATER RM-LONDON-BRIDGE LG-UP-DOWN-STREAM LG-BOATS)
   (ACTION RT-AC-RM-THAMES-TWO)>

<OBJECT RM-THAMES-THREE
   (LOC ROOMS)
   (DESC "On the Thames")
   (NORTH PER RT-EX-RM-LAND-BOAT)
   (EAST  PER RT-EX-RM-STEER-BOAT)
   (SOUTH PER RT-EX-RM-STEER-BOAT)
   (WEST  PER RT-EX-RM-STEER-BOAT)
   (FLAGS FL-NOARTC FL-VOWEL FL-HAS-DESCFCN FL-NO-CROWDS)
   (GLOBAL LG-WATER RM-LONDON-BRIDGE LG-UP-DOWN-STREAM LG-BOATS)
   (PSEUDOS <> (SUPPORTS CROSSBARS STRUTS) RT-AC-TH-SUPPORTS)
   (ACTION RT-AC-RM-THAMES-THREE)>

<OBJECT RM-THAMES-FOUR
   (LOC ROOMS)
   (DESC "On the Thames")
   (NORTH PER RT-EX-RM-LAND-BOAT)
   (EAST  PER RT-EX-RM-STEER-BOAT)
   (SOUTH PER RT-EX-RM-STEER-BOAT)
   (WEST  PER RT-EX-RM-STEER-BOAT)
   (FLAGS FL-NOARTC FL-VOWEL FL-HAS-DESCFCN FL-NO-CROWDS)
   (GLOBAL LG-WATER RM-LONDON-BRIDGE LG-UP-DOWN-STREAM LG-BOATS)
   (ACTION RT-AC-RM-THAMES-FOUR)>

<OBJECT RM-THAMES-FIVE
   (LOC ROOMS)
   (DESC "On the Thames")
   (NORTH PER RT-EX-RM-LAND-BOAT)
   (EAST  PER RT-EX-RM-STEER-BOAT)
   (SOUTH PER RT-EX-RM-STEER-BOAT)
   (WEST  PER RT-EX-RM-STEER-BOAT)
   (FLAGS FL-NOARTC FL-VOWEL FL-HAS-DESCFCN FL-NO-CROWDS)
   (GLOBAL LG-WATER LG-UP-DOWN-STREAM LG-BOATS)
   (ACTION RT-AC-RM-THAMES-FIVE)>

<OBJECT RM-UPPER-THAMES-ST
   (LOC ROOMS)
   (DESC "Upper Thames Street")
   (EAST  TO RM-LOWER-THAMES-ST)
   (WEST  TO RM-THE-EMBANKMENT)
   (FLAGS FL-NOARTC FL-VOWEL FL-HAS-DESCFCN)
   (SYNONYM STREET ST)
   (ADJECTIVE UPPER THAMES)
   (ACTION RT-AC-RM-UPPER-THAMES-ST)>

;<OBJECT RM-BLIND-ALLEY
   (LOC ROOMS)
   (DESC "Blind Alley")
   (EAST  TO RM-SIGN-OF-RED-HERRING)
   (WEST  TO RM-FLEET-STREET)
   (IN    TO RM-SIGN-OF-RED-HERRING)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL  RM-SIGN-OF-RED-HERRING LG-PLAQUES)
   (SYNONYM ALLEY)
   (ADJECTIVE BLIND)
   (ACTION RT-AC-RM-BLIND-ALLEY)>

;<OBJECT RM-SIGN-OF-RED-HERRING
   (LOC ROOMS)
   (DESC "The Sign of the Red Herring")
   (WEST  TO RM-BLIND-ALLEY)
   (OUT   TO RM-BLIND-ALLEY)
   (FLAGS FL-INDOORS FL-LIGHTED FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL RM-BLIND-ALLEY)
   (SYNONYM HERRING)
   (ADJECTIVE OLD PUB RED)
   (ACTION RT-AC-RM-SIGN-OF-RED-HERRING)>

<OBJECT RM-PINCHIN-LANE
   (LOC ROOMS)
   (DESC "Pinchin Lane")
   (NORTH TO RM-CHEAPSIDE)
   (WEST  TO RM-SHERMANS-HOUSE)
   (IN    TO RM-SHERMANS-HOUSE)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL RM-SHERMANS-HOUSE)
   (SYNONYM LANE ALLEY)
   (ADJECTIVE PINCHIN)
   (ACTION RT-AC-RM-PINCHIN-LANE)>

<OBJECT RM-SHERMANS-HOUSE
   (LOC ROOMS)
   (DESC "Sherman's Shop")
   (EAST  TO RM-PINCHIN-LANE)
   (OUT   TO RM-PINCHIN-LANE)
   (FLAGS FL-INDOORS FL-LIGHTED FL-ASLEEP FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL RM-PINCHIN-LANE)
   (SYNONYM HOUSE SHOP)
   (ADJECTIVE SHERMAN\' PET)
   (ACTION RT-AC-RM-SHERMANS-HOUSE)>

<OBJECT RM-CHEAPSIDE
   (LOC ROOMS)
   (DESC "Cheapside")
   (EAST  TO RM-THREADNEEDLE-ST)
   (SOUTH TO RM-PINCHIN-LANE)
   (WEST  TO RM-NEW-OXFORD-ST)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (SYNONYM CHEAPSIDE)
   (ACTION RT-AC-RM-CHEAPSIDE)>

<OBJECT RM-THREADNEEDLE-ST
   (LOC ROOMS)
   (DESC "Threadneedle Street")
   (NORTH PER RT-EX-ENTER-BANK-OF-ENGLAND)
   (IN    PER RT-EX-ENTER-BANK-OF-ENGLAND)
   (WEST  TO RM-CHEAPSIDE)
   (SE    TO RM-KING-WILLIAM-ST)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL LG-PLAQUES RM-BANK-OF-ENGLAND)
   (SYNONYM STREET ST)
   (ADJECTIVE THREADNEEDLE)
   (ACTION RT-AC-RM-THREADNEEDLE-ST)>

<OBJECT RM-BANK-OF-ENGLAND
   (LOC ROOMS)
   (DESC "Bank of England")
   (SOUTH TO RM-THREADNEEDLE-ST)
   (OUT   TO RM-THREADNEEDLE-ST)
   (WEST  TO RM-BANK-VAULT IF LG-BANK-VAULT-DOOR IS OPEN)
   (IN    TO RM-BANK-VAULT IF LG-BANK-VAULT-DOOR IS OPEN)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN ;FL-NO-ETHERIUM)
   (GLOBAL LG-BANK-VAULT-DOOR RM-THREADNEEDLE-ST RM-BANK-VAULT)
   (ADJECTIVE ENGLAND)
   (SYNONYM BANK ENGLAND)
   (ACTION RT-AC-RM-BANK-OF-ENGLAND)>

<OBJECT RM-BANK-VAULT
   (LOC ROOMS)
   (DESC "bank vault")
   (EAST  TO RM-BANK-OF-ENGLAND IF LG-BANK-VAULT-DOOR IS OPEN)
   (OUT   TO RM-BANK-OF-ENGLAND IF LG-BANK-VAULT-DOOR IS OPEN)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN)
   (GLOBAL LG-BANK-VAULT-DOOR RM-BANK-OF-ENGLAND)
   (SYNONYM VAULT)
   (ACTION RT-AC-RM-BANK-VAULT)>

<OBJECT RM-KING-WILLIAM-ST
   (LOC ROOMS)
   (DESC "King William Street")
   (NW    TO RM-THREADNEEDLE-ST)
   (SE    TO RM-MONUMENT)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (SYNONYM STREET ST)
   (ADJECTIVE KING WILLIAM)
   (ACTION RT-AC-RM-KING-WILLIAM-ST)>

<OBJECT RM-MONUMENT
   (LOC ROOMS)
   (DESC "the Monument")
;  (EAST  TO RM-TOWER-STREET)
   (SOUTH TO RM-LOWER-THAMES-ST)
   (NW    TO RM-KING-WILLIAM-ST)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL LG-PLAQUES)
   (SYNONYM MONUMENT OBELISK) 
   (ACTION RT-AC-RM-MONUMENT)>

<OBJECT RM-LOWER-THAMES-ST
   (LOC ROOMS)
   (DESC "Lower Thames Street")
   (NORTH TO RM-MONUMENT)
   (EAST  TO RM-TOWER-ENTRANCE)
   (SOUTH TO RM-LONDON-BRIDGE)
   (WEST  TO RM-UPPER-THAMES-ST)
   (DOWN  TO RM-SWAN-LANE)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN)
   (GLOBAL LG-STAIRWAY)
   (SYNONYM STREET ST)
   (ADJECTIVE LOWER THAMES)
   (ACTION RT-AC-RM-LOWER-THAMES-ST)>

<OBJECT RM-LONDON-BRIDGE
   (LOC ROOMS)
   (DESC "London Bridge")
   (NORTH TO RM-LOWER-THAMES-ST)
   (SOUTH PER RT-SURGE)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN FL-NODESC FL-SURFACE)
   (GLOBAL LG-WATER LG-BOATS)
   (SIZE 0 CAPACITY 100)
   (SYNONYM BRIDGE)
   (ADJECTIVE LONDON)
   (ACTION RT-AC-RM-LONDON-BRIDGE)>

<OBJECT RM-TOWER-ENTRANCE
   (LOC ROOMS)
   (DESC "Tower of London entrance")
   (EAST  TO RM-DRAWBRIDGE)
   (WEST  TO RM-LOWER-THAMES-ST)
   (FLAGS FL-HAS-DESCFCN FL-NO-CROWDS)
;  (NW    TO RM-TOWER-STREET)
   (GLOBAL LG-PLAQUES LG-TOWER)
   (SYNONYM ENTRANCE)
   (ACTION RT-AC-RM-TOWER-ENTRANCE)>

<OBJECT RM-SWAN-LANE
   (LOC ROOMS)
   (DESC "Swan Lane")
   (WEST  TO RM-BAR-OF-GOLD IF LG-BAR-OF-GOLD-DOOR IS OPEN)
   (UP    TO RM-LOWER-THAMES-ST)
   (IN    TO RM-BAR-OF-GOLD IF LG-BAR-OF-GOLD-DOOR IS OPEN)
   (FLAGS FL-NOARTC FL-HAS-DESCFCN FL-NO-CROWDS)
   (GLOBAL  LG-BAR-OF-GOLD-DOOR LG-PLAQUES LG-STAIRWAY
            LG-WATER LG-UP-DOWN-STREAM RM-BAR-OF-GOLD LG-BOATS)
   (SYNONYM LANE ALLEY)
   (ADJECTIVE SWAN)
   (ACTION RT-AC-RM-SWAN-LANE)>

<OBJECT RM-BAR-OF-GOLD
   (LOC ROOMS)
   (DESC "Bar of Gold")
   (EAST  TO RM-SWAN-LANE IF LG-BAR-OF-GOLD-DOOR IS OPEN)
   (OUT   TO RM-SWAN-LANE IF LG-BAR-OF-GOLD-DOOR IS OPEN)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN)
   (GLOBAL LG-BAR-OF-GOLD-DOOR RM-SWAN-LANE)
   (SYNONYM BAR GOLD)
   (ADJECTIVE BAR GOLD)
   (ACTION RT-AC-RM-BAR-OF-GOLD)>

<OBJECT RM-LAIR
   (LOC ROOMS)
   (DESC "lair")
   (NORTH TO RM-LONDON-BRIDGE IF LG-LAIR-DOOR IS OPEN)
   (OUT   TO RM-LONDON-BRIDGE IF LG-LAIR-DOOR IS OPEN)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN)
   (GLOBAL LG-LAIR-DOOR)
   (SYNONYM LAIR)
   (ACTION RT-AC-RM-LAIR)>

<OBJECT RM-NAVE
   (LOC ROOMS)
   (DESC "Nave")
   (EAST  TO RM-SANCTUARY)
   (SOUTH TO RM-SOUTH-AISLE)
   (WEST  TO RM-BROAD-SANCTUARY IF LG-WESTMINSTER-DOOR IS OPEN)
   (NE    TO RM-NORTH-TRANSEPT)
   (SE    TO RM-SOUTH-TRANSEPT)
   (OUT   TO RM-BROAD-SANCTUARY IF LG-WESTMINSTER-DOOR IS OPEN)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-WESTMINSTER-DOOR LG-TOMBS-ABBEY LG-MARBLE LG-COLUMNS)
   (ACTION RT-AC-RM-NAVE)>

<OBJECT RM-SOUTH-AISLE
   (LOC ROOMS)
   (DESC "South Aisle")
   (EAST  TO RM-SOUTH-TRANSEPT)
   (NORTH TO RM-NAVE)
   (SOUTH TO RM-JERICHO-PARLOUR IF LG-JERICHO-PARLOUR-DOOR IS OPEN)
   (IN    TO RM-JERICHO-PARLOUR IF LG-JERICHO-PARLOUR-DOOR IS OPEN)
   (SE    TO RM-NORTH-CLOISTER)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-JERICHO-PARLOUR-DOOR LG-TOMBS-ABBEY LG-COLUMNS)
   (ACTION RT-DF-RM-SOUTH-AISLE)>

<OBJECT RM-JERICHO-PARLOUR
   (LOC ROOMS)
   (DESC "Jericho Parlour")
   (NORTH TO RM-SOUTH-AISLE IF LG-JERICHO-PARLOUR-DOOR IS OPEN)
   (OUT   TO RM-SOUTH-AISLE IF LG-JERICHO-PARLOUR-DOOR IS OPEN)
   (WEST  TO RM-JERUSALEM-CHAMBER)
   (IN    TO RM-JERUSALEM-CHAMBER)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-JERICHO-PARLOUR-DOOR LG-TOMBS-ABBEY RM-JERUSALEM-CHAMBER)
   (ACTION RT-DF-RM-JERICHO-PARLOUR)>

<OBJECT RM-JERUSALEM-CHAMBER
   (LOC ROOMS)
   (DESC "Jerusalem Chamber")
   (EAST  TO RM-JERICHO-PARLOUR)
   (OUT   TO RM-JERICHO-PARLOUR)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-PLAQUES LG-TOMBS-ABBEY)
   (SYNONYM CHAMBER)
   (ADJECTIVE JERUSALEM)
   (PSEUDOS <> (PANELLING OAK CEDAR TAPESTRIES) RT-AC-TH-PANELLING)
   (ACTION RT-DF-RM-JERUSALEM-CHAMBER)>

<OBJECT RM-NORTH-CLOISTER
   (LOC ROOMS)
   (DESC "North Cloister")
   (NW    TO RM-SOUTH-AISLE)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-TOMBS-ABBEY)
   (ACTION RT-DF-RM-NORTH-CLOISTER)>

<OBJECT RM-SOUTH-TRANSEPT
   (LOC ROOMS)
   (DESC "South Transept")
   (EAST  TO RM-POETS-CORNER)
   (WEST  TO RM-SOUTH-AISLE)
   (NW    TO RM-NAVE)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-WINDOW LG-TOMBS-ABBEY LG-SHAFT-OF-LIGHT LG-COLUMNS)
   (ACTION RT-DF-RM-SOUTH-TRANSEPT)>

<OBJECT RM-NORTH-TRANSEPT
   (LOC ROOMS)
   (DESC "North Transept")
   (EAST  TO RM-EVANGELIST-CHAPEL)
   (SW    TO RM-NAVE)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-WINDOW LG-TOMBS-ABBEY LG-SHAFT-OF-LIGHT LG-COLUMNS)
   (ACTION RT-DF-RM-NORTH-TRANSEPT)>

<OBJECT RM-POETS-CORNER
   (LOC ROOMS)
   (DESC "Poets' Corner")
   (NORTH TO RM-SOUTH-AMBULATORY)
   (WEST  TO RM-SOUTH-TRANSEPT)
   (FLAGS FL-INDOORS FL-LIGHTED FL-NOARTC FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-TOMBS-ABBEY)
   (ACTION RT-DF-RM-POETS-CORNER)>

<OBJECT RM-SOUTH-AMBULATORY
   (LOC ROOMS)
   (DESC "South Ambulatory")
   (EAST  TO RM-SOUTH-CHAPEL-AISLE)
   (NORTH TO RM-SANCTUARY)
   (SOUTH TO RM-POETS-CORNER)
   (NE    TO RM-HENRY-VII-CHAPEL)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-TOMBS-ABBEY LG-COLUMNS)
   (ACTION RT-DF-RM-SOUTH-AMBULATORY)>

<OBJECT RM-SANCTUARY
   (LOC ROOMS)
   (DESC "Sanctuary")
   (NORTH TO RM-NORTH-AMBULATORY)
   (SOUTH TO RM-SOUTH-AMBULATORY)
   (WEST  TO RM-NAVE)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-TOMBS-ABBEY LG-COLUMNS)
   (ACTION RT-DF-RM-SANCTUARY)>

<OBJECT RM-NORTH-AMBULATORY
   (LOC ROOMS)
   (DESC "North Ambulatory")
   (EAST  TO RM-NORTH-CHAPEL-AISLE)
   (NORTH TO RM-EVANGELIST-CHAPEL)
   (SOUTH TO RM-SANCTUARY)
   (SE    TO RM-HENRY-VII-CHAPEL)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-TOMBS-ABBEY LG-COLUMNS)
   (ACTION RT-DF-RM-NORTH-AMBULATORY)>

<OBJECT RM-EVANGELIST-CHAPEL
   (LOC ROOMS)
   (DESC "Evangelist Chapel")
   (SOUTH TO RM-NORTH-AMBULATORY)
   (WEST  TO RM-NORTH-TRANSEPT)
   (FLAGS FL-INDOORS FL-LIGHTED FL-VOWEL FL-HAS-DESCFCN ;FL-NO-ETHERIUM)
   (GLOBAL LG-TOMBS-ABBEY LG-MARBLE)
   (ACTION RT-AC-RM-EVANGELIST-CHAPEL)>

<OBJECT RM-HENRY-VII-CHAPEL
   (LOC ROOMS)
   (DESC "Henry VII Chapel")
   (NORTH TO RM-NORTH-CHAPEL-AISLE)
   (SOUTH TO RM-SOUTH-CHAPEL-AISLE)
   (WEST  TO RM-CONFESSOR-CHAPEL)
   (IN    TO RM-CONFESSOR-CHAPEL)
   (NE    TO RM-INNOCENTS-CORNER)
   (NW    TO RM-NORTH-AMBULATORY)
   (SW    TO RM-SOUTH-AMBULATORY)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-TOMBS-ABBEY)
   (ACTION RT-AC-RM-HENRY-VII-CHAPEL)>

<OBJECT RM-CONFESSOR-CHAPEL
   (LOC ROOMS)
   (DESC "Confessor Chapel")
   (EAST  TO RM-HENRY-VII-CHAPEL)
   (OUT   TO RM-HENRY-VII-CHAPEL)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-TOMBS-ABBEY)
   (ACTION RT-DF-RM-CONFESSOR-CHAPEL)>

<OBJECT RM-SOUTH-CHAPEL-AISLE
   (LOC ROOMS)
   (DESC "South Chapel Aisle")
   (WEST  TO RM-SOUTH-AMBULATORY)
   (NORTH TO RM-HENRY-VII-CHAPEL)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-TOMBS-ABBEY LG-MARBLE)
   (ACTION RT-DF-RM-SOUTH-CHAPEL-AISLE)>

<OBJECT RM-NORTH-CHAPEL-AISLE
   (LOC ROOMS)
   (DESC "North Chapel Aisle")
   (EAST  TO RM-INNOCENTS-CORNER)
   (WEST  TO RM-NORTH-AMBULATORY)
   (SOUTH TO RM-HENRY-VII-CHAPEL)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-ETHERIUM)
   (GLOBAL LG-TOMBS-ABBEY LG-MARBLE)
   (ACTION RT-DF-RM-NORTH-CHAPEL-AISLE)>

<OBJECT RM-INNOCENTS-CORNER
   (LOC ROOMS)
   (DESC "Innocents Corner")
   (WEST  TO RM-NORTH-CHAPEL-AISLE)
   (SW    TO RM-HENRY-VII-CHAPEL)
   (FLAGS FL-INDOORS FL-LIGHTED FL-NOARTC FL-VOWEL FL-HAS-DESCFCN
          FL-NO-ETHERIUM)
   (GLOBAL LG-TOMBS-ABBEY)
   (ACTION RT-DF-RM-INNOCENTS-CORNER)>

<OBJECT RM-DRAWBRIDGE
   (LOC ROOMS)
   (DESC "drawbridge")
   (EAST  TO RM-BYWARD-TOWER)
   (WEST  TO RM-TOWER-ENTRANCE)
   (GLOBAL LG-TOWER)
   (FLAGS FL-HAS-DESCFCN FL-SURFACE FL-NO-CROWDS)
   (SYNONYM DRAWBRIDGE)
   (ACTION RT-AC-RM-DRAWBRIDGE)>

<OBJECT RM-BYWARD-TOWER
   (LOC ROOMS)
   (DESC "Byward Tower")
   (EAST  PER RT-EX-RM-EXIT-BYWARD-TOWER)
   (WEST  PER RT-EX-RM-EXIT-BYWARD-TOWER)
   (IN	 PER RT-EX-RM-EXIT-BYWARD-TOWER)
   (OUT	 PER RT-EX-RM-EXIT-BYWARD-TOWER)
   (FLAGS FL-LOCKED FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN FL-NO-CROWDS)
   (GLOBAL LG-TOWER LG-RAVENS)
   (ACTION RT-DF-RM-BYWARD-TOWER)>

<OBJECT RM-OUTER-WARD
   (LOC ROOMS)
   (DESC "Outer Ward")
   (NORTH TO RM-BLOODY-TOWER)
   (SOUTH TO RM-INSIDE-TRAITORS-GATE)
   (WEST  TO RM-BYWARD-TOWER)
   (FLAGS FL-VOWEL FL-HAS-DESCFCN FL-NO-CROWDS)
   (GLOBAL LG-TOWER LG-RAVENS)
   (ACTION RT-DF-RM-OUTER-WARD)>

<OBJECT RM-BLOODY-TOWER
   (LOC ROOMS)
   (DESC "Bloody Tower")
   (NORTH TO RM-TOWER-GREEN)
   (SOUTH TO RM-OUTER-WARD)
   (OUT   TO RM-TOWER-GREEN)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN)
   (GLOBAL LG-TOWER)
   (ACTION RT-DF-RM-BLOODY-TOWER)>

<OBJECT RM-WAKEFIELD-TOWER
   (LOC ROOMS)
   (DESC "Wakefield Tower")
   (NW    TO RM-TOWER-GREEN)
   (UP    TO RM-JEWEL-ROOM)
   (OUT   TO RM-TOWER-GREEN)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN)
   (GLOBAL LG-STAIRWAY LG-TOWER)
   (ACTION RT-DF-RM-WAKEFIELD-TOWER)>

<OBJECT RM-JEWEL-ROOM
   (LOC ROOMS)
   (DESC "Jewel Room")
   (DOWN  TO RM-WAKEFIELD-TOWER)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN)
   (GLOBAL LG-STAIRWAY LG-TOWER)
   (ACTION RT-DF-RM-JEWEL-ROOM)>

<OBJECT RM-DUNGEON
   (LOC ROOMS)
   (DESC "Dungeon")
   (UP    TO RM-WHITE-TOWER)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN)
   (GLOBAL LG-STAIRWAY LG-TOWER)
   (ACTION RT-DF-RM-DUNGEON)>

<OBJECT RM-TORTURE-ROOM
   (LOC ROOMS)
   (DESC "Torture Room")
   (UP    TO RM-BOWYER-TOWER)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN)
   (GLOBAL LG-STAIRWAY LG-TOWER)
   (PSEUDOS <> INSTRUMENTS RT-AC-TH-INSTRUMENTS)
   (ACTION RT-DF-RM-TORTURE-ROOM)>

<OBJECT RM-WHITE-TOWER
   (LOC ROOMS)
   (DESC "White Tower")
   (WEST  TO RM-TOWER-GREEN)
   (DOWN  TO RM-DUNGEON)
   (OUT   TO RM-TOWER-GREEN)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN)
   (GLOBAL LG-STAIRWAY LG-TOWER)
   (ACTION RT-DF-RM-WHITE-TOWER)>

<OBJECT RM-TOWER-GREEN
   (LOC ROOMS)
   (DESC "Tower Green")
   (EAST  TO RM-WHITE-TOWER)
   (SOUTH TO RM-BLOODY-TOWER)
   (NE    TO RM-BOWYER-TOWER)
   (SE    TO RM-WAKEFIELD-TOWER)
;  (SW    TO RM-OUTSIDE-BELL-TOWER)
   (FLAGS FL-HAS-DESCFCN FL-NO-CROWDS)
   (GLOBAL LG-TOWER LG-RAVENS)
   (ACTION RT-DF-RM-TOWER-GREEN)>

<OBJECT RM-BOWYER-TOWER
   (LOC ROOMS)
   (DESC "Bowyer Tower")
   (SW    TO RM-TOWER-GREEN)
   (DOWN  TO RM-TORTURE-ROOM)
   (OUT   TO RM-TOWER-GREEN)
   (FLAGS FL-INDOORS FL-LIGHTED FL-HAS-DESCFCN)
   (GLOBAL LG-STAIRWAY LG-TOWER)
   (ACTION RT-DF-RM-BOWYER-TOWER)>

<OBJECT RM-INSIDE-TRAITORS-GATE
   (LOC ROOMS)
   (DESC "Inside Traitors Gate")
   (NORTH TO RM-OUTER-WARD)
   (OUT   TO RM-OUTSIDE-TRAITORS-GATE IF LG-PORTCULLIS-DOOR IS OPEN)
   (SOUTH TO RM-OUTSIDE-TRAITORS-GATE IF LG-PORTCULLIS-DOOR IS OPEN)
   (FLAGS FL-NOARTC FL-VOWEL FL-HAS-DESCFCN FL-NO-CROWDS)
   (GLOBAL LG-PORTCULLIS-DOOR LG-TOWER LG-RAVENS)
   (ACTION RT-DF-RM-INSIDE-TRAITORS-GATE)>

<OBJECT RM-OUTSIDE-TRAITORS-GATE
   (LOC ROOMS)
   (DESC "Outside Traitors Gate")
   (IN    TO RM-INSIDE-TRAITORS-GATE IF LG-PORTCULLIS-DOOR IS OPEN)
   (NORTH TO RM-INSIDE-TRAITORS-GATE IF LG-PORTCULLIS-DOOR IS OPEN)
   (SOUTH PER RT-EX-RM-LAUNCH-BOAT)
   (FLAGS FL-NOARTC FL-VOWEL FL-HAS-DESCFCN FL-NO-CROWDS)
   (GLOBAL LG-WATER LG-UP-DOWN-STREAM RM-LONDON-BRIDGE
	   LG-PORTCULLIS-DOOR LG-TOWER LG-BOATS)
   (ACTION RT-DF-RM-OUTSIDE-TRAITORS-GATE)>
