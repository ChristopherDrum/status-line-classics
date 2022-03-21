# A Mind Forever Voyaging

## About This Modification
There are four main areas affected by these changes:
1. The "library mode" interface
2. The ink-blot psych test
3. Formatting of tables, quotations, and signs
4. Location names use a special value for the status line

### Library mode
Of the above, the "library mode" alterations represent the most significant potential change to up-stream code. Everything else is relatively straightforward, but this one required a slightly more fundamental code change in how the file system is presented and navigated.

In the original code, library mode lays out the file/folder structure into three columns with pre-defined columnar character x-positions for the cursor to print at. In this modification, I have switched behavior to only show one column at a time, with an indicator of "page x of y" when navigating a long list of files.

The basic logic for this keeps all navigation code as-is but targets the display code specifically. I check for the column of the currently selected item in the list (which comes from a fixed list of values, native to the original code). The x-position of the cursor comes from a table, and if the x-position changes from previous selection to the new selection, this triggers a redraw of the file list.

Then, when drawing the file list we use a fixed x-position for the cursor, only incrementing the y-value. As the file list is processed, we draw the file name if and only if its columnar inset matches the inset of the currently selected item. In this way we can apply only the lightest touch to the code but gain pagination for the file navigation.

### Status line truncations
To prevent the name of a location from over-printing the date field in the status line it is necessary to keep a "status line specific" location name for printing there. We need to keep the original `DESC` intact as it is used in the main body of the gameplay text at various times. This suggests a possible unified approach to all modifications for all Infocom games, that of a "super terse description" for use in areas where screen real-estate is tight.

## The Game

A Mind Forever Voyaging is a 1985 interactive fiction game written by Steve Meretzky and published by Infocom.

The following sources provide further information on A Mind Forever Voyaging:

* [Wikipedia](https://en.wikipedia.org/wiki/A_Mind_Forever_Voyaging)
* [The Digital Antiquarian](https://www.filfre.net/2014/04/a-mind-forever-voyaging-part-1-steve-meretzkys-interiors/)
* [The Interactive Fiction Database](https://ifdb.tads.org/viewgame?id=4h62dvooeg9ajtfa)
* [The Infocom Gallery](http://infocom.elsewhere.org/gallery/amfv/amfv.html)
* [IFWiki](http://www.ifwiki.org/index.php/A_Mind_Forever_Voyaging)
* [The Infocom Cabinet: A Mind Forever Voyaging](https://archive.org/details/InfocomCabinetAMindForeverVoyaging)

## Resources

* [A Mind Forever Voyaging on The Obsessively Complete Infocom Catalog](https://eblong.com/infocom/#amfv)
* [A Mind Forever Voyaging on Historical Source (GitHub)](https://github.com/historicalsource/amfv)
* [Infocom Fact Sheet](http://pdd.if-legends.org/infocom/fact-sheet.txt)

## Version History

| Release | Serial | Type | Story File                      | Obsessive Sources | Historical Sources |
| -------:|:------:|:----:|:-------------------------------:|:-----------------:|:------------------:|
|       1 | 841226 |  DEV |      [amfv-first-r1-s841226.z3] |                 - |                  - |
|      47 | 850313 |  DEV |  [amfv-prealpha-r47-s850313.z4] |                 - |                  - |
|      84 | 850516 |  DEV | [amfv-fullalpha-r84-s850516.z4] |                 - |                  - |
|     131 | 850628 |  DEV |    [amfv-gamma-r131-s850628.z4] |                 - |                  - |
|      77 | 850814 |  PUB |           [amfv-r77-s850814.z4] |    [amfv-r77.zip] |      [revision 77] |
|      79 | 851122 |  PUB |           [amfv-r79-s851122.z4] |    [amfv-r79.zip] |   [final revision] |
|       - |      - |  WIP |                               - | [amfv-rlater.zip] |                  - |

[amfv-first-r1-s841226.z3]: https://eblong.com/infocom/gamefiles/amfv-first-r1-s841226.z3

[amfv-prealpha-r47-s850313.z4]: https://eblong.com/infocom/gamefiles/amfv-prealpha-r47-s850313.z4

[amfv-fullalpha-r84-s850516.z4]: https://eblong.com/infocom/gamefiles/amfv-fullalpha-r84-s850516.z4

[amfv-gamma-r131-s850628.z4]: https://eblong.com/infocom/gamefiles/amfv-gamma-r131-s850628.z4

[amfv-r77-s850814.z4]: https://eblong.com/infocom/gamefiles/amfv-r77-s850814.z4
[amfv-r77.zip]: https://eblong.com/infocom/sources/amfv-r77.zip
[revision 77]: https://github.com/historicalsource/amfv/tree/c7d6edc25a72387beb17b56a2775ffed2d4da027

[amfv-r79-s851122.z4]: https://eblong.com/infocom/gamefiles/amfv-r79-s851122.z4
[amfv-r79.zip]: https://eblong.com/infocom/sources/amfv-r79.zip
[final revision]: https://github.com/historicalsource/amfv/tree/6d740ac4924ae7d90c2ccba6bd018da4126f74d1

[amfv-rlater.zip]: https://eblong.com/infocom/sources/amfv-rlater.zip

## Future Development

Version 79/851122 has been selected as the starting point for future development.

Compilation issues are recorded [here](https://github.com/the-infocom-files/amfv/issues/2).
