# Bureaucracy

## About *Bureaucracy* for Status Line
Bureaucracy tries to do many unusual things with screen layout to simulate various in-game world objects

1. paper forms
   - registration form at the beginning of the game
   - withdrawal/deposit slips at the bank

1. signage
   - trademark info about the Boysenberry company
   - in-taxi sign
   - notice of airline closure at the airport
   - hacker billboard at Persecution Complex
4. software for the "Boysenberry" computer
   - Dork 1
   - Eclipse Predictor
   - Recipes
   - "unlabelled" cartridge
   - CH/A0S

Sometimes Infocom games do interesting layouts using screen 1 (the "upper" screen) for signage (see "quote boxes" in Trinity). Games like Nord and Bert and Trinity do a good (but not perfect) job of abstracting their layout needs to be flexible to a wide variety of screen sizes. Nord, in fact, even uses internal values that define "wide" or "narrow" screens to do its best to accomodate an interpreter's capabilities. 

**Not so with *Bureaucracy*!**

Bureaucracy makes a huge number of grand assumptions about screen width in characters, hard-codes in sizing values, uses fixed strings of 40 spaces (rather than its own <PRINT-SPACES> routine), and so on. Additionally, some very complex code occurs in `mumble.zil` which drives the endgame PRINT puzzle on the Boysenberry. That particular code is very fragile and needs a particular arrangement of in-game variables like WIDTH, HEIGHT, COMPUTER-WIDTH, COMPUTER-HEIGHT, COMPUTER-REAL-WIDTH, and COMPUTER-REAL-HEIGHT, whose interplay remains a bit of a mystery to me even now.

For the current release of Bureaucracy for Status Line I have tried to identify all of the values that need adjustment to make this game work on a 32-character wide screen. These values should also work for a 40-character screen (the C64, for example) but may not look quite as pixel-perfect. It is going to take quite a bit of effort to generalize these changes into a universal format that functions across all devices of any given width/height. The PRINT puzzle may yet exclude certain classes of device (GameBoy, for example?)

### About the r160 Source Code
   
This build of Bureaucracy branches from the only existing source code, the so-called `r160`. It should be noted that this represents a version that never shipped to customers and is *not* the "Masterpieces" edition source code. This version comes after that and appears to almost be a work-in-progress. There are quite a few bugs, and in fact the source code, as stands, does not build into a playable game.
   
### Resurrecting Bureaucracy

There are two specific issues that had to be addressed to make this source code build into a solvable game file.
1. There is a specific bug with how hyphenated text is handled, which renders the player unable to make phone calls. This makes the game unsolvable, as there is a point where the player must call a taxi service.
2. ZILF/ZAPF 0.9.0 has a subtle bug which does not handle a very specific global variable assignment case properly. This results in the very last scene crashing the game as it tries to access a non-existant global variable.
   
I am happy to report that thanks to the efforts of the ZIL/ZILF community, these issues are repaired in this repository. This means that this particular distribution of the game is the only known working build of r160 source code into a fully playable, solvable game.
  
## The Game

Bureaucracy is a 1987 interactive fiction game written by Douglas Adams and published by Infocom.

The following sources provide further information on Bureaucracy:

* [Wikipedia](https://en.wikipedia.org/wiki/Bureaucracy_(video_game))
* [The Digital Antiquarian](https://www.filfre.net/2015/08/bureaucracy/)
* [The Interactive Fiction Database](https://ifdb.tads.org/viewgame?id=zjyxds3s57pgis3x)
* [The Infocom Gallery](http://infocom.elsewhere.org/gallery/bureaucracy/bureaucracy.html)
* [IFWiki](http://www.ifwiki.org/index.php/Bureaucracy)

## Resources

* [Bureaucracy on The Obsessively Complete Infocom Catalog](https://eblong.com/infocom/#bureaucracy)
* [Bureaucracy on Historical Source (GitHub)](https://github.com/historicalsource/bureaucracy)
* [Infocom Fact Sheet](http://pdd.if-legends.org/infocom/fact-sheet.txt)

## Version History

| Release | Serial | Type | Story File                    | Obsessive Sources      | Historical Sources |
| -------:|:------:|:----:|:-----------------------------:|:----------------------:|:------------------:|
|      86 | 870212 |  PUB |  [bureaucracy-r86-s870212.z4] |                      - |                  - |
|     116 | 870602 |  PUB | [bureaucracy-r116-s870602.z4] |                      - |                  - |
|     160 | 880521 |  FIN | [bureaucracy-r160-s880521.z4] | [bureaucracy-r160.zip] |   [final revision] |

[bureaucracy-r86-s870212.z4]: https://eblong.com/infocom/gamefiles/bureaucracy-r86-s870212.z4

[bureaucracy-r116-s870602.z4]: https://eblong.com/infocom/gamefiles/bureaucracy-r116-s870602.z4

[bureaucracy-r160-s880521.z4]: https://eblong.com/infocom/gamefiles/bureaucracy-r160-s880521.z4
[bureaucracy-r160.zip]: https://eblong.com/infocom/sources/bureaucracy-r160.zip
[final revision]: https://github.com/historicalsource/bureaucracy/tree/c6e21a6a2e625ca2f2e98610886fa7ed8338cf1f

## Future Development

Version 160/880521 has been selected as the starting point for future development.

Compilation issues are recorded [here](https://github.com/the-infocom-files/bureaucracy/issues/2).
