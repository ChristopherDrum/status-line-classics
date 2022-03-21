# Nord and Bert Couldn't Make Head or Tail of it

## About "Nord and Bert" for Status Line

Nord and Bert proved to be a relatively easy game to adapt to the small screen. It mostly worked "as-is" with a few small formatting elements here and there. In fact, I was actually quite surprised to see how much code was already devoted to adapting the status line and other elements for a variety of screen sizes. That said, it still isn't quite a flexible as I needed it to be.

The biggest change was to the Invisiclues section. Like AMFV and the need to introduce "descriptions" for locations that are formatted exclusively for display in the status line, so too does Nord's Invisiclues need similar treatment. The columnar layout, somewhat equivalent to "library mode" in AMFV, proved relatively easy to adapt. Because the names of the clues are short and meant to be more mnenomic aids than actual in-game prose, we can take a few more liberties to fit it all. 

In this case, Nord assumes a 21-line screen and wants to display 2 columns of clues. This works out exactly right for Pico-8's screen, and simply adjusting the cursor x-position for the second column mostly got things work without any additional work. Introducing a kind of "short description" for invisiclue display only took care of the issue of left-hand column text overlaping the right-hand column. Simply enforce a maximum description length for this special value and display it if it exists as a property on the room object, otherwise default to the normal `DESC` property.

## The Game

Nord and Bert Couldn't Make Head or Tail of it is a 1987 interactive fiction game written by Jeff O'Neill and published by Infocom.

The following sources provide further information on Nord and Bert Couldn't Make Head or Tail of it:

* [Wikipedia](https://en.wikipedia.org/wiki/Nord_and_Bert_Couldn%27t_Make_Head_or_Tail_of_It)
* [The Digital Antiquarian](https://www.filfre.net/2015/10/nord-and-bert/)
* [The Interactive Fiction Database](https://ifdb.tads.org/viewgame?id=zxb8pq3qrkvdob4i)
* [The Infocom Gallery](http://infocom.elsewhere.org/gallery/nordbert/nordbert.html)
* [IFWiki](http://www.ifwiki.org/index.php/Nord_and_Bert_Couldn%27t_Make_Head_or_Tail_of_It)

## Resources

* [Nord and Bert Couldn't Make Head or Tail of it on The Obsessively Complete Infocom Catalog](https://eblong.com/infocom/#nordandbert)
* [Nord and Bert Couldn't Make Head or Tail of it on Historical Source (GitHub)](https://github.com/historicalsource/nordandbert)
* [Infocom Fact Sheet](http://pdd.if-legends.org/infocom/fact-sheet.txt)

## Version History

| Release | Serial | Type | Story File                   | Obsessive Sources     | Historical Sources |
| -------:|:------:|:----:|:----------------------------:|:---------------------:|:------------------:|
|      19 | 870722 |  PUB | [nordandbert-r19-s870722.z4] | [nordandbert-r19.zip] |      [revision 19] |
|      20 | 870722 |  FIN | [nordandbert-r20-s870722.z4] | [nordandbert-r20.zip] |   [final revision] |

[nordandbert-r19-s870722.z4]: https://eblong.com/infocom/gamefiles/nordandbert-r19-s870722.z4
[nordandbert-r19.zip]: https://eblong.com/infocom/sources/nordandbert-r19.zip
[revision 19]: https://github.com/historicalsource/nordandbert/tree/1f51010abafdee69aa7b9292e20e4a7ae75ce82e

[nordandbert-r20-s870722.z4]: https://eblong.com/infocom/gamefiles/nordandbert-r20-s870722.z4
[nordandbert-r20.zip]: https://eblong.com/infocom/sources/nordandbert-r20.zip
[final revision]: https://github.com/historicalsource/nordandbert/tree/428d629597807c3d8f48c6c820580f49a9de6c93

## Future Development

Version 19/870722 has been selected as the starting point for future development.

Compilation issues are recorded [here](https://github.com/the-infocom-files/nordandbert/issues/2).
