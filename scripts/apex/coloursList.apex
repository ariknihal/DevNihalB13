List<String> colorList = new List<String>();
colorList.add('white');
colorList.add('black');
colorList.add('blue');
colorList.add('yellow');
colorList.add('red');
system.debug(colorList);
system.debug(colorList.size());
system.debug(colorList.contains('red'));
string colorLast = colorList.get(colorList.size()-1);
system.debug(colorLast);
string colorUpper = colorLast.toUpperCase();
system.debug(colorUpper);
colorList[3] = colorList[3].toUpperCase();
system.debug(colorList);
string colorFour = colorList.get(4);
system.debug(colorFour);
string colorUpper2 = colorFour.toUpperCase();
system.debug(colorFour);
List<String> colourCodesList = new List<String>{'FF0000', 'FOPP0000', 'FFLL0000'};
system.debug(colourCodesList);
boolean coloreQ = colorList.equals(colourCodesList);
system.debug(coloreQ);
List<String> newList = new List<String>();
newList.addAll(colorList);
newList.addAll(colourCodesList);
system.debug(newList);




