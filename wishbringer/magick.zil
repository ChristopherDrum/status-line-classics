"MAGICK for WISHBRINGER:
 Copyright (C)1985 Infocom, Inc. All rights reserved.
 Reconstructed from .ZAP files 5/23/88 by Prof."

<OBJECT WISHBRINGER
	(DESC "small stone")
	(FLAGS TOOLBIT RMUNGBIT TAKEBIT)
	(SYNONYM STONE ROCK LIGHT WISHBRINGER)
	(ADJECTIVE SMALL MAGIC MAGICK GLOWING VIOLET)
	(SIZE 1)
	(VALUE 5)
	(ACTION WISHBRINGER-F)>

<ROUTINE WISHBRINGER-F ()
	<COND (<VERB? EXAMINE>
	       <SAY-THE ,WISHBRINGER>
	       <COND (<FSET? ,WISHBRINGER ,ONBIT>
		      <TELL " glows">
		      <SAY-GLOW>
		      <RTRUE>)>
	       <TELL " is dark and cold." CR>
	       <RTRUE>)
	      (T
	       <RFALSE>)>>

<ROUTINE SAY-GLOW ()
	 <TELL " with an eerie violet-white radiance." CR>
	 <RTRUE>>

<ROUTINE NOT-SATISFIED ("OPT" (CONDITIONS? <>))
	 <TELL "Read the Storybook that you start with for a summary
of what you must ">
	 <COND (.CONDITIONS?
		<TELL "do ">)
	       (T
		<TELL "be holding ">)>
	 <TELL "to make that Wish come true.]" CR>
	 <RTRUE>>

<ROUTINE BEFORE-YOU-WISH (STR OBJ)
	 <THIS-IS-IT .OBJ>
	 <TELL "(You probably ought to " .STR " the " D .OBJ
	       " before you make that Wish!)" CR>
	 <RTRUE>>

<ROUTINE STONE-IGNORES (STR)
	 <TELL "The Stone, sensing that " .STR 
	       ", decides to ignore your Wish." CR>
	 <RTRUE>>

<ROUTINE NOT-WISHING? (OBJ)
	 <COND (<NOT <VERB? WISH>>
		<TELL "How can you do that ">
		<COND (<EQUAL? .OBJ ,PRSO>
		       <TELL "to">)
		      (T
		       <TELL "with">)>
		<TELL " an abstract concept like \"" D .OBJ "\"?" CR>
		<RTRUE>)
	       (T
		<RFALSE>)>>

<OBJECT FLIGHT
	(LOC GLOBAL-OBJECTS)
	(DESC "Flight")
	(FLAGS WISHBIT NARTICLEBIT)
	(SYNONYM FLIGHT)
	(ACTION FLIGHT-F)>

<ROUTINE FLIGHT-F ()
	 <COND (<NOT-WISHING? ,FLIGHT>
		<RFATAL>)
	       (<NOT <IN? ,BROOM, PROTAGONIST>>
		<NOT-SATISFIED>
		<RFATAL>)
	       (<ZERO? ,BROOM-SIT?>
		<BEFORE-YOU-WISH "sit on" ,BROOM>
		<RFATAL>)
	       (<AND <FSET? ,HERE ,INDOORSBIT>
		     <NOT <EQUAL? ,HERE ,LABORATORY>>>
		<STONE-IGNORES "you're not outdoors">
		<RFATAL>)>
	 <FSET ,FLIGHT ,TOUCHBIT>
	 <FSET ,VULTURE ,RMUNGBIT>
	 <INC SPELLS>
	 <TELL 
"The Stone begins to pulse with violet Magick. Translucent planes of energy coax the broomstick ">
	 <COND (<EQUAL? ,HERE ,LABORATORY>
		<TELL "out the window and ">)>
	 <TELL "high into the moonlit sky.|
|
You feel a cool wind whip your face as you streak northward, guided by the steady glow of Wishbringer.">
	 <TO-FINISH>
	 <MOVE ,BROOM ,CLIFF-EDGE>
	 <SETG BROOM-SIT? <>>
	 <CLATTERS ,BROOM>
	 <CRLF>
	 <V-LOOK>
	 <RTRUE>>

<OBJECT FREEDOM
	(LOC GLOBAL-OBJECTS)
	(DESC "Freedom")
	(FLAGS WISHBIT NARTICLEBIT)
	(SYNONYM FREEDOM)
	(ACTION FREEDOM-F)>

