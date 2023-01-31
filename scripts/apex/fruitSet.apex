Set<String> fruitsSet = new  Set<String>{'Orange', 'Apple', 'Banana', 'Cherry'};
for(string each: fruitsSet){
    System.debug(each);
    
}
    System.debug(fruitsSet.size());

    fruitsSet.add('Apricot');
    System.debug(fruitsSet);
    
    fruitsSet.contains('Apricot');
    System.debug(fruitsSet.contains('Apricot'));

    fruitsSet.isEmpty();
    System.debug(fruitsSet.isEmpty ());