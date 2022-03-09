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

Other games do interesting layouts using screen 1 (the "upper" screen, with the status bar) for similar signage (the "quote boxes" in Trinity). For example, Trinity does check for a narrow screen and disallows playing, however the internal calculations for displaying unusual layouts are not hard-coded to any set values. Trinity properly evaluates a screen mid-point based on the screen size the interpreter reports. In-game signage does include hard-coded spacing which assumes a wide screen, but again the layout engine itself doesn't care about that. It will do its best to center a sign (for example) regardless. After re-spacing the in-game text, Trinity's layout engine appears to work as expected, even on a small screen.

**Not so with *Bureaucracy*!**

Bureaucracy makes a huge number of grand assumptions about screen width in characters, hard-codes in sizing values, uses fixed strings of 40 spaces (rather than its own <PRINT-SPACES> routine), and so on. Additionally, some very complex code occurs in `mumble.zil` which drives the endgame PRINT puzzle on the Boysenberry. That particular code is very fragile and needs a particular arrangement of in-game variables like WIDTH, HEIGHT, COMPUTER-WIDTH, COMPUTER-HEIGHT, COMPUTER-REAL-WIDTH, and COMPUTER-REAL-HEIGHT, whose interplay remains a bit of a mystery to me even now.

For the current release of Bureaucracy for Status Line I have tried to identify all of the values that need adjustment to make this game work on a 32-character wide screen. These values should also work for a 40-character screen (the C64, for example) but may not look quite as pixel-perfect. It is going to take quite a bit of effort to generalize these changes into a universal format that functions across all devices of any given width/height. The PRINT puzzle may yet exclude certain classes of device (GameBoy, for example?)

## About the r160 Source Code
  
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
