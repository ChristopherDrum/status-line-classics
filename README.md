# Status Line Classics
Classic text adventures, reformatted to look beautiful in Status Line on the Pico-8

### TL;DR
There are a handful of Infocom classics which have hard-coded formatting values which prevent them from being played on narrow screens under 40-characters wide (sometimes ven under 60-characters), even if the target machine has enough processing power to play the game. This repo alters those layout restrictions to adapt a certain class of games to run on small screens.

### But why?
I am the author of [Status Line](https://christopherdrum.itch.io/statusline), a z-machine interpreter written with/for the virtual console known as [Pico-8](https://www.lexaloffle.com/pico-8.php). The initial v1.x releases of Status Line targetted only z3 games, and due to the small opcode set were easy to adapt to the Pico-8's 128x128px (32x21 character) display. One player even called it "my favorite way to play text adventures."

As I expand Status Line's capabilities into z4 compatibility and beyond, I am forced to reckon with the hard, cold fact that some classics were created to require a minimum 40-character (or more) display. Now, a z-machine interpreter can lie and claim to have a wide display when it in fact does not. However, and this renders games "playable" with the huge caveat that some important text could be drawn off-screen. Only those "in the know" will know what is missing, but everyone else will be unable to complete the game.

In trying to come up with hacks I could install into my interpreter, I noticed strange behavior. For example, the Trinity status line would center itself properly on the Pico-8 screen, but quote boxes at certain story events would not.

Looking through the original ZIL code that is available here on GitHub (and I have forked into submodules in this repo) I came to realize that the layouts for some of Infocom's games are simply hard-coded with assumptions about screen size. Some routines will properly calculate centering based on the screen size reported by the z-machine interpreter and adjust layout margins accordingly. Other routines in the same game ignore the dimensions reported by the interpreter and hard code in wide spacing margins, or fail to wrap their own text in the "upper window" (for example).

This project goes through known Infocom classics and reformats them to look beautiful specifically in Status Line on the Pico-8. This may include switching bold fonts for inverse (to handle complex layout issues), abbreviating some long phrases, eliminating redundant text, adjusting in-game manual line breaks, and sometimes (judiciously and with authorial intent preserved as much as possible) rewording a phrase or two here and there.

### The Plan
* First, make it work in Status Line. This will allow me to identify the areas that need code adjustments for later work. So, to begin this will probably just mean swapping certain hard-coded layout values with numbers appropriate to the 32-character wide Pico-8 screen.
* Next, refactor the hard-coded values out into variables and/or calculation routines.
* Next, feed the refactored routines with dynamic values from the z-code header and verify the original experience is unaltered while providing smaller screens an equivalent play experience.
* Last, propose changes to the upstream source repos to make the originals more generically flexible to a wide range of screens.

### Things I Know Need to Be Done to the Infocom Classics
* Some status line information will need a "small screen terse" version. This will mean the removal of unneeded or redundant text. For example, in A Mind Forever Voyaging, the status bar says, "Mode: Communications Mode". Well, we don't really need to say "mode" twice. And the time says, "Time: 7:04pm" which could truncate to "7:04p" and convey the exact same info (at the expense of removing a little PRISM-y aesthetic, perhaps)
* Trinity's interstitial quotations are hard-formatted in the code itself. Not yet sure how to make that flexible to screen sizes, but for the Pico-8 I will likely start with just putting in new hard-coded line breaks to format properly for a 32-character wide screen.
* Bureaucracy's "registration form" and "computer interface" is a bit of a nightmare on a small screen. It "works" but is not such a pleasant experience. May be able to reformat this to be one form entry per-line?
* This is a small thing, but I have seen times when line breaks are introduced which, on a small screen, causes ugly orphans and widows. I may remove some of these, as they do not manifestly affect the aesthetic of the game
