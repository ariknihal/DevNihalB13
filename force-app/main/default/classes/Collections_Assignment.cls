public  class Collections_Assignment {
    public static void listMethods (){

        list<string> listdays = new list<string>{'Monday' , 'Tuesday' , 'Wednesday', 'Thursday' , 'Friday'};

        System.debug('Monday to Friday --' + listdays);

        listdays.add('Saturday');
        listdays.add('Sunday');
        
        System.debug('add weekends --' + ' Saturday ' + ' Sunday ');

        listdays.add('Monday');
        System.debug(' Show duplicate day the end ' +listdays);
        System.debug('removed duplicate day--' + listdays.remove(7));
        System.debug('all day --' + listdays);
        System.debug('list day size-- ' + listdays.size());

        listdays.clear();
        System.debug('all day --' + listdays);
        System.debug('list day size-- ' + listdays.size());

        listdays.add('Monday');
        listdays.add('Tuesday');
        listdays.add('Wednesday');
        listdays.add('Thursday');
        listdays.add('Friday');
        listdays.add('Saturday');
        listdays.add('Sunday');
        
        System.debug(' All day --' + listdays);
        System.debug('list day size-- ' + listdays.size());

        System.debug(listdays.contains('Monday'));
        
        if(listdays.contains('SundayFunday')){
            System.debug('SundayFunday is Funny :)');
        } else {
            System.debug('SundayFunday is not Funny :(');
        }

        for(string days : listdays){
            System.debug(days);
        }

        for (string days : listdays) {
            System.debug(' Number ' + listdays.indexOf(days) + ' Day: ' + days);
            
        }
}
 public static void SetMethods (){

    Set<string> setDays = new Set<string>();

    setDays.add('Monday');
    setDays.add('Tuesday');
    setDays.add('Wednesday');
    setDays.add('Thursday');
    setDays.add('Friday');
    setDays.add('Saturday');
    setDays.add('Sunday');
    System.debug(' Days of the weeks ' + setDays);

    setDays.add('Monday');
    setDays.add('TUesDAY');
    setDays.add('WEDNESDAY');
    System.debug('Add days ' + setDays);

    setDays.remove('WEDNESDAY');
    setDays.remove('TUesDAY');
    System.debug(' remove days ' +setDays);

    setDays.clear();
    System.debug(' Days of the weeks ' + setDays);
    System.debug(' Days of the weeks ' + setDays.size());

    setDays.add('Monday');
    setDays.add('Tuesday');
    setDays.add('Wednesday');
    setDays.add('Thursday');
    setDays.add('Friday');
    setDays.add('Saturday');
    setDays.add('Sunday');
    System.debug(' Days of the weeks ' + setDays);

    for (string days : setDays) {
        System.debug(' uppercase days ' + days.toUpperCase());
        
    }

    System.debug(' Is there any Monday? ' + setDays.contains('Monday'));

    if(setDays.contains('SundayFunday')){
        System.debug('SundayFunday is Funny :)');
    } else {
        System.debug('SundayFunday is not Funny :(');
    }

    for(string days : setDays){
        System.debug(days);
    }


 }
    
}