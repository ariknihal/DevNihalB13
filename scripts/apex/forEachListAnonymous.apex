list<string> listStr = new list<string> ();
listStr.add('sounds good');
listStr.add('ok');
listStr.add('smethod');
listStr.add('clear');
listStr.add('🙌');


string concateStr = '';


for (string eachStr : listStr) {
    System.debug(eachStr);
    concateStr += '||' + eachStr;

}
System.debug(concateStr);