<ROUTINE FREEDOM-F ("AUX" RM)
	 <COND (<NOT-WISHING? ,FREEDOM>
		<RFATAL>)
	       (<ULTIMATELY-IN? ,CHOCOLATE>
		<BEFORE-YOU-WISH "eat" ,CHOCOLATE>
		<RFATAL>)
	       (<ZERO? ,CHOCOLATE-SCRIPT>
		<NOT-SATISFIED T>
		<RFATAL>)
	       (<AND ,CHAINED?
		     <EQUAL? ,HERE ,TORTURE-CHAMBER>>
		<SETG CHOCOLATE-SCRIPT 1>
		<FSET ,FREEDOM ,TOUCHBIT>
		<INC SPELLS>
		<COND (<IN? ,CRISP ,TORTURE-CHAMBER>
		       <FSET ,WISHBRINGER ,NDESCBIT>
		       <MOVE ,WISHBRINGER ,COAT>
		       <TELL D ,CRISP " watches with surprise as a">
		       <FINGER-OF-LIGHT>
		       <TELL CR "\"Good trick,\" " D ,CRISP
" remarks as he relocks your chains, snatches " ,GAME
" away from you and drops it into his coat pocket. \"You'll have to tell " 
,EONE " how you did it.\"" CR>
		       <RFATAL>)>
		<OPEN-TORTURE-CHAINS>
		<TELL "A">
		<FINGER-OF-LIGHT>
		<RFATAL>)
	       (<AND <EQUAL? ,HERE ,JAIL-CELL>
		     <FSET? ,HIDDEN-HATCH ,RMUNGBIT>>
		<SET RM ,LOOKOUT-HILL>
		<COND (<EQUAL? <LOC ,BOOTS> ,LOOKOUT-HILL ,RIVER-OUTLET>
		       <SET RM ,ROTARY-WEST>)>
		<FREE-TO .RM>
		<RFATAL>)
	       (T
		<SETG CHOCOLATE-SCRIPT 2>
		<STONE-IGNORES "you're not really confined">
		<RFATAL>)>>		     
		
<ROUTINE FINGER-OF-LIGHT ()
	 <TELL 
" wraithlike finger of light jumps out of the Magick Stone! It twists itself into the shape of a " D ,KEY ", unlocks your chains and fades away." CR>
	 <RTRUE>>
	       
<ROUTINE FREE-TO (PLACE)
	 <FSET ,FREEDOM ,TOUCHBIT>
	 <FSET ,VULTURE ,RMUNGBIT>
	 <INC SPELLS>
	 <SETG CHOCOLATE-SCRIPT 1>
	 <MOVE ,PROTAGONIST .PLACE>
	 <SETG HERE .PLACE>
	 <FCLEAR .PLACE ,TOUCHBIT>
	 <TELL
"The Magick Stone shines brightly as you speak the Wish. You feel a momentary dizziness, then a breath of fresh air...">
	 <CARRIAGE-RETURNS>
	 <V-LOOK>
	 <RTRUE>>
		
<OBJECT RAIN
	(LOC GLOBAL-OBJECTS)
	(DESC "rain")
	(FLAGS WISHBIT NARTICLEBIT)
	(SYNONYM RAIN RAINWATER)
	(ACTION RAIN-F)>

<GLOBAL RAIN-ROOM <>>

