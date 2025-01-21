"SYNTAX for
		  THE HITCHHIKER'S GUIDE TO THE GALAXY
	(c) Copyright 1984 Infocom, Inc.  All Rights Reserved."

<BUZZ A AN THE IS ARE AM AND OF THEN ALL EVERYTHING BUT EXCEPT \. \, \"
      DON\'T DONT PRY PLEASE HERE SOME MORE FRONT G AGAIN OOPS O>

<SYNONYM ALL EVERYTHING>
<SYNONYM AGAIN G>
<SYNONYM OOPS O>
<SYNONYM TO TOWARD TOWARDS>
<SYNONYM WITH USING>
<SYNONYM THROUGH THRU>
<SYNONYM ON ONTO>
<SYNONYM OUT OUTSIDE>
<SYNONYM IN INSIDE INTO>
<SYNONYM UNDER BELOW BENEATH UNDERNEATH>
<SYNONYM AROUND ALONG>
<SYNONYM BEFORE NEAR NEXT AGAINST>
<SYNONYM ALL BOTH>
<SYNONYM DRUNK BOMBED SMASHED PLASTERED>

<SYNONYM NORTH N FORE F FOREWARD>
<SYNONYM SOUTH S AFT>
<SYNONYM EAST E STARBOARD SB>
<SYNONYM WEST W PORT P>
<SYNONYM DOWN D>
<SYNONYM UP U>
<SYNONYM NW NORTHWEST>
<SYNONYM NE NORTHEAST>
<SYNONYM SW SOUTHWEST>
<SYNONYM SE SOUTHEAST>


;"game commands"

<SYNTAX VERBOSE = V-VERBOSE>

<SYNTAX BRIEF = V-BRIEF>

<SYNTAX SUPER = V-SUPERBRIEF>
<SYNONYM SUPER SUPERBRIEF>

<SYNTAX DIAGNOSE = V-DIAGNOSE>

<SYNTAX INVENT = V-INVENTORY>
<SYNTAX I = V-INVENTORY>
<SYNTAX I OBJECT = V-I-AM>
<SYNONYM I I\'M IM>

<SYNTAX QUIT = V-QUIT>
<SYNONYM QUIT Q>

<SYNTAX RESTART = V-RESTART>

<SYNTAX RESTORE = V-RESTORE>

<SYNTAX SAVE = V-SAVE>

<SYNTAX SCORE = V-SCORE>

<SYNTAX SCRIPT = V-SCRIPT>

<SYNTAX UNSCRIPT = V-UNSCRIPT>

<SYNTAX VERSION = V-VERSION>

<SYNTAX $VERIFY = V-$VERIFY>
<SYNTAX $VERIFY OBJECT = V-$VERIFY>
<SYNONYM $VERIFY $VER>

<SYNTAX $REFRESH = V-$REFRESH>

;<SYNTAX $DEBUG = V-$DEBUG>

;<SYNTAX $PROB = V-$PROB>


;"subtitle real verbs"

<SYNTAX ADDRESS OBJECT (FIND ACTORBIT) (IN-ROOM) = V-TELL>

;<SYNTAX AGAIN = V-AGAIN>
;<SYNONYM AGAIN G>

<SYNTAX ANSWER = V-ANSWER>
<SYNTAX ANSWER OBJECT = V-REPLY>
<SYNTAX ANSWER TO OBJECT = V-REPLY>
<SYNONYM ANSWER REPLY>

<SYNTAX APPLAUD = V-APPLAUD>
<SYNONYM APPLAUD CLAP CHEER>

<SYNTAX APPRECIAT OBJECT = V-APPRECIATE>

<SYNTAX APPROACH OBJECT = V-WALK-TO>

<SYNTAX ASK OBJECT (FIND ACTORBIT) ABOUT OBJECT = V-ASK-ABOUT>
<SYNTAX ASK OBJECT (FIND ACTORBIT) ON OBJECT = V-ASK-ABOUT>
<SYNTAX ASK OBJECT (FIND ACTORBIT) FOR OBJECT = V-ASK-FOR>
<SYNONYM ASK CONSULT QUERY>

<SYNTAX ATTACK OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM) = V-KILL>
<SYNTAX ATTACK OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM)
	WITH OBJECT (HELD CARRIED HAVE) = V-KILL>
<SYNONYM ATTACK ASSAULT FIGHT HIT SLAP KILL MURDER STRIKE PUNCH>

<SYNTAX BITE OBJECT = V-BITE>

<SYNTAX BLOCK OBJECT = V-BLOCK>
<SYNTAX BLOCK OBJECT WITH OBJECT = V-BLOCK-WITH>
<SYNONYM BLOCK STOP>

<SYNTAX BOARD OBJECT (FIND VEHBIT) (ON-GROUND IN-ROOM) = V-BOARD PRE-BOARD>
<SYNONYM BOARD EMBARK>

