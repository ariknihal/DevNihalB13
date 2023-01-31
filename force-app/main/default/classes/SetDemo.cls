public class SetDemo {
    public static void citySet() {

        set<string> cities = new set<string>();

        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');

        System.debug('set of cities : ' + cities);



    }

    public static void randomIntegerSet(){

        set<integer>  setInteger = new set<integer>();

        setInteger.add(10);
        setInteger.add(15);
        setInteger.add(21);
        setInteger.add(15);
        setInteger.add(15);

        System.debug('set of the random integers = ' + setInteger);  

    }
    public static set<integer> setFromList (list<integer> ListInt){

        set<integer> returnSet = new set<integer>();
        returnSet.addAll(Listint);
        return returnSet;

    }

    public static set<string> uppercaseSet(set<string> setStr){
        set<string> upprSet = new set<string>();

        System.debug('setstr ' + setStr);

        for (string eachStr : setStr) {

            System.debug('each str isss' + eachStr);

            string tempStr = eachStr.toUpperCase();
            upprSet.add(tempStr);
            
        }
        return upprSet;
    }

    
}