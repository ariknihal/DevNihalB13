SetDemo.citySet();

SetDemo.randomIntegerSet();

List<integer> l1 = new List<integer>();
l1.add(10);
l1.add(15);
l1.add(21);
l1.add(15);

set<integer> setInt = SetDemo.setFromList(l1);
System.debug('set from list' + setInt);
System.debug('l1 list' + l1);




set<string> cities = new set<string>();

cities.add('Tokyo');
cities.add('Lisbon');
cities.add('Berlin');
cities.add('Nairobi');
cities.add('Tokyo');
cities.add('BERLIN');

set<string> capsCities = SetDemo.uppercaseSet(cities);
System.debug('caps cities' + capsCities);

