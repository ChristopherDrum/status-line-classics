# Status Line Classics
Classic text adventures, reformatted to look beautiful in Status Line on the Pico-8

### TL;DR
There are a handful of Infocom classics which have hard-coded formatting values which prevent them from being played on narrow screens under 40-characters wide (sometimes ven under 60-characters), even if the target machine has enough processing power to play the game. This repo alters those layout restrictions to adapt a certain class of games to run on small screens.

## Some examples

### Bureaucracy
There is an entire, interesting story behind getting this game to work. Here we see the "computer" being used as well as the start game "registration form" formatted nicely for a 32-character/21 line screen.

![bur_PRINT_puzzle](https://user-images.githubusercontent.com/320377/159106612-55df7c18-a9a4-4c5c-91e4-5074b836891e.png)
![bur_registration_form](https://user-images.githubusercontent.com/320377/159106613-f9529245-aec2-4245-b156-79bda32d6bfb.png)

### Nord and Bert Couldn't Make Head or Tail of It
Only light adjustments were necessary, mostly to make sure the status line always shows *all* possible exits and that invisiclues don't get cut off.

![nord_invisiclues](https://user-images.githubusercontent.com/320377/159106614-f3d051f8-c5c7-4ae1-97e1-2fafb847334d.png)
![nord_compressed_status_line](https://user-images.githubusercontent.com/320377/159106615-490ae6af-83a1-462b-af38-ad0613a43ec6.png)

### Trinity
The easiest to adapt, mostly consisted of making sure quote boxes are centered and display entirely, but also took a moment to remove other artificial screen-width limitations. For example, Trinity credits are viewable by `ask woman about trinity` at the start of the game. I added pagination to make it work on the small screen.

![trinity_credits](https://user-images.githubusercontent.com/320377/159106616-bc0c4c06-b5a0-462b-8ace-4ebd8899f0c4.png)
![trinity_quote](https://user-images.githubusercontent.com/320377/159106617-fca1c7b8-701d-4028-98fe-54c644495fd6.png)

### A Mind Forever Voyaging
About as difficult as making Bureaucracy work, this one presented unique challenges with the "library mode," a fake file browser simulation that made grand assumptions about having a wide screen. I added the ability for the file list to paginate with a page counter to indicate where in the file list the user is looking. Lots of other quotations, signage, and the ink-blot test had to be adjusted as well.

![amfv_blot_test](https://user-images.githubusercontent.com/320377/159106619-2c9b8a96-9428-476b-a3f8-852df79bdb88.png)
![amfv_library_mode](https://user-images.githubusercontent.com/320377/159106620-d8203d0c-2e4b-4b00-9e7b-fb820fa86337.png)


## But why?
I am the author of [Status Line](https://christopherdrum.itch.io/statusline), a z-machine interpreter written with/for the virtual console known as [Pico-8](https://www.lexaloffle.com/pico-8.php). The initial v1.x releases of Status Line targetted only z3 games, and due to the small feature set were easy to adapt to the Pico-8's 128x128px (32x21 character) display. One player even called it "my favorite way to play text adventures."

As I expand Status Line's capabilities into z4 compatibility and beyond, I am forced to reckon with the cold, hard fact that some titles were hard-coded to require a minimum 40-character (or more) display. A z-machine interpreter can "lie" and claim it supports such a screen. However, while this will trick the game into playing, this renders certain games "playable" with the huge caveat that important text may be drawn off-screen. For most players this makes the games challenging to play, and not in the fun way.

So, I decided to suck it up and do the hard work to make those games work well on a small screen, with specific emphasis on Status Line and its capabilities/limitations. I do sometimes (judiciously and with authorial intent preserved as much as possible) reword/truncate a phrase or two here and there to fit the horizontal space of the small screen. This does not alter any wording of prose, and is mostly relegated to status line information, redundant to the main textual corpus.

## The Plan
* First, make it work in Status Line. This will allow me to identify the areas that need code adjustments for later work. So, to begin this will probably just mean swapping certain hard-coded layout values with numbers appropriate to the 32-character wide Pico-8 screen.
* Next, refactor the hard-coded values out into variables and/or calculation routines.
* Next, feed the refactored routines with dynamic values from the z-code header and verify the original experience is unaltered while providing smaller screens an equivalent play experience.
* Last, propose changes to the upstream source repos to make the originals more generically flexible to a wide range of screens.

### Things I Know Need to Be Done to the Infocom Classics
* Some status line information will need a "small screen terse" version. This will mean the removal of unneeded or redundant text. For example, in A Mind Forever Voyaging, the status bar says, "Mode: Communications Mode". Well, we don't really need to say "mode" twice. And the time says, "Time: 7:04pm" which could truncate to "7:04p" and convey the exact same info (at the expense of removing a little PRISM-y aesthetic, perhaps)
* Trinity's interstitial quotations are hard-formatted in the code itself. Not yet sure how to make that flexible to screen sizes, but for the Pico-8 I will likely start with just putting in new hard-coded line breaks to format properly for a 32-character wide screen.
* Bureaucracy's "registration form" and "computer interface" is a bit of a nightmare on a small screen. It "works" but is not such a pleasant experience. May be able to reformat this to be one form entry per-line?
* This is a small thing, but I have seen times when line breaks are introduced which, on a small screen, causes ugly orphans and widows. I may remove some of these, as they do not manifestly affect the aesthetic of the game

## Build Notes
I'm using ZILF v0.9.0. Inside each game folder, I have a `\build` folder that is excluded in the `.gitignore` file. From the root folder for a game I run this composite command (Bureaucracy shown; swap for the game you want to build)
```
del *.zap *.xzap \build\bureaucracy.z4 && zilf .\build\bureaucracy.zil && zapf -ab .\build\bureaucracy.zap > .\build\bureaucracy_freq.xzap & del .\build\bureaucracy_freq.zap && zapf .\build\bureaucracy.zap
```
