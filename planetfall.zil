"PLANETFALL for
			       PLANETFALL
	  (c) COPYRIGHT 1983, 1988 INFOCOM INC. ALL RIGHTS RESERVED"

<PRINC "*** S3: Planetfall ***">

ON!-INITIAL
OFF!-INITIAL	;"makes debugging possible -- pdl"

<VERSION XZIP>
<SETG PLUS-MODE T>
<FUNNY-GLOBALS? T>
;<SETG NEW-VOC? T>
<FREQUENT-WORDS?>
<SET REDEFINE T>

<DIRECTIONS ;"Do not change the order of the first 8 without consulting MARC!"
 	    NORTH NE EAST SE SOUTH SW WEST NW UP DOWN IN OUT>

<INSERT-FILE "misc" T>
<INSERT-FILE "parser" T>
<INSERT-FILE "syntax" T>
<INSERT-FILE "verbs" T>
<INSERT-FILE "globals" T>
<INSERT-FILE "compone" T>
<INSERT-FILE "comptwo" T>
<INSERT-FILE "hints" T>

<PROPDEF SIZE 5>
<PROPDEF CAPACITY 0>
<PROPDEF VALUE 0>