<ROUTINE RAIN-F ("AUX" OBJ NXT)
	 <COND (<VERB? WISH>
		<COND (<NOT <IN? ,UMBRELLA ,PROTAGONIST>>
		       <NOT-SATISFIED>
		       <RFATAL>)
		      (<NOT <FSET? ,UMBRELLA ,OPENBIT>>
		       <BEFORE-YOU-WISH "open" ,UMBRELLA>
		       <RFATAL>)
		      (<FSET? ,HERE ,INDOORSBIT>
		       <STONE-IGNORES "you're not outdoors">
		       <RFATAL>)>
		<FSET ,RAIN ,TOUCHBIT>
		<FSET ,VULTURE ,RMUNGBIT>
		<INC SPELLS>
		<SETG RAIN-ROOM ,HERE>
		<TELL
"A searing bolt of lightning shatters the night! It strikes the glowing Stone of Dreams, and fractures the sky into a billion raindrops.|
|
Everything around you is soaked in a brief but savage downpour.">
		<COND (<EQUAL? ,HERE ,FOG>
		       <SETG HERE ,CLIFF-BOTTOM>
		       <MOVE ,PROTAGONIST ,CLIFF-BOTTOM>
		       <SETG TLOC <>>
		       <START-BUZZ 2>
		       <TELL 
" Your vision clears as the thick fog sinks away.||">
		       <V-LOOK>
		       <RTRUE>)
		      (<EQUAL? ,HERE ,EDGE-OF-LAKE>
		       <SETG PIT-FULL? T>
		       <TELL
" A flood of rainwater cascades down Lookout Hill, quickly filling the narrow pit." CR>
		       <COND (<IN? ,PLATYPUS ,PIT>
			      <THIS-IS-IT ,PLATYPUS>
			      <TELL CR 
"The platypus swims gracefully out and shakes herself off.||">
			      <DRAW-X>)>
		       <COND (<SET OBJ <FIRST? ,PIT>>
			      <REPEAT ()
				 <COND (<ZERO? .OBJ>
					<RETURN>)>
				 <SET NXT <NEXT? .OBJ>>
				 <COND (<NOT <EQUAL? .OBJ ,BRANCH>>
					<REMOVE .OBJ>)>
				 <SET OBJ .NXT>>)>
		       <RTRUE>)>
		<CRLF>
		<SET OBJ <REACTOR?>>
		<COND (<ZERO? .OBJ>
		       <RTRUE>)>
		<TELL CR "It's obvious that ">
		<ARTICLE .OBJ T>
		<TELL " did not enjoy the sudden bath." CR>
		<RTRUE>)
	       (<OR <NOT <FSET? ,RAIN ,TOUCHBIT>>
		    <NOT <EQUAL? ,HERE ,RAIN-ROOM>>>
		<TELL "No rain is expected">
		<COND (<FSET? ,HERE ,INDOORSBIT>
		       <TELL ", especially indoors." CR>
		       <RFATAL>)>
		<TELL " here." CR>
		<RFATAL>)
	       (<AND ,PIT-FULL?
		     <EQUAL? ,HERE ,EDGE-OF-LAKE>>
		<TELL "The only rain here is in the pit." CR>
		<RFATAL>)
	       (T
		<TELL "Alas. The rain is all gone." CR>
		<RFATAL>)>>
		
<OBJECT FORESIGHT
	(LOC GLOBAL-OBJECTS)
	(DESC "Foresight")
	(FLAGS WISHBIT NARTICLEBIT)
	(SYNONYM FORESIGHT)
	(ACTION FORESIGHT-F)>

<ROUTINE FORESIGHT-F ("AUX" FROM)
	 <COND (<NOT-WISHING? ,FORESIGHT>
		<RFATAL>)
	       (<NOT <IN? ,GLASSES ,PROTAGONIST>>
		<NOT-SATISFIED>
		<RFATAL>)
	       (<NOT <FSET? ,GLASSES ,WORNBIT>>
		<BEFORE-YOU-WISH "wear" ,GLASSES>
		<RFATAL>)>
	 <FSET ,FORESIGHT ,TOUCHBIT>
	 <FSET ,VULTURE ,RMUNGBIT>
	 <INC SPELLS>
	 <TELL "The ">
	 <COND (,FUZZY?
	        <TELL <PICK-ONE ,BLURS> " ">)>
	 <COND (<FSET? ,HERE ,INDOORSBIT>
		<TELL "room around you">)
	       (T
		<TELL "moonlight">)>
	 <TELL " fades as you speak the Wish.">
	 <SET FROM ,HERE>
	 <SETG HERE ,MUSEUM>
	 <CARRIAGE-RETURNS>
	 <UPDATE-STATUS-LINE>
	 <TELL
"A pinprick of brilliance pierces the gloom. It creeps closer, growing more powerful and unearthly as it approaches.|
|
The light is shining from the forehead of a " D ,KITTY
"! It leaps into your arms and curls comfortably around your neck, purring like an old companion.|
|
Suddenly a pair of gnarled hands closes around the " D ,KITTY
" and tears it away from you. The glowing spot on the cat's forehead drops into your open palm as the thief disappears with a cackle into the " D ,DARKNESS
".|
|
An aged voice in your mind chuckles, ">
	 <LIAR>
	 <TELL ".\"">
	 <CARRIAGE-RETURNS>
	 <SETG HERE .FROM>
	 <COND (<ZERO? ,FUZZY>
		<SET FROM <ANYONE-HERE?>>
		<COND (<NOT <EQUAL? .FROM <> ,KITTY ,BABY>>
		     ; <TELL " ">
		       <COND (<FSET? .FROM ,NARTICLEBIT>
			      <TELL "The ">)>
		       <STRANGE-LOOK .FROM>
		       <CRLF>)>)>
	 <RFATAL>>
	       
