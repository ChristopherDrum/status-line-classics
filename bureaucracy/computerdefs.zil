"COMPUTERDEFS for BUREAUCRACY: Copyright (C)1987 Infocom, Inc.
 All rights reserved."

<ZSECTION "COMPUTERDEFS">

<FILE-FLAGS MDL-ZIL?>

<INCLUDE "FORMDEFS">

<USE "NEWSTRUC">

<SET-DEFSTRUCT-FILE-DEFAULTS ('NTH ZGET) ('PUT ZPUT) ('START-OFFSET 0)
			     'NODECL>

<DEFINE-GLOBALS COMPUTER-GLOBALS
 (LAST-LINE-USED:FIX BYTE 0)
 (TIMES-THROUGH-LOOP:FIX BYTE 0)
 (FILES-ON-SCREEN? BYTE <>)
 (TELECOM? BYTE <>)
 (EXITED-ALREADY? BYTE <>)
 (COMPUTER-DEAD? BYTE <>)
 (COMP-X:FIX BYTE 0)
 (COMP-Y:FIX BYTE 0)
 (CURRENT-TARGET-NAME <>)	; "String for interrupt messages"
 (REAL-TARGET-NAME <>)		; "LTABLE for looking stuff up in directory"
 (REMAINING-TARGET-TURNS:FIX BYTE 0) ; "Turns left until this one's done"
 (LINES-TO-NEXT-TARGET:FIX BYTE 0) ;"Lines to output before select next target"
 (TERMINATE-CURRENT:FIX BYTE 0)	; "Lines to output before terminating this one"
 (COMMANDS-SINCE-START:FIX BYTE 0); "Command lines read since target started"
 (DIE-ON-NEXT-COMMAND BYTE <>)	; "To avoid hair of faking non-local return"
 (WILL-WIN? BYTE <>)		; "True if killed computer"
 (FERROR-ACTIVE? BYTE <>)>

<MSETG COMPUTER-REAL-WIDTH 32> ; "literal character width of the pico-8"
<MSETG COMPUTER-WIDTH 28> ; "I think this is the internal width of the computer 'screen' in the lower portion of the computer layout: MUST be a minimum of 27 or it won't compile; and no more than 28 or it will cause a strange crash in the computer when putting in the unlabelled cartridge ???"
<MSETG COMPUTER-HEIGHT 17> ; "This is the actual number of lines drawn to represent the computer'screen'?, but I don't understand its relationshipo to COMPUTER-REAL-HEIGHT below"
<MSETG COMPUTER-REAL-HEIGHT 20> ; "this seems to be the zero-indexed last line of the computer terminal emulator"
<MSETG COMPUTER-FIRST-LINE 3>
<MSETG COMPUTER-COMMAND-LINE 0>
<MSETG COMPUTER-ERROR-LINE 1>

<MSETG DIR-ENTRY-INVISIBLE 1>

<DEFSTRUCT DIR-ENTRY (TABLE ('NTH GETB) ('PUT PUTB))
	   (DIR-ROUTINE ANY 'NTH ZGET 'PUT ZPUT 'NONE)	; "Routine to call"
	   (DIR-BITS FIX 'NTH ZGET 'PUT ZPUT 0)
	   (DIR-HELP ANY 'NTH ZGET 'PUT ZPUT <>)	; "Brief help msg"
	   (DIR-DUMMY-1 ANY 'NONE)
	   (DIR-DUMMY-2 ANY 'NONE)
	   (DIR-DUMMY-3 ANY 'NONE)
	   (DIR-NAMLEN FIX)
	   (DIR-DATA ANY 'NONE)>

<MSETG DIR-DATA-OFFSET 7>

<MSETG DIR-HEADER-LEN 6>

; "Build a directory entry"
<DEFINE20 DIR-ENTRY (ROUTINE NAME:STRING HELP:ANY "TUPLE" BITS "AUX" DE (BW 0)
		     (PURE? T))
  <COND (<AND <NOT <EMPTY? .BITS>>
	      <==? <1 .BITS> IMPURE>>
	 <SET PURE? <>>
	 <SET BITS <REST .BITS>>)>
  <SET DE <CHTYPE <EVAL <FORM ITABLE <+ 1 ,DIR-HEADER-LEN <LENGTH .NAME>>
			      <COND (.PURE?
				     (BYTE PURE))
				    (T (BYTE))>>>
		  DIR-ENTRY>>
  <MAPF <>
    <FUNCTION (BIT)
      <COND (<TYPE? .BIT FIX>)
	    (<AND <GASSIGNED? .BIT>
		  <TYPE? ,.BIT FIX>>
	     <SET BIT ,.BIT>)>
      <COND (<TYPE? .BIT FIX>
	     <SET BW <ORB .BW .BIT>>)>>
    .BITS>
  <MAKE-DIR-ENTRY 'DIR-ENTRY .DE
		  'DIR-ROUTINE .ROUTINE
		  'DIR-HELP .HELP
		  'DIR-BITS .BW
		  'DIR-NAMLEN <LENGTH .NAME>>
  <PROG ((N ,DIR-DATA-OFFSET))
    <MAPF <>
      <FUNCTION (CHR)
        <PUTB .DE .N <ASCII .CHR>>
	<SET N <+ .N 1>>>
      .NAME>>
  .DE>

<ENDSECTION>
