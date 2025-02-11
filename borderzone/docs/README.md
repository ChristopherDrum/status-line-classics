# Border Zone

## About "Border Zone" for Status Line
This is the game that pushed me to finally implement timed input support into Status Line 3. I had considered skipping this "feature" but I couldn't let this game defeat my resolve.

There are a few puzzle-important fixes that I needed to make to support the Pico-8's small screen.

###Chapter 2 status bar puzzles
In Border Zone chapter 2, there are interesting (if perhaps not so intuitive) puzzles involved watching guards and searchlights. The information for updating the player with the real-time status of these elements is portrayed as character-based graphics in the expanded status bar.

So, clearly the positioning of elements in the status bar for guard movement and such must be seen at all times and must also match the timing of guard position/orientation with its relative character position within the status bar. This required a little bit of tricky math adjustment (which I'm not 100% convinced I got right) to ensure the guards movements coordinated properly.

###Chapter 3 apartment directory
To find the sniper nest, an apartment directory is consulted with empty positions representing potential locations. The layout of the directory is important to spatial understanding of which locations are located relative to other locations in the building. I found that this was actually quite a simple thing to adjust for the 32-character-wide screen, because the names are just pulled from a random list and have nothing to do with anything. They're not real vocabulary words.

So, all I had to do was just limit the names to 6 characters instead of 9 and everything fit and formatted (with a little extra personal touch) just fine. The entire directory can be viewed and referenced in one screen.

## The Game

Border Zone is a 1987 interactive fiction game written by Marc Blank and published by Infocom.

The following sources provide further information on Border Zone:

* [Wikipedia](https://en.wikipedia.org/wiki/Border_Zone_(video_game))
* [The Digital Antiquarian](https://www.filfre.net/2015/11/border-zone/)
* [The Interactive Fiction Database](https://ifdb.tads.org/viewgame?id=7epwz167lgruvm0u)
* [The Infocom Gallery](https://gallery.guetech.org/borderzone/borderzone.html)

## Resources

* [Border Zone on The Obsessively Complete Infocom Catalog](https://eblong.com/infocom/#borderzone)
* [Border Zone on Historical Source (GitHub)](https://github.com/historicalsource/borderzone)
* [Infocom Fact Sheet](http://pdd.if-legends.org/infocom/fact-sheet.txt)

## Version History

| Release | Serial | Type | Story File                   | Obsessive Sources       | Historical Sources |
| -------:|:------:|:----:|:----------------------------:|:-----------------------:|:------------------:|
|       9 | 871008 |  PUB |   [borderzone-r9-s871008.z5] |     [borderzone-r9.zip] |       [revision 9] |
|       - |      - |  WIP |                            - | [borderzone-rlater.zip] |   [final revision] |

[borderzone-r9-s871008.z5]: https://eblong.com/infocom/gamefiles/borderzone-r9-s871008.z5
[borderzone-r9.zip]: https://eblong.com/infocom/sources/borderzone-r9.zip
[revision 9]: https://github.com/historicalsource/borderzone/tree/ecea3862ce7343f8657d0622fd2c90b1fcabc26e

[borderzone-rlater.zip]: https://eblong.com/infocom/sources/borderzone-rlater.zip
[final revision]: https://github.com/historicalsource/borderzone/tree/5f76303d575cf4917ee544c5ba5c57cafcb48879

## Future Development

Version 9/871008 has been selected as the starting point for future development.

Compilation issues are recorded [here](https://github.com/the-infocom-files/borderzone/issues/2).
