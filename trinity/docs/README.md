# Trinity

## About "Trinity" for Status Line

There really isn't much to say about adapting Trinity for the small screen. The game does an initial check at startup for the interpreter's supported screen width and stops the game if the width is too narrow. This, to me, was an odd choice because the game is almost entirely fine without that check.

The only matters of concern were
1. Overlay quote boxes that pop up at certain events
2. Some status line locations can be too long to fit without cropping, in the event of a special player state like "(in the perambulator)" appended to a long location name. In that particular case, "(in the pram)" proved to be an effective truncation. But, like Nord and AMFV, a more generalized solution of "super terse descriptions" for use on small screens may be useful.

The status line was already doing appropriate work to center location names on screen. However, perhaps due to the hard-coded line breaks, the quotation boxes do not handle themselves so flexibly, and instead hard-code spacing values that assume a wider screen. Longer quotations are definitely a challenge to fit on the small screen. I have opted to format them and preserve the gameplay element precisely.

There are a few other potential ways to handle this:
1. Only display quotations that fit on the interpreter's screen
2. Supply multiple versions of each quotation, with line breaks unique to each version. For example, "original," "small," and "tiny," screen variations, perhaps? The inclusion of extra, redundant text risks pushing the final build size over the 256K limit, however.
3. Provide an alternate presentation style for the quotations on small screens. Perhaps they could be shown full-screen, rather than as a floating overlay, with a "hit any key to continue" prompt? Perhaps they could be presented in-line with the main body of the game text, with some special formatting to make it stand out?

## The Game

Trinity is a 1986 interactive fiction game written by Brian Moriarty and published by Infocom.

The following sources provide further information on Trinity:

* [Wikipedia](https://en.wikipedia.org/wiki/Trinity_(video_game))
* [The Digital Antiquarian](https://www.filfre.net/2015/01/trinity/)
* [The Interactive Fiction Database](https://ifdb.tads.org/viewgame?id=j18kjz80hxjtyayw)
* [The Infocom Gallery](http://infocom.elsewhere.org/gallery/trinity/trinity.html)
* [IFWiki](http://ifwiki.org/index.php/Trinity)

## Resources

* [Trinity on The Obsessively Complete Infocom Catalog](https://eblong.com/infocom/#trinity)
* [Trinity on Historical Source (GitHub)](https://github.com/historicalsource/trinity)
* [Infocom Fact Sheet](http://pdd.if-legends.org/infocom/fact-sheet.txt)

## Version History

| Release | Serial | Type | Story File                    | Obsessive Sources | Historical Sources |
| -------:|:------:|:----:|:-----------------------------:|:-----------------:|:------------------:|
|       1 | 851202 |  DEV | [trinity-alpha-r1-s851202.z4] |                 - |                  - |
|       1 | 860221 |  DEV |  [trinity-beta-r1-s860221.z4] |                 - |                  - |
|      14 | 860313 |  DEV | [trinity-beta-r14-s860313.z4] |                 - |                  - |
|      11 | 860509 |  PUB |      [trinity-r11-s860509.z4] |                 - |                  - |
|      12 | 860926 |  PUB |      [trinity-r12-s860926.z4] | [trinity-r12.zip] |      [revision 12] |
|      15 | 870628 |  FIN |      [trinity-r15-s870628.z4] | [trinity-r15.zip] |   [final revision] |

[trinity-alpha-r1-s851202.z4]: https://eblong.com/infocom/gamefiles/trinity-alpha-r1-s851202.z4

[trinity-beta-r1-s860221.z4]: https://eblong.com/infocom/gamefiles/trinity-beta-r1-s860221.z4

[trinity-beta-r14-s860313.z4]: https://eblong.com/infocom/gamefiles/trinity-beta-r14-s860313.z4

[trinity-r11-s860509.z4]: https://eblong.com/infocom/gamefiles/trinity-r11-s860509.z4

[trinity-r12-s860926.z4]: https://eblong.com/infocom/gamefiles/trinity-r12-s860926.z4
[trinity-r12.zip]: https://eblong.com/infocom/sources/trinity-r12.zip
[revision 12]: https://github.com/historicalsource/trinity/tree/54d8efc54632853305255e083769d1245ccccc94

[trinity-r15-s870628.z4]: https://eblong.com/infocom/gamefiles/trinity-r15-s870628.z4
[trinity-r15.zip]: https://eblong.com/infocom/sources/trinity-r15.zip
[final revision]: https://github.com/historicalsource/trinity/tree/c38d77a11a9521ac37cc79ddabbfc128205ba82b

## Future Development

Version 15/870628 has been selected as the starting point for future development.

Compilation issues are recorded [here](https://github.com/the-infocom-files/trinity/issues/2).
