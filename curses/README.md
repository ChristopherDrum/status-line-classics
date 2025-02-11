## About "Curses" for Status Line
A difficult project to reformat for a small screen, especially due to the extensive use of very lengthy quote blocks (like we seen in Trinity, for example).

### In-game status line formatting
Curses takes a slightly rare approach to the status line by keeping it at 2 lines throughout the game. A lot of information is displayed, including location, timeframe-specific location info, the precise date, the score and the number of turns. Some very light trimming of things (limit month display to 3 characters) helped a lot. As well, current score and number of moves were combined into Infocom-style <score>/<move_count> truncated format.

### Quote blocks
I had two options here: remove the quotes that are too long, or reformat every quote to fit (barely!) onto screen. I opted for reformatting, as it is important to me to not alter anything editorially/content in these games. I believe I did justice to the formatting to preserve poem stanza/line breaks and authorial credits.

### Rosetta stone
This was the trickiest puzzle to adapt, because it truly did rely on having a wider screen to display left-right puzzle information: cryptic symbols on the left aligned with translation symbols on the right, line by line.

Infocom have 19 lines of vertical space to work with and with a huge amount of luck the rosetta stone is 8 lines tall. I realized this meant I could split the stone in half and display left and right vertically, with left-aligned text, right-aligned text, and part identifiers. This put me at 18 display lines, which fit perfectly into one screen of information. I got very lucky.

Curses was written by Graham Nelson between 1993 and 1995 in versions
of Inform between 1 and 6, a simple C-like programming language for
interactive fiction. That language was the ancestor of today's Inform 7,
but it's a very different experience to read (or to write). For more on
that early language, see:

https://www.inform-fiction.org/manual/download_dm4.html

The original source code has been lost.  According to
https://www.filfre.net/2019/11/new-tricks-for-an-old-z-machine-part-2-hacking-deeper-or-follies-of-graham-nelsons-youth/,
in Graham's words:

        To my great regret, the source code for Curses is now lost. It
        was for a while on a disk promisingly labelled “Curses source
        code”, but that disk is unreadable, and not for want of
        trying. Somewhere in my many changes of address and computer,
        I lost the necessary tech, or damaged it. (And Jigsaw too,
        alas.) It wouldn’t be hard to resurrect something, by working
        from a disassembly of the story file: there’s actually a
        tool to turn story files into Inform 6 out there somewhere. I
        occasionally think of asking if anyone would like to do that,
        and perhaps produce a faithful Inform 7 implementation.

This is a fairly faithful attempt to recreate Curses by decompiling
the original byte code, and then recreating it in the latest version of
Inform 6 (with the most recent Inform library). It is divided
into each public release, from the original release 7, announced on
rec.arts.int-fiction in the Spring of 1993, until the final, far larger
release 16 in 1995.