<SYNTAX BRUSH OBJECT = V-BRUSH>
<SYNTAX BRUSH OBJECT WITH OBJECT (HAVE) = V-BRUSH>
<SYNONYM BRUSH>

<SYNTAX ORDER OBJECT = V-BUY>
<SYNONYM ORDER BUY PURCHASE>

<SYNTAX CARVE OBJECT ON OBJECT = V-CARVE PRE-CARVE>
<SYNTAX CARVE OBJECT IN OBJECT = V-CARVE PRE-CARVE>
<SYNTAX CARVE OBJECT WITH OBJECT (HAVE) = V-CARVE-WITH>
<SYNONYM CARVE INSCRIBE SCRATCH WRITE>

<SYNTAX CLIMB OBJECT (ON-GROUND IN-ROOM) = V-CLIMB-FOO>
<SYNTAX CLIMB ON OBJECT (FIND VEHBIT) (ON-GROUND IN-ROOM) = V-CLIMB-ON>
<SYNTAX CLIMB UP OBJECT (FIND RLANDBIT) (ON-GROUND IN-ROOM) = V-CLIMB-UP>
<SYNTAX CLIMB DOWN OBJECT (FIND RLANDBIT) (ON-GROUND IN-ROOM) = V-CLIMB-DOWN>
<SYNTAX CLIMB OVER OBJECT (ON-GROUND IN-ROOM) = V-CLIMB-OVER>
<SYNTAX CLIMB IN OBJECT (FIND VEHBIT) (ON-GROUND IN-ROOM) = V-BOARD PRE-BOARD>
<SYNTAX CLIMB THROUGH OBJECT = V-THROUGH>
<SYNONYM CLIMB SCALE>

<SYNTAX CLOSE OBJECT (FIND DOORBIT) (HELD CARRIED ON-GROUND IN-ROOM) = V-CLOSE>
<SYNTAX CLOSE OFF OBJECT (FIND LIGHTBIT) (HELD CARRIED ON-GROUND IN-ROOM TAKE)
	= V-LAMP-OFF>
<SYNONYM CLOSE SHUT>

<SYNTAX CONNECT OBJECT TO OBJECT = V-PLUG>

<SYNTAX COVER OBJECT WITH OBJECT (HELD MANY) = V-SPUT-ON>

<SYNTAX COUNT OBJECT = V-COUNT>

<SYNTAX CUT OBJECT WITH OBJECT (CARRIED HELD) = V-CUT>
<SYNTAX CUT THROUGH OBJECT WITH OBJECT (CARRIED HELD) = V-CUT>
<SYNONYM CUT SLICE>

<SYNTAX DEMOLISH OBJECT (ON-GROUND IN-ROOM) = V-MUNG>
<SYNTAX DEMOLISH OBJECT WITH OBJECT (HELD CARRIED TAKE) = V-MUNG>
<SYNTAX DEMOLISH DOWN OBJECT = V-KILL>
<SYNONYM DEMOLISH CRACK DESTROY DAMAGE BREAK SMASH WRECK>

<SYNTAX DANGLE OBJECT (HELD MANY) IN OBJECT = V-PUT PRE-PUT>

<SYNTAX DESCEND OBJECT (ON-GROUND IN-ROOM) = V-CLIMB-DOWN>

<SYNTAX DIG IN OBJECT = V-DIG>
<SYNTAX DIG WITH OBJECT = V-DIG>
<SYNTAX DIG THROUGH OBJECT = V-DIG>

<SYNTAX DISEMBARK OBJECT (FIND VEHBIT) (ON-GROUND IN-ROOM) = V-DISEMBARK>
<SYNONYM DISEMBARK DEBARK>

<SYNTAX DISROBE = V-GET-UNDRESSED>

<SYNTAX DOZE = V-DOZE>
<SYNONYM DOZE NAP SNOOZE>

<SYNTAX DRESS = V-GET-DRESSED>

<SYNTAX DRINK OBJECT (FIND DRINKBIT) (HELD CARRIED ON-GROUND IN-ROOM)
	= V-DRINK>
<SYNTAX DRINK FROM OBJECT (HELD CARRIED) = V-DRINK-FROM>
<SYNONYM DRINK SIP SWALLOW IMBIBE QUAFF GUZZLE SWILL>

<SYNTAX DROP OBJECT (HELD MANY HAVE) = V-DROP PRE-DROP>
<SYNTAX DROP OBJECT (HELD MANY) BEFORE OBJECT = V-PUT-IN-FRONT PRE-GIVE>
<SYNTAX DROP OBJECT (HELD MANY) DOWN OBJECT = V-PUT PRE-PUT>
<SYNTAX DROP OBJECT (HELD MANY) IN OBJECT = V-PUT PRE-PUT>
<SYNTAX DROP OBJECT (HELD MANY) ON OBJECT = V-PUT-ON PRE-PUT>