<ROUTINE LIAR ()
	 <TELL "\"Now you know me for the old liar I am">
	 <RTRUE>>

<ROUTINE STRANGE-LOOK (WHO)
	 <TELL D .WHO " gives you a strange look." CR>
	 <RTRUE>>

<OBJECT LUCK
	(LOC GLOBAL-OBJECTS)
	(DESC "Luck")
	(FLAGS WISHBIT NARTICLEBIT)
	(SYNONYM LUCK)
	(ACTION LUCK-F)>

<GLOBAL LUCKY? <>>

<ROUTINE LUCK-F ()
	 <COND (<NOT-WISHING? ,LUCK>
		<RFATAL>)
	       (<NOT <IN? ,SHOE ,PROTAGONIST>>
		<NOT-SATISFIED>
		<RFATAL>)>
	 <FSET ,LUCK ,TOUCHBIT>
	 <FSET ,VULTURE ,RMUNGBIT>
	 <INC SPELLS>
	 <SETG LUCKY? T>
	 <FSET ,SHOE ,ONBIT>
	 <ENABLE <QUEUE I-LUCK -1>>
	 <THIS-IS-IT ,SHOE>
	 <TELL
"The Stone of Dreams brightens as you speak the Wish, and the edges of the "
D ,SHOE " begin to twinkle with Luck." CR>
	 <COND (<EQUAL? ,HERE ,FOG>
		<SETG TLOC <>>
		<SETG HERE ,CLIFF-BOTTOM>
		<MOVE ,PROTAGONIST ,CLIFF-BOTTOM>
		<WALK-OUT-OF-FOG>
		<V-LOOK>)>
	 <RFATAL>>
	       
<ROUTINE BAD-LUCK (STR)
	 <TELL CR "(It's bad luck to " .STR ".">
	 <COND (<ENABLED? ,I-LUCK>
		<DISABLE <INT I-LUCK>>
		<TELL " You've neutralized the Luck Wish!)" CR>
		<I-LUCK T>
		<RTRUE>)>
	 <TELL ")" CR>
	 <RTRUE>>

<OBJECT ADVICE
	(LOC GLOBAL-OBJECTS)
	(DESC "Advice")
	(FLAGS WISHBIT NARTICLEBIT)
	(SYNONYM ADVICE)
	(ACTION ADVICE-F)>

<ROUTINE ADVICE-F ()
	 <COND (<NOT-WISHING? ,ADVICE>
		<RFATAL>)
	       (<NOT <IN? ,CONCH-SHELL, PROTAGONIST>>
		<NOT-SATISFIED>
		<RFATAL>)>
	 <FSET ,ADVICE ,TOUCHBIT>
	 <FSET ,VULTURE ,RMUNGBIT>
	 <INC SPELLS>
	 <ENABLE <QUEUE I-SHELL-TALK -1>>
	 <TELL ,GAME " emits a violet flash of Magick." CR>
	 <RFATAL>>

<OBJECT DARKNESS
	(LOC GLOBAL-OBJECTS)
	(DESC "darkness")
	(FLAGS WISHBIT NARTICLEBIT)
	(SYNONYM DARKNESS DARK)
	(ACTION DARKNESS-F)>

<GLOBAL DARK-PLACE <>>
<GLOBAL ECLIPSE? <>>

