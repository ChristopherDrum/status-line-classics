# Status Line Classics
Classic text adventures, reformatted to look beautiful in [Status Line on the Pico-8](https://christopherdrum.itch.io/statusline)

### TL;DR
There are a handful of interactive fiction classics which have hard-coded formatting values which prevent them from being played on screens under 40-characters wide (sometimes even under 60-characters), even if the target machine has enough processing power to play the game. This repo attempts to remove those layout restrictions to adapt a certain class of games to look and play great on small screens.

### Important note regarding games in-progress
Because of the way the compiler makes a build, every revision to this game code results in game files whose save games are incompatible with one another. I currently see no way around this, as internal memory locations often change between builds. So, if an update to one of these games is published, you will not be able to continue a game in-progress from a previous game build. Please recognize this is only with regard to these specific game files and is not true of the main Status Line engine. Minor updates to Status Line proper have no effect on your save games; major updates may change the save game structure to accomodate new features.

## Regarding bug reports
Before submitting bug reports, be aware there are two categories of bugs

1. Formatting bugs in which layout and UI/UX of the game doesn't work/fit on a small screen. This includes text boxes or titles that are cut off by the narrow screen.
2. Game bugs, of which there are many. Each game's original repository has a long list of known issues, including strange responses to text, garbled text, and more.

**Formatting bugs** should be submitted to this repository.

**Gameplay bugs** should be submitted to each of the [original repositories](https://github.com/the-infocom-files) (and may actually have already been reported)

## Examples of changes

### [Curses](https://github.com/ChristopherDrum/status-line-classics/blob/main/curses/README.md#about-curses-for-status-line)
I wanted to expand beyond the Infocom canon, and saw that this classic had been rebuilt in Inform. It's use of extremely (!) long quote boxes proved a unique challenge to both preserve authorial intent (both Nelson and original quote author) while being formatted for a tiny screen. In the end, every quote box was preserved and brought over without exception.

The in-game status line and "rosetta stone" puzzle both also proved challenging to adapt and preserve Nelson's puzzle intent. I believe I've provided strong solutions to both layout challenges without compromising on his vision.

<img src="https://github.com/user-attachments/assets/ec096d59-abc9-4c19-825d-9b7afb7148ec" width="200" /><img src="https://github.com/user-attachments/assets/75db52c7-5c85-4f2f-92f9-17997eda19d2" width="200" /><img src="https://github.com/user-attachments/assets/25fb021a-90aa-45ab-82bd-9c6900cc1a98" width="200" />

### Solid Gold Releases
[Zork 1](https://github.com/ChristopherDrum/status-line-classics/tree/main/zork1/docs#about-zork-1-for-status-line), [Planetfall](https://github.com/ChristopherDrum/status-line-classics/tree/main/planetfall/docs#about-planetfall-for-status-line), [Leather Goddesses of Phobos](https://github.com/ChristopherDrum/status-line-classics/tree/main/leathergoddesses/docs#about-leather-goddesses-for-status-line), [Wishbringer](https://github.com/ChristopherDrum/status-line-classics/tree/main/wishbringer/docs#about-wishbringer-for-status-line), and [Hitchhiker's Guide](https://github.com/ChristopherDrum/status-line-classics/tree/main/hitchhiker/docs#about-hitchhikers-guide-for-status-line) were all tweaked in small ways, but most notably the Invisiclues screens were updated to fit and format to the narrow screen. This meant taking small liberties with phrasing of hint questions, to fit in the space provided without being quite as wordy as the originals. My apologies to any hard-line Infocom purists who might be offended by these truncations.

<img src="https://github.com/user-attachments/assets/bf0c3116-ce87-4d9e-9d3c-a7ee57e8f8d6" width="200"/><img src="https://github.com/user-attachments/assets/614a4cb5-dbdb-4076-9bec-27bedf443bc7" width="200"/><img src="https://github.com/user-attachments/assets/e632e67b-98b0-4384-b3f9-2eedfd27fd1e" width="200" />


### [Sherlock: The Riddle of the Crown Jewels](https://github.com/ChristopherDrum/status-line-classics/blob/main/sherlock/docs/README.md#about-sherlock-for-status-line)
In addition to the Invisiclues reformatting, various signage and quote boxes about town needed gentle nudging to fit on screen. Sherlock will run on a narrow screen, but will deny the ability to read in-world signage; this is fixed.

![status_line_3_2](https://github.com/user-attachments/assets/47b69482-54fd-498e-94e4-5db248f270d5)

### [Border Zone](https://github.com/ChristopherDrum/status-line-classics/tree/main/borderzone/docs#about-border-zone-for-status-line)
A tricky adaptation to the small screen, mostly because of the unusual status bar animations(?) that drive realtime puzzles. The player must "watch" certain events, and the status bar displays a continuously updated realtime display of the status of those events. This leads to some timed puzzles which are based on the visual information in the status bar, so I tried to be careful about adjusting anything that might disrupt that timing. I *think* I got it right, but that section of the game is kind of hard to get through as a matter of course.

### [Bureaucracy](https://github.com/ChristopherDrum/status-line-classics/tree/main/bureaucracy#about-bureaucracy-for-status-line)
There is an entire, interesting story behind getting this game to work. Here we see the "Boysenberry computer" being used mid-puzzle, as well as the start game "registration form" formatted nicely for a 32-character/21 line screen.

![bur_PRINT_puzzle](https://user-images.githubusercontent.com/320377/159106612-55df7c18-a9a4-4c5c-91e4-5074b836891e.png)
![bur_registration_form](https://user-images.githubusercontent.com/320377/159106613-f9529245-aec2-4245-b156-79bda32d6bfb.png)

### [Nord and Bert Couldn't Make Head or Tail of It](https://github.com/ChristopherDrum/status-line-classics/tree/main/nordandbert#about-nord-and-bert-for-status-line)
Only light adjustments were necessary, mostly to make sure the status line always shows *all* possible exits and that invisiclues don't get cut off.

![nord_invisiclues](https://user-images.githubusercontent.com/320377/159106614-f3d051f8-c5c7-4ae1-97e1-2fafb847334d.png)
![nord_compressed_status_line](https://user-images.githubusercontent.com/320377/159106615-490ae6af-83a1-462b-af38-ad0613a43ec6.png)

### [Trinity](https://github.com/ChristopherDrum/status-line-classics/tree/main/trinity#about-trinity-for-status-line)
The easiest to adapt, mostly consisted of making sure quote boxes are centered and display entirely, but also took a moment to remove other artificial screen-width limitations. For example, Trinity credits are viewable by `ask woman about trinity` at the start of the game. I added pagination to make it work on the small screen.

![trinity_credits](https://user-images.githubusercontent.com/320377/159106616-bc0c4c06-b5a0-462b-8ace-4ebd8899f0c4.png)
![trinity_quote](https://user-images.githubusercontent.com/320377/159106617-fca1c7b8-701d-4028-98fe-54c644495fd6.png)

### [A Mind Forever Voyaging](https://github.com/ChristopherDrum/status-line-classics/tree/main/amfv#about-a-mind-forever-voyaging-for-status-line)
About as difficult as making Bureaucracy work, this one presented unique challenges with the "library mode," a fake file browser simulation that made grand assumptions about having a wide screen. I added the ability for the file list to paginate with a page counter to indicate where in the file list the user is looking. Lots of other quotations, signage, and the ink-blot test had to be adjusted as well.

![amfv_blot_test](https://user-images.githubusercontent.com/320377/159106619-2c9b8a96-9428-476b-a3f8-852df79bdb88.png)
![amfv_library_mode](https://user-images.githubusercontent.com/320377/159106620-d8203d0c-2e4b-4b00-9e7b-fb820fa86337.png)


## But why?
I am the author of [Status Line](https://christopherdrum.itch.io/statusline), a z-machine interpreter written with/for the virtual console known as [Pico-8](https://www.lexaloffle.com/pico-8.php). The initial v1.x releases of Status Line targetted only z3 games, and due to the small feature set were easy to adapt to the Pico-8's 128x128px (32x21 character) display. One player even called it "my favorite way to play text adventures."

As I expand Status Line's capabilities into z4 compatibility and beyond, I am forced to reckon with the harsh fact that some titles were hard-coded to require a minimum 40-character (or more) display. Granted, a z-machine interpreter can "lie" and claim it supports such a screen. However, while this will trick the game into starting and playing, it can render certain games "playable" with the huge caveat that important text may be drawn off-screen. For most players this makes the games challenging to play, and not in the fun way.

To provide extra support to people who enjoy the cozy atmosphere of Status Line on the Pico-8, I endeavor to make classics (whose source code is available) to work well on a small screen. I do (when appropriate) place specific emphasis on Status Line and its capabilities/limitations. I may (judiciously and while preserving authorial intent) reword/truncate a phrase or two here and there to fit the horizontal space of the small screen. This does not alter any wording of prose, and is mostly relegated to status line information, redundant to the main textual corpus.

## Intentions
* First, make it work in Status Line. This allows me to identify areas that need code adjustments for later work. So, to begin this will probably just mean swapping certain hard-coded layout values with numbers appropriate to the 32-character wide Pico-8 screen.
* Then, refactor the above changes to be generally flexible to all screen sizes.
* Last, propose lightweight changes to the upstream source repos to introduce screen flexibility to everyone? (maybe not necessary; just use this repo I suppose)

## Build Notes
For those wanting to build from source, you will need the ZILF and ZAPF compiler tools. Add the location for the tools to your PATH environment variable.
https://foss.heptapod.net/zilf/zilf/

I've added a Windows .bat file which can be run quite simply from this project's top-level root directory.
```
./build <game>
```
This will generate a build/ folder at the top level. Inside that will be <game>.z#, ready to play in the interpreter of your choice.