<SYNTAX EAT OBJECT (FIND EATBIT) (HELD CARRIED ON-GROUND IN-ROOM) = V-EAT>
<SYNONYM EAT DEVOUR INGEST GOBBLE>

<SYNTAX ENJOY OBJECT = V-ENJOY>

<SYNTAX ENTER = V-ENTER>
<SYNTAX ENTER OBJECT = V-THROUGH>

<SYNTAX EXIT = V-EXIT>
<SYNTAX EXIT OBJECT = V-EXIT>
<SYNONYM EXIT DEPART WITHDRAW>

<SYNTAX ESCAPE = V-ESCAPE>
<SYNTAX ESCAPE OBJECT = V-ESCAPE>
<SYNTAX ESCAPE FROM OBJECT = V-ESCAPE>
<SYNONYM ESCAPE FLEE>

<SYNTAX EXAMINE OBJECT (HELD CARRIED ON-GROUND IN-ROOM) (FIND DARKBIT)
	= V-EXAMINE PRE-READ>
<SYNTAX EXAMINE OBJECT THROUGH OBJECT = V-EXAMINE-THROUGH PRE-READ>
<SYNTAX EXAMINE IN OBJECT (HELD CARRIED IN-ROOM ON-GROUND)
	= V-LOOK-INSIDE>
<SYNTAX EXAMINE ON OBJECT (HELD CARRIED IN-ROOM ON-GROUND)
	= V-LOOK-INSIDE>
<SYNTAX EXAMINE FOR OBJECT = V-FIND>
<SYNONYM EXAMINE X INSPECT DESCRIBE STUDY OBSERVE SEE SCOUR>

<SYNTAX EXTINGUISH OBJECT (FIND ONBIT) = V-LAMP-OFF>

<SYNTAX FEED OBJECT (FIND ACTORBIT) = V-FEED>
<SYNTAX FEED OBJECT (MANY HELD HAVE) TO OBJECT (FIND ACTORBIT) (ON-GROUND)
	= V-GIVE PRE-GIVE>
<SYNTAX FEED OBJECT (FIND ACTORBIT) (ON-GROUND) OBJECT (MANY HELD HAVE)
	= V-SGIVE>

<SYNTAX FILL OBJECT = V-FILL>

<SYNTAX FIND OBJECT = V-FIND>
<SYNONYM FIND SEEK>

<SYNTAX FOLLOW OBJECT = V-FOLLOW>
<SYNONYM FOLLOW PURSUE CHASE>

<SYNTAX FOOTNOTE = V-FOOTNOTE>
<SYNTAX FOOTNOTE OBJECT = V-FOOTNOTE>

<SYNTAX FRIPPING = V-FRIPPING>
<SYNONYM FRIPPING LYSHUS GASHEE MORPHOUSI THOU BLEEM MISERABLE VENCHIT WIMBGUNTS>

<SYNTAX HAND OBJECT (MANY HELD HAVE) TO OBJECT (FIND ACTORBIT) (ON-GROUND)
	= V-GIVE PRE-GIVE>
<SYNTAX HAND OBJECT (FIND ACTORBIT) (ON-GROUND) OBJECT (MANY HELD HAVE)
	= V-SGIVE>
<SYNTAX HAND UP OBJECT (FIND RLANDBIT) = V-GIVE-UP>
<SYNONYM HAND GIVE SELL DONATE OFFER>

<SYNTAX HANG OBJECT ON OBJECT = V-HANG>
<SYNTAX HANG OBJECT FROM OBJECT = V-HANG>
<SYNTAX HANG OBJECT (HELD MANY) IN OBJECT = V-PUT PRE-PUT>

<SYNTAX HEAR OBJECT (FIND DARKBIT) = V-LISTEN>

<SYNTAX HELLO = V-HELLO>
<SYNTAX HELLO OBJECT = V-HELLO>
<SYNONYM HELLO HI>

<SYNTAX HIDE = V-HIDE>
<SYNTAX HIDE UNDER OBJECT = V-HIDE>
<SYNTAX HIDE BEHIND OBJECT = V-HIDE>

<SYNTAX HELP = V-HINTS>
<SYNTAX HELP OBJECT = V-SAVE-SOMETHING>
<SYNTAX HELP OFF OBJECT (FIND RLANDBIT) = V-HINTS-NO>
<VERB-SYNONYM HELP HINT HINTS CLUE CLUES VISICLUES INVISICLUES>

<SYNTAX HITCHHIKE = V-HITCHHIKE>
<SYNONYM HITCHHIKE HITCH>

<SYNTAX IDIOT = V-IDIOT>
<SYNONYM IDIOT>