<ROUTINE DARKNESS-F ("AUX" (INDOORS? <>) WHO)
	 <COND (<VERB? WISH>
		<COND (<AND <IN? ,BOTTLE ,PROTAGONIST>
			    <IN? ,MILK ,BOTTLE>>
		       <BEFORE-YOU-WISH "drink" ,MILK>
		       <RFATAL>)
		      (<ZERO? ,MILK-SCRIPT>
		       <NOT-SATISFIED T>
		       <RFATAL>)
		      (<NOT <FSET? ,HERE ,ONBIT>>
		       <STONE-IGNORES "dim enough in here already">
		       <RFATAL>)>
		<FSET ,DARKNESS ,TOUCHBIT>
		<FSET ,VULTURE ,RMUNGBIT>
		<INC SPELLS>
		<SETG DARK-PLACE ,HERE>
		<SETG MILK-SCRIPT 1>
		<ENABLE <QUEUE I-ECLIPSE 2>>
		<FCLEAR ,WISHBRINGER ,ONBIT>
		<FCLEAR ,SHOE ,ONBIT>
		<SETG ECLIPSE? T>
		<SETG MOVIE-STATUS ,NO-MOVIE?>
		<SETG NO-MOVIE? T>
		<COND (<FSET? ,HERE ,INDOORSBIT>
		       <SET INDOORS? T>)>
		<SET WHO <REACTOR?>>
		<TELL "The ">
		<COND (.INDOORS?
		       <TELL "air">)
		      (T
		       <TELL "night">)>
		<TELL " becomes very still as you speak the Wish. ">
		<COND (<EQUAL? .WHO ,HELLHOUND ,PELICAN>
		       <SAY-THE .WHO>
		       <COND (<EQUAL? .WHO ,HELLHOUND>
			      <TELL " stops ">
			      <COND (,HELLHOUND-HAPPY?
				     <TELL "thumping its tail,">)
				    (T
				     <TELL "in mid-roar,">)>)>
		       <TELL " cocks its head and sniffs the air nervously.">)
		      (<EQUAL? .WHO ,TROLL ,GRAVEDIGGER>
		       <SAY-THE .WHO>
		       <FROWNS>)
		      (<EQUAL? .WHO ,MACGUFFIN ,CRISP ,KING>
		       <TELL D .WHO>
		       <FROWNS>)
		      (<EQUAL? .WHO ,MISS-VOSS ,PRINCESS ,EVIL-ONE>
		       <TELL D .WHO>
		       <FROWNS T>)
		      (.WHO
		       <TELL "You notice ">
		       <ARTICLE .WHO T>
		       <TELL " looking">
		       <NERVOUSLY>)>
		<TELL
"||All at once a terrifying shadow sweeps across the ">
		<COND (.INDOORS?
		       <TELL "surface of " ,GAME>)
		      (T
		       <TELL "face of the full moon">)>
		<COND (<FSET? ,CANDLE ,ONBIT>
		       <FCLEAR ,CANDLE ,ONBIT>
		       <COND (<VISIBLE? ,CANDLE>
			      <TELL ". The candle flame withers and dies">)>)>
		<TELL ", plunging the ">
		<COND (.INDOORS?
		       <TELL "room">)
		      (T
		       <TELL "landscape">)>
		<TELL " into total darkness.">
		<COND (<EQUAL? .WHO ,HELLHOUND>
		       <TELL CR CR>
		       <SAY-THE ,HELLHOUND>
		       <TELL 
"'s eyes grow wide with terror. It flops itself down on the ground, covers its eyes with its forepaws and moans pitifully">
		       <IN-GLOOM>)
		      (<EQUAL? .WHO ,TROLL>
		       <CRLF>
		       <FRIGHTEN-TROLL>)
		      (<EQUAL? .WHO ,GRAVEDIGGER>
		       <TELL "|
|
\"Who turned out the lights?!\" cries the " D ,GRAVEDIGGER
", stumbling around the pitch-black lobby in terror." CR>)
		      (.WHO
		       <TELL CR CR ,YOU-HEAR>
		       <ARTICLE .WHO T>
		       <TELL "making fearful noises">
		       <IN-GLOOM>)
		      (T
		       <CRLF>)>
		<SETG LIT <LIT? ,HERE>>
		<RTRUE>)
	       (<AND <EQUAL? ,PRSO ,DARKNESS>
		     <SEE-VERB?>>
		<YOU-CANT-SEE>
		<TELL "anything in darkness!" CR>
		<RFATAL>)
	       (<OR <EQUAL? ,PRSA ,V?LISTEN ,V?YELL>
		    <TALKING-TO? ,DARKNESS>>
		<TELL "You hear nothing." CR>
		<RFATAL>)
	       (<NOT-WISHING? ,DARKNESS>
		<RFATAL>)
	       (T
		<RFALSE>)>>
		
<ROUTINE IN-GLOOM ()
	 <TELL " in the sudden gloom." CR>
	 <RTRUE>>

<ROUTINE NERVOUSLY ()
	 <TELL " around nervously.">
	 <RTRUE>>

<ROUTINE FROWNS ("OPT" (FEMALE? <>))
	 <TELL " frowns, blinks ">
	 <COND (.FEMALE?
		<TELL "her">)
	       (T
		<TELL "his">)>
	 <TELL " eyes and looks">
	 <NERVOUSLY>
	 <RTRUE>>

