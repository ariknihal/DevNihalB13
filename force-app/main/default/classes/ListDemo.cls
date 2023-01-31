public class ListDemo {
    public static string candidatesList(integer i) {

        list<string> listCandidates = new list<string>();

        listCandidates.add('marc');
        listCandidates.add('elon');
        listCandidates.add('bill');
        listCandidates.add('marc');
        System.debug('candidates list is' + listCandidates);

        
        
        string candidate = '';
        if (i >=0 && i < listCandidates.size()) {
            candidate = listCandidates[1];
            
        } else {
            candidate ='no such candidate found';
            
        }
        return candidate;

    }
    public static void randomIntegerList(){
        List<integer> listInteger= new list<integer>();

        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        System.debug('list of random integers = ' + listInteger);

        integer index3value = listInteger.get(3);
        integer index3value2 = listInteger[3];

        System.debug('value 3 index ' + index3value);
        System.debug('value at index 3, again ' + listInteger);





    }
    public static void allCats(){
        
        cat c2 = new cat('fluffykins' , 'white');
        cat c1 = new cat('tekir' , 'black');
        cat sfcat= new cat();


        list<cat> cats = new List<cat>();

        cats.add(c1);
        cats.add(c2);
        cats.add(sfcat);
        System.debug('al cars' + cats);
        if (!cats.isEmpty()){
            System.debug(cats[0]);
        }


    }
    public static void iterateListInteger(){
        List<integer> listInteger= new list<integer>();

        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        for (integer eachInteger : listInteger) {
            System.debug(eachInteger);
            
        }

    }

    public static integer add(list<integer> listInt) {
        //a temporary variable to store sum of each integer in the list
        integer sum = 0;

        for (integer eachInt : listInt) {
            sum += eachInt;
        }
        return sum;

    }
    }
    