<SYNTAX JUMP = V-LEAP>
<SYNTAX JUMP OVER OBJECT = V-LEAP>
<SYNTAX JUMP ACROSS OBJECT = V-LEAP>
<SYNTAX JUMP IN OBJECT = V-THROUGH>
<SYNTAX JUMP FROM OBJECT = V-LEAP>
<SYNTAX JUMP OFF OBJECT = V-LEAP>
<SYNTAX JUMP OUT OBJECT = V-THROUGH>
<SYNTAX JUMP THROUGH OBJECT = V-THROUGH>
<SYNONYM JUMP LEAP DIVE>

<SYNTAX KICK OBJECT = V-KICK>

<SYNTAX KISS OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM) = V-KISS>

<SYNTAX KNEEL = V-KNEEL>
<SYNONYM KNEEL CRAWL PEEK>

<SYNTAX KNOCK AT OBJECT = V-KNOCK>
<SYNTAX KNOCK ON OBJECT = V-KNOCK>
<SYNTAX KNOCK DOWN OBJECT (FIND ACTORBIT) (ON-GROUND IN-ROOM) = V-KILL>
<SYNONYM KNOCK RAP>

<SYNTAX LEAVE = V-LEAVE>
<SYNTAX LEAVE OBJECT = V-LEAVE>

<SYNTAX LIE ON OBJECT (FIND VEHBIT) = V-LIE-DOWN>
<SYNTAX LIE IN OBJECT (FIND VEHBIT) = V-LIE-DOWN>
<SYNTAX LIE DOWN OBJECT (FIND RLANDBIT) = V-LIE-DOWN>
<SYNTAX LIE BEFORE OBJECT = V-BLOCK>
<SYNONYM LIE RECLINE>

<SYNTAX LIGHT OBJECT (FIND LIGHTBIT) (HELD CARRIED ON-GROUND IN-ROOM)
	= V-LAMP-ON>

<SYNTAX LISTEN TO OBJECT (FIND DARKBIT) = V-LISTEN>

<SYNTAX LOCK OBJECT (ON-GROUND IN-ROOM) = V-LOCK>
<SYNTAX LOCK OBJECT (ON-GROUND IN-ROOM) WITH OBJECT (TAKE) = V-LOCK>

<SYNTAX LOOK = V-LOOK>
<SYNTAX LOOK AROUND OBJECT (FIND RLANDBIT) = V-LOOK>
<SYNTAX LOOK DOWN OBJECT (FIND RLANDBIT) = V-LOOK-DOWN>
<SYNTAX LOOK UP OBJECT (FIND RLANDBIT) = V-LOOK-UP>
<SYNTAX LOOK AT OBJECT (HELD CARRIED ON-GROUND IN-ROOM) (FIND DARKBIT)
	= V-EXAMINE PRE-READ>
<SYNTAX LOOK AT OBJECT THROUGH OBJECT = V-EXAMINE-THROUGH PRE-READ>
<SYNTAX LOOK THROUGH OBJECT = V-LOOK-INSIDE>
<SYNTAX LOOK OUT OBJECT = V-LOOK-INSIDE>
<SYNTAX LOOK UNDER OBJECT = V-LOOK-UNDER PRE-READ>
<SYNTAX LOOK BEHIND OBJECT = V-LOOK-BEHIND PRE-READ>
<SYNTAX LOOK IN OBJECT (HELD CARRIED ON-GROUND IN-ROOM) = V-LOOK-INSIDE>
<SYNTAX LOOK ON OBJECT = V-EXAMINE PRE-READ>
<SYNTAX LOOK FOR OBJECT = V-FIND>
<SYNTAX LOOK OBJECT = V-CHASTISE>
<SYNONYM LOOK L STARE GAZE>

<SYNTAX LOWER OBJECT = V-LOWER>

<SYNTAX MAKE OBJECT = V-MAKE>

<SYNTAX MOVE OBJECT (ON-GROUND IN-ROOM) = V-MOVE>
<SYNTAX MOVE OBJECT OBJECT = V-FLIPSWITCH>
<SYNTAX MOVE TOGETHER OBJECT = V-PULL-TOGETHER> ;"pull myself together"
<SYNONYM MOVE PULL>

<SYNTAX MY OBJECT OBJECT = V-MY-NAME>

<SYNTAX NO = V-NO>

<SYNTAX OPEN OBJECT (FIND DOORBIT) (HELD CARRIED ON-GROUND IN-ROOM) = V-OPEN>
<SYNTAX OPEN UP	OBJECT (FIND DOORBIT) (HELD CARRIED ON-GROUND IN-ROOM)
	= V-OPEN>