<ROUTINE REACTOR? ("AUX" WHO)
	 <COND (<AND <EQUAL? ,HERE ,EDGE-OF-LAKE>
		     <IN? ,PLATYPUS ,PIT>>
		<RETURN ,PLATYPUS>)
	       (<EQUAL? ,HERE ,THRONE-ROOM>
		<RETURN ,CROWD>)>
	 <SET WHO <ANYONE-HERE?>>
	 <COND (<EQUAL? .WHO <> ,BABY>
		<RFALSE>)
	       (<AND <EQUAL? .WHO ,KITTY>
		     <FSET? ,KITTY ,RMUNGBIT>>
		<RFALSE>)>
	 <RETURN .WHO>>
	       
<ROUTINE I-ECLIPSE ("AUX" WHO)
	 <COND (,LUCKY?
		<FSET ,SHOE ,ONBIT>)>
	 <DISABLE <INT I-ECLIPSE>>
	 <SETG ECLIPSE? <>>
	 <SETG NO-MOVIE? ,MOVIE-STATUS>
	 <FSET ,VULTURE ,RMUNGBIT>
	 <FSET ,WISHBRINGER ,ONBIT>
	 <TELL CR "As suddenly as it faded, the light ">
	 <COND (<FSET? ,HERE ,INDOORSBIT>
		<COND (<VISIBLE? ,WISHBRINGER>
		       <TELL "from " ,GAME>)
		      (T
		       <TELL "around you">)>)
	       (T
		<TELL "of the moon">)>
	 <TELL " returns">
	 <COND (<AND <NOT <FSET? ,CANDLE ,RMUNGBIT>>
		     <NOT <FSET? ,CANDLE ,ONBIT>>>
		<FSET ,CANDLE ,ONBIT>
		<COND (<VISIBLE? ,CANDLE>
		       <TELL ", and the candle flares back to life">)>)>
	 <TELL ".">
	 <SET WHO <REACTOR?>>
	 <COND (<EQUAL? .WHO ,HELLHOUND>
		<SETG DOG-SCRIPT 0>
		<TELL CR CR>
		<SAY-THE ,HELLHOUND>
		<TELL
" recovers from its embarrassing fear of darkness, and ">
		<COND (,HELLHOUND-HAPPY?
		       <TELL "thumps its tail">)
		      (T
		       <TELL "snarls at you">)>
		<TELL " with renewed enthusiasm.">)
	       (.WHO
		<TELL "||With a ">
		<COND (<EQUAL? .WHO ,CROWD ,HUMANOIDS>
		       <TELL "collective ">)>
		<TELL "sigh of relief, ">
		<ARTICLE .WHO T>
		<TELL D .WHO " turn">
		<COND (<NOT <EQUAL? .WHO ,HUMANOIDS ,BOOTS>>
		       <TELL "s">)>
		<TELL " to look at you.">)>
	 <CRLF>
	 <SETG LIT <LIT? ,HERE>>
	 <COND (<NOT <EQUAL? ,HERE ,DARK-PLACE>>
		<CRLF>
		<V-LOOK>)>
	 <SETG DARK-PLACE <>>
	 <RTRUE>>

<OBJECT MOON
	(LOC GLOBAL-OBJECTS)
	(DESC "moon")
	(FLAGS NDESCBIT)
	(SYNONYM MOON)
	(ACTION MOON-F)>

<ROUTINE MOON-F ()
	 <COND (<OR <ZERO? ,SKEWED?>
		    <FSET? ,HERE ,INDOORSBIT>>
		<YOU-CANT-SEE>
		<TELL "the moon right now." CR>
		<RFATAL>)
	       (<VERB? LOOK-ON EXAMINE>
		<SAY-THE ,MOON>
		<COND (,ECLIPSE?
		       <TELL " has disappeared!" CR>
		       <RFATAL>)>
		<TELL "'s cold light makes you shiver." CR>
		<RTRUE>)
	       (T
		<YOU-DONT-NEED ,MOON>
		<RFATAL>)>>

<OBJECT BOOK
	(LOC PROTAGONIST)
	(DESC "storybook")
	(FLAGS TAKEBIT READBIT)
	(SYNONYM STORYBOOK BOOK STORY LEGEND)
	(ADJECTIVE STORY SLIM)
	(SIZE 1)
	(CAPACITY 0)
	(VALUE 0)
	(ACTION BOOK-F)>

<GLOBAL BOOK-PAGE 0>

<GLOBAL PAGES <PTABLE
	       
"  \"A Moral History, in Verse,|
   of the Magick Dream-Stone|
   recently unearthed by the|
    Society of Thaumaturgic|
 Archaelogy, commonly known as |
          WISHBRINGER|
 including a substantial body of|
hitherto unpublished discoveries|
regarding the mystick Properties|
       of said Artifact.\"|"
	 
"\"CHAPTER THE FIRST|
|
(Of Morning-Star's birth and great beauty, // and how she was abducted by the evil Queen Alexis.)|
|
It happened in the reign of mighty // Anatinus, King of Misty Island, // that there was born into a peasant home // a daughter, blessed with rare and perfect Beauty. // Morning-Star they named her; and the legend // of her beauty spread through all the kingdom, // even to the court of Anatinus.|
|
There beside the throne sat Queen Alexis, // heavy-hearted. For her newborn daughter, // cursed by fate and prophecy, was sightless. // Loth the Queen to look upon her blind child's // face! And how the baby Morning-Star, // more beautiful and perfect, made her jealous!\"|"

"\"Envy breedeth Evil: Queen Alexis // caused the simple peasant home of Morning-Star // to burn. The sleeping family perished, // all but Morning-Star, who, being rescued // by the Queen's design, became her daughter, // sight restored by Prayer.|
|
(The one true Princess, // left behind to fill the vacant cradle, // perished too, and never saw her mother.)\"|"

"\"CHAPTER THE SECOND|
|
(Of Morning-Star's coming of age, // and of the many knights who sought her fair hand // in Marriage.)|
|
The years were kind to Morning-Star. Her beauty // blossomed like the fragrant water-lily // into full, abundant maidenhood. // Anon befell here ten-and-seventh birthday.|
|
Anatinus made it known that whosoever // might desire to win the hand of Morning-Star // should now come forth to claim it. // To prove his worth, the groom must first by needs // fulfill a Love-Quest, of the Queen's own choosing, // according to the custom of the kingdom.|
|
Many were the eager knights who journeyed // to the royal palace, hoping there to // win the love of Princess Morning-Star. // Alexis, dark with envy, watched the lusty // swains descend like vultures 'round her daughter, // and vowed in secret not to let them have her.|
|
From the knights assembled, six were chosen, // and stood before the heartless Queen for testing.\"|"

"\"CHAPTER THE THIRD|
|
(Of the impossible Love-Quests devised by // the crafty Queen Alexis, // and how the six knights fared by them.)|
|
One brave knight, a lad but one-and-twenty, // was sent across the sea to beg Lord Nimbus, // God of RAIN, to quench the thirsting // Fields of Frotzen. But the God, not sympathetic, // smote his vessel with a bolt of lightning.|
|
The second knight, a weapons-bearer, strong // of limb and nimble, scaled the mountain peak of // Matter-Horn, to seek ADVICE from spirits. // The hopes of Princess Morning-Star fell with him.|
|
A third knight ventured forth to try the fabled // Wings of Icarus, and learn the secret // method of their FLIGHT, to please Alexis. // But alas! The joyful knight, whilst soaring // home to claim the Princess, flew into // the open maw of Thermofax, a Dragon.\"|"

"\"Alexis sent the fourth knight deep into the // Mines of Anthar, there to slay a Grue, // and drag the carcass up where all might see it. // But DARKNESS overcame the hapless knight, who, // lost without a lamp, was soon Devoured.|
|
Another knight, the fifth, directed by the // Queen to steal the Cocoa-Nut of Quendor, // chanced upon a lair of hungry Implementors, // and did not FORESEE his peril.|
|
Lastly stood before the Queen a gentle // boy, no older than the Princess. Morning-Star // liked well his beardless smile, and begged her // mother not to test his LUCK too harshly. // But Alexis caused the youth to spend an // evening midst an unclean Cemetery, // from which he ne'er returned; for eldritch vapors // carried him away, and gave no reason.\"|"

"\"CHAPTER THE FOURTH|
|
(Of the Edict of Alexis, // the demise of Morning-Star, // and the discovery, many years after, // of a Magick Stone, called Wishbringer.)|
|
Queen Alexis cried, \"Is no man // in the kingdom fit to wed my daughter? // Methinks she must remain unmarried, then, // and Virgin all her days.\" So was it Written.|
|
Morning-Star hoped death might grant // her FREEDOM from the Edict of Alexis, // by her mother's timely passing. But the Reaper // (busy elsewhere with a Plague) heard not her // praying; so Alexis lived, and laughed, // and watched her daughter's beauty fade away, // and all her Wishes dwindle in her bosom.|
|
Many kingdoms after, when the reign of // Anatinus was forgotten, and the // names of Morning-Star and Queen Alexis // lost in Time, there came unto the Misty Isle // a scholar, who, amid the crumbling // tombs of monarchs, chanced upon the mortal // relic of the Princess. All was dust, // except her Heart, which, hard and shrunken // to a pebble in the grave, was shining brightly // with the stifled Wishes of her lifetime.|
|
Thus, the Magick Stone of Dreams discovered.\"|"

"\"CHAPTER THE FIFTH|
|
(Of the Seven Wishes, // and what ye must know to invoke them.)|
|
Seven is the number of the Wishes // bound into the Stone; and if ye speak a Wish, // that Wish is Spent, and lost forever. Also know, // that ye must hold the Wishing-Stone // within thy hands to wield its Magick.|
|
Look ye, then,|
upon the Seven Wishes:|
|
RAIN falls only for the bearer of the Stone // who standeth under an umbrella.|
|
ADVICE may bring wise counsel to the bearer // of the Stone who listeneth to Sea-Shells.|
|
FLIGHT shall bear the Magick-wielder swiftly // home, if ye be sitting on a Broom-Stick.|
|
DARKNESS, blacker than the Night, shall fall // across the land if Milk of Grue thou drinkest.|
|
FORESIGHT lifts the veil of Time, and shows // the Future, but prepare thy eyes with Glasses.|
|
LUCK will bring good fortune, if ye hold // a Horseshoe and the Stone in thy possession.|
|
FREEDOM spring the wielder from confinement, // but mark well that ye first hath eaten Candy.\"|"

"\"EPILOGUE|
|
Now ye know the Origins and Magick // of the Wishing-Stone. But know ye also, // bold Adventurer, that every problem // ye encounter in thy travels may be // also bested by the spell of Logick. // Exercise thy Brain, and work thy Wits! // Forget ye not that Morning-Star, a Princess, // who threw away her life in easy Wishing, // died in vain.|
|
Let her fate be thy Warning.\"|"
>>

<ROUTINE BOOK-F ()
	 <COND (<EQUAL? ,PRSO ,BOOK>
		<COND (<VERB? EXAMINE>
		       <TELL
"This slim volume is the latest issue of Festeron's \"Local History Series,\" a fundraising venture of the Historical Society. Your eyebrow rises at the title, ">
		       <COND (<EQUAL? ,HOST ,MACINTOSH>
			      <TELL "THE LEGEND OF WISHBRINGER">)
			     (T
			      <HLIGHT ,H-ITALIC>
			      <TELL "The Legend of " ,GAME>
			      <HLIGHT ,H-NORMAL>)>
		       <TELL "." CR>
		       <RTRUE>)
		      (<VERB? READ>
		       <TELL "You flip the book open ">
		       <COND (<ZERO? ,BOOK-PAGE>
			      <TELL "to its title page.">)
			     (T
			      <TELL "and continue where you left off.">)>
		       <CRLF>
		       <REPEAT ()
			  <HLIGHT ,H-MONO>
			  <TELL CR <GET ,PAGES ,BOOK-PAGE>>
			  <HLIGHT ,H-NORMAL>
			  <CRLF>
                          <COND (<IGRTR? BOOK-PAGE 8>
				 <SETG BOOK-PAGE 0>
				 <TELL 
"As you slowly close the little book, you notice the words ">
				 <COND (<EQUAL? ,HOST ,MACINTOSH>
					<TELL
"MUTATO NOMINE DE TE FABULA NARRATUR">)
				       (T
					<HLIGHT ,H-ITALIC>
					<TELL
"mutato nomine de te fabula narratur">
					<HLIGHT ,H-NORMAL>)>
				<TELL
" inscribed upon the back cover." CR>
				<RTRUE>)>
	 		  <TELL "Do you want to keep reading?">
	 		  <COND (<NOT <YES?>>
				 <TELL CR 
"You thoughtfully set the book aside." CR>
				 <RTRUE>)>>)
		      (<VERB? OPEN>
		       <TELL
"You open the book, flip idly through the pages and snap it shut again." CR>
		       <RTRUE>)
		      (<VERB? CLOSE>
		       <TELL "It's already closed." CR>
		       <RTRUE>)
		      (<HURT? ,BOOK>
		       <TELL 
"Only a heartless wretch would spoil this lovely little book." CR>
		       <RTRUE>)
		      (T
		       <RFALSE>)>)
	       (T
		<RFALSE>)>>