<SYNTAX OPEN OBJECT (FIND DOORBIT) (HELD CARRIED ON-GROUND IN-ROOM)
	WITH OBJECT (ON-GROUND IN-ROOM HELD CARRIED HAVE) = V-OPEN>
<SYNONYM OPEN PART DRAW>

<SYNTAX PANIC = V-PANIC>

<SYNTAX PAY FOR OBJECT = V-BUY>

<SYNTAX PHONE OBJECT = V-CALL>
<SYNTAX PHONE OBJECT WITH OBJECT = V-CALL-WITH>
<SYNTAX PHONE OBJECT ON OBJECT = V-CALL-WITH>
<SYNONYM PHONE CALL>

<SYNTAX PICK OBJECT = V-PICK>
<SYNTAX PICK OBJECT WITH OBJECT = V-PICK>
<SYNTAX PICK UP OBJECT (FIND TAKEBIT) (ON-GROUND MANY) = V-PICK-UP PRE-TAKE>

<SYNTAX PLANT OBJECT (HELD MANY) IN OBJECT = V-PLANT>
<SYNONYM PLANT BURY>

<SYNTAX PLUG OBJECT IN OBJECT = V-PLUG>
<SYNTAX PLUG OBJECT TO OBJECT = V-PLUG>
<SYNTAX PLUG IN OBJECT IN OBJECT = V-PLUG>
<SYNTAX PLUG IN OBJECT TO OBJECT = V-PLUG>

<SYNTAX POINT AT OBJECT = V-POINT>
<SYNTAX POINT TO OBJECT = V-POINT>
<SYNTAX POINT OBJECT AT OBJECT = V-STEER>
<SYNTAX POINT OBJECT TO OBJECT = V-STEER>
<SYNONYM POINT STEER>

<SYNTAX POUR OBJECT (HELD CARRIED) = V-POUR>
<SYNTAX POUR OBJECT (HELD CARRIED) IN OBJECT = V-POUR>
<SYNTAX POUR OBJECT (HELD CARRIED) ON OBJECT = V-POUR>
<SYNTAX POUR OBJECT (HELD CARRIED) OVER OBJECT = V-POUR>
<SYNONYM POUR SPILL SPRINKLE>

<SYNTAX PROTEST = V-PROTEST>
<SYNONYM PROTEST ARGUE>

<SYNTAX PUSH OBJECT = V-PUSH>
<SYNTAX PUSH OBJECT OBJECT = V-FLIPSWITCH>
<SYNTAX PUSH ON OBJECT (IN-ROOM ON-GROUND) = V-PUSH>
<SYNTAX PUSH OBJECT UNDER OBJECT = V-PUT-UNDER>
<SYNONYM PUSH PRESS>

<SYNTAX PUT OBJECT (HELD MANY) IN OBJECT = V-PUT PRE-PUT>
<SYNTAX PUT OBJECT (HELD MANY) AT OBJECT = V-PUT-IN-FRONT PRE-GIVE>
<SYNTAX PUT OBJECT (HELD MANY) BEFORE OBJECT = V-PUT-IN-FRONT PRE-GIVE>
<SYNTAX PUT OBJECT (HELD MANY) DOWN OBJECT = V-PUT-ON PRE-PUT>
<SYNTAX PUT OBJECT (HELD MANY) ON OBJECT = V-PUT-ON PRE-PUT>
<SYNTAX PUT OBJECT (HELD MANY) AROUND OBJECT = V-PUT-ON PRE-PUT>
<SYNTAX PUT OBJECT (HELD MANY) OVER OBJECT = V-PUT-ON PRE-PUT>
<SYNTAX PUT OBJECT (HELD MANY) ACROSS OBJECT = V-PUT-ON PRE-PUT>
<SYNTAX PUT DOWN OBJECT (HELD MANY HAVE) = V-DROP PRE-DROP>
<SYNTAX PUT OBJECT UNDER OBJECT = V-PUT-UNDER> 
<SYNTAX PUT ON OBJECT (FIND WEARBIT) (HAVE) = V-WEAR>
<SYNTAX PUT OBJECT BEHIND OBJECT = V-PUT-BEHIND>
<SYNONYM PUT STUFF INSERT PLACE LAY>

<SYNTAX RAISE OBJECT = V-RAISE>
<SYNTAX RAISE UP OBJECT = V-RAISE>
<SYNONYM RAISE LIFT>

<SYNTAX RAPE OBJECT (FIND ACTORBIT) = V-RAPE>

;<SYNTAX REACH IN OBJECT (ON-GROUND IN-ROOM) = V-REACH-IN>

<SYNTAX READ OBJECT (FIND READBIT) (HELD CARRIED ON-GROUND IN-ROOM TAKE)
	= V-READ PRE-READ>
<SYNTAX READ OBJECT (FIND READBIT) (HELD CARRIED ON-GROUND IN-ROOM TAKE)
	THROUGH OBJECT = V-READ PRE-READ>
<SYNTAX READ OBJECT (FIND READBIT) (HELD CARRIED ON-GROUND IN-ROOM TAKE)
	WITH OBJECT = V-READ PRE-READ>
<SYNONYM READ SKIM>

<SYNTAX REFUSE OBJECT (IN-ROOM) = V-REFUSE>

<SYNTAX RELAX = V-RELAX>

<SYNTAX REMOVE OBJECT (FIND WORNBIT) = V-REMOVE>
<SYNTAX REMOVE OBJECT (FIND TAKEBIT) (IN-ROOM CARRIED MANY)
	FROM OBJECT = V-TAKE PRE-TAKE>
<SYNONYM REMOVE DOFF SHED>

<SYNTAX REPAIR OBJECT = V-REPAIR>
<SYNONYM REPAIR FIX UNJAM>

<SYNTAX REPLACE OBJECT = V-REPLACE>

<SYNTAX SAVE OBJECT = V-SAVE-SOMETHING>

<SYNTAX SAY TO OBJECT (FIND ACTORBIT) (IN-ROOM) = V-TELL>
<SYNTAX SAY OBJECT = V-SAY-NAME>
<SYNTAX SAY = V-SAY>
<SYNONYM SAY TALK SPEAK>

<SYNTAX SEARCH OBJECT = V-SEARCH>
<SYNTAX SEARCH IN OBJECT = V-SEARCH>
<SYNTAX SEARCH FOR OBJECT = V-FIND>
<SYNONYM SEARCH RUMMAGE FRISK>

<SYNTAX SHAKE OBJECT = V-SHAKE>
<SYNTAX SHAKE OBJECT WITH OBJECT = V-SHAKE-WITH>

<SYNTAX SHOOT = V-SHOOT>
<SYNTAX SHOOT OBJECT = V-SHOOT>
<SYNTAX SHOOT OBJECT WITH OBJECT (HAVE) = V-SHOOT>
<SYNTAX SHOOT OBJECT (HAVE) AT OBJECT = V-SSHOOT>
<SYNONYM SHOOT FIRE BLAST>

<SYNTAX SHOW OBJECT (HELD MANY HAVE) TO OBJECT (FIND ACTORBIT) = V-SHOW>
<SYNTAX SHOW OBJECT (FIND ACTORBIT) OBJECT (HELD MANY HAVE) = V-SSHOW>

<SYNTAX SIT ON OBJECT (FIND VEHBIT) (ON-GROUND IN-ROOM) = V-CLIMB-ON>
<SYNTAX SIT DOWN OBJECT (FIND RLANDBIT) (ON-GROUND IN-ROOM) = V-SIT>
<SYNTAX SIT IN OBJECT (FIND VEHBIT) (ON-GROUND IN-ROOM) = V-BOARD PRE-BOARD>
<SYNONYM SIT REST SQUAT>

<SYNTAX SKIP = V-SKIP>
<SYNONYM SKIP HOP>

<SYNTAX SLEEP = V-SLEEP>
<SYNTAX SLEEP IN OBJECT (IN-ROOM ON-GROUND) = V-BOARD PRE-BOARD>
<SYNTAX SLEEP ON OBJECT (IN-ROOM ON-GROUND) = V-BOARD PRE-BOARD>

<SYNTAX SLIDE OBJECT = V-PUSH>
<SYNTAX SLIDE OBJECT UNDER OBJECT = V-PUT-UNDER>

<SYNTAX SMELL OBJECT (FIND DARKBIT) = V-SMELL>
<SYNONYM SMELL SNIFF WHIFF>

<SYNTAX SMILE = V-SMILE>
<SYNTAX SMILE AT OBJECT = V-SMILE>

<SYNTAX SPIN OBJECT = V-SPIN>
<SYNONYM SPIN WHIRL ROTATE>

<SYNTAX STAND = V-STAND>
<SYNTAX STAND UP OBJECT (FIND RLANDBIT) = V-STAND>
<SYNTAX STAND ON OBJECT = V-STAND-ON>
<SYNTAX STAND BEFORE OBJECT = V-STAND-BEFORE>
<SYNTAX STAND IN OBJECT = V-STAND-ON>
<SYNONYM STAND RISE>

<SYNTAX START OBJECT = V-LAMP-ON>
<SYNONYM START ACTIVATE>

<SYNTAX SWITCH OBJECT = V-TURN>
<SYNTAX SWITCH OBJECT OBJECT = V-FLIPSWITCH>
<SYNTAX SWITCH AROUND OBJECT (FIND RLANDBIT) = V-TURN>
<SYNTAX SWITCH OBJECT TO OBJECT = V-TURN>
<SYNTAX SWITCH OBJECT WITH OBJECT (HAVE) = V-TURN>
<SYNTAX SWITCH ON OBJECT (FIND LIGHTBIT) = V-LAMP-ON>
<SYNTAX SWITCH ON OBJECT OBJECT = V-FLIPSWITCH>
<SYNTAX SWITCH OFF OBJECT (FIND LIGHTBIT) (TAKE) = V-LAMP-OFF>
<SYNTAX SWITCH OFF OBJECT OBJECT = V-FLIPSWITCH>
<SYNONYM SWITCH TURN FLIP FLICK TOGGLE>

<SYNTAX TAKE OBJECT (FIND TAKEBIT) (ON-GROUND IN-ROOM MANY) = V-TAKE PRE-TAKE>
<SYNTAX TAKE IN OBJECT (FIND VEHBIT) (ON-GROUND IN-ROOM) = V-BOARD PRE-BOARD>
<SYNTAX TAKE OUT OBJECT (FIND VEHBIT) (ON-GROUND) = V-DISEMBARK>
<SYNTAX TAKE ON OBJECT (FIND VEHBIT) (ON-GROUND IN-ROOM) = V-CLIMB-ON>
<SYNTAX TAKE UP OBJECT (FIND RLANDBIT) = V-STAND>
<SYNTAX TAKE DRESSED OBJECT (FIND RLANDBIT) = V-GET-DRESSED>
<SYNTAX TAKE UNDRESSED OBJECT (FIND RLANDBIT) = V-GET-UNDRESSED>
<SYNTAX TAKE DRUNK OBJECT (FIND RLANDBIT) = V-GET-DRUNK>
<SYNTAX TAKE OBJECT (FIND TAKEBIT) (CARRIED IN-ROOM MANY)
	OUT OBJECT = V-TAKE PRE-TAKE>
<SYNTAX TAKE OBJECT (FIND TAKEBIT) (CARRIED IN-ROOM MANY)
	OFF OBJECT = V-TAKE PRE-TAKE>
<SYNTAX TAKE OBJECT (FIND TAKEBIT) (IN-ROOM CARRIED MANY)
	FROM OBJECT = V-TAKE PRE-TAKE>
<SYNTAX TAKE OBJECT (FIND TAKEBIT) (IN-ROOM CARRIED MANY)
	IN OBJECT = V-TAKE PRE-TAKE>
<SYNTAX TAKE OFF OBJECT (FIND WORNBIT) (HAVE) = V-TAKE-OFF>
<SYNONYM TAKE GRAB CATCH GET HOLD CARRY>

<SYNTAX TASTE OBJECT (FIND DARKBIT) = V-TASTE>
<SYNONYM TASTE LICK>

<SYNTAX TELL OBJECT (FIND ACTORBIT) (IN-ROOM) = V-TELL>
<SYNTAX TELL OBJECT (FIND ACTORBIT) ABOUT OBJECT = V-TELL-ABOUT>
<SYNTAX TELL OBJECT OBJECT = V-TELL-TIME>
<SYNTAX TELL OBJECT TO OBJECT = V-TELL-NAME>

<SYNTAX THANK OBJECT = V-THANK>
<SYNONYM THANK THANKS>

<SYNTAX THROW OBJECT (HELD CARRIED) = V-THROW PRE-THROW>
<SYNTAX THROW OBJECT OBJECT = V-FLIPSWITCH>
<SYNTAX THROW OBJECT (HELD CARRIED) UP OBJECT (FIND RLANDBIT)
	= V-THROW PRE-THROW>
<SYNTAX THROW OBJECT (HELD CARRIED) AT OBJECT (ON-GROUND IN-ROOM)
	= V-THROW PRE-THROW>
<SYNTAX THROW OBJECT (HELD CARRIED) TO OBJECT (ON-GROUND IN-ROOM)
	= V-THROW PRE-THROW>
<SYNTAX THROW OBJECT (HELD CARRIED) OFF OBJECT = V-THROW-OFF>
<SYNTAX THROW OBJECT (HELD CARRIED) OVER OBJECT = V-THROW-OFF>
<SYNTAX THROW OBJECT (HELD CARRIED) THROUGH OBJECT (ON-GROUND IN-ROOM)
	= V-THROW PRE-THROW>
<SYNTAX THROW OBJECT (HELD CARRIED) IN OBJECT = V-THROW PRE-THROW>
<SYNTAX THROW IN OBJECT = V-THROW-IN-TOWEL>
<SYNONYM THROW HURL TOSS>

<SYNTAX TIE OBJECT = V-TIE>
<SYNTAX TIE TOGETHER OBJECT = V-TIE-TOGETHER>
<SYNTAX TIE OBJECT (HELD MANY) AROUND OBJECT = V-PUT-ON PRE-PUT>
<SYNTAX TIE OBJECT TO OBJECT = V-PLUG>
<SYNONYM TIE FASTEN SECURE ATTACH>

<SYNTAX TOUCH OBJECT (FIND DARKBIT) = V-RUB>
<SYNTAX TOUCH OBJECT WITH OBJECT = V-RUB>
<SYNONYM TOUCH FEEL PAT PET RUB>

<SYNTAX TYPE = V-TYPE>
<SYNTAX TYPE ON OBJECT = V-TYPE-ON>

<SYNTAX UNDRESS = V-GET-UNDRESSED>

<SYNTAX UNLOCK OBJECT = V-UNLOCK>
<SYNTAX UNLOCK OBJECT WITH OBJECT (HAVE) = V-UNLOCK>

<SYNTAX UNPLUG OBJECT = V-UNPLUG>
<SYNONYM UNPLUG DISCONNEC>

<SYNTAX UNTIE OBJECT (ON-GROUND IN-ROOM HELD CARRIED) = V-UNTIE>
<SYNONYM UNTIE FREE UNFASTEN UNATTACH UNKNOT>

<SYNTAX WAIT = V-WAIT>
<SYNTAX WAIT FOR OBJECT = V-WAIT-FOR>
<SYNONYM WAIT Z STAY>

<SYNTAX WAKE OBJECT (FIND RLANDBIT) = V-ALARM>
<SYNTAX WAKE UP OBJECT (FIND RLANDBIT) = V-ALARM>
<SYNONYM WAKE AWAKE ROUSE>

<SYNTAX WALK = V-WALK-AROUND>
<SYNTAX WALK OBJECT = V-WALK>
<SYNTAX WALK IN OBJECT = V-THROUGH>
<SYNTAX WALK OUT OBJECT = V-THROUGH>
<SYNTAX WALK ON OBJECT = V-WALK-AROUND>
<SYNTAX WALK OVER OBJECT = V-LEAP>
<SYNTAX WALK THROUGH OBJECT = V-THROUGH>
<SYNTAX WALK AROUND OBJECT = V-WALK-AROUND>
<SYNTAX WALK BEHIND OBJECT = V-WALK-AROUND>
<SYNTAX WALK UP OBJECT (ON-GROUND IN-ROOM) = V-CLIMB-UP>
<SYNTAX WALK DOWN OBJECT (ON-GROUND IN-ROOM) = V-CLIMB-DOWN>
<SYNTAX WALK TO OBJECT = V-WALK-TO>
<SYNTAX WALK AWAY OBJECT (FIND RLANDBIT) = V-LEAVE>
<SYNONYM WALK GO RUN PROCEED STEP>

<SYNTAX WASH OBJECT = V-CLEAN>
<SYNTAX WASH UP OBJECT (FIND RLANDBIT) = V-CLEAN>
<SYNONYM WASH CLEAN TIDY>

<SYNTAX WATER OBJECT WITH OBJECT (HAVE) = V-WATER>

<SYNTAX WAVE OBJECT (HELD CARRIED) = V-WAVE>
<SYNTAX WAVE = V-WAVE-AT>
<SYNTAX WAVE AT OBJECT = V-WAVE-AT>
<SYNTAX WAVE TO OBJECT = V-WAVE-AT>

<SYNTAX WEAR OBJECT (FIND WEARBIT) (HAVE) = V-WEAR>
<SYNONYM WEAR DON>

<SYNTAX WHAT OBJECT = V-WHAT>
<SYNTAX WHAT ABOUT OBJECT = V-WHAT-ABOUT>
<SYNTAX WHAT OBJECT OBJECT = V-WHAT-TIME>
<SYNONYM WHAT WHATS WHAT\'S>

<SYNTAX WHERE OBJECT = V-WHERE>
<SYNONYM WHERE WHERES WHERE\'S>

<SYNTAX WHO OBJECT = V-WHO>
<SYNONYM WHO WHOS WHO\'S>

<SYNTAX WHY = V-WHY>

<SYNTAX DRAPE OBJECT IN OBJECT (HELD MANY) = V-SPUT-ON>
<SYNTAX DRAPE OBJECT (HELD MANY) ON OBJECT = V-PUT-ON PRE-PUT>
<SYNTAX DRAPE OBJECT (HELD MANY) AROUND OBJECT = V-PUT-ON PRE-PUT>
<SYNTAX DRAPE OBJECT (HELD MANY) OVER OBJECT = V-PUT-ON PRE-PUT>
<SYNONYM DRAPE WRAP>

<SYNTAX YELL = V-YELL>
<SYNTAX YELL AT OBJECT = V-YELL>
<SYNTAX YELL TO OBJECT = V-YELL>
<SYNONYM YELL SCREAM SHOUT HOWL>

<SYNTAX YES = V-YES>
<SYNONYM YES Y OK OKAY SURE>