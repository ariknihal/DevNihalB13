Map<String, Integer> marksObtainInMaths = new Map<String, Integer>{'0111CE112' => 40 , '0111CE102' => 19 , '0111CE100' => 33 , '0111CE098' => 40 };
system.debug('Showing Student Roll Number and Marks Obtain ' + marksObtainInMaths);

marksObtainInMaths.put('0000NA444' ,12);
marksObtainInMaths.put('0000NA555' ,22);

system.debug('All Showing Student Roll Number and Marks Obtain ' + marksObtainInMaths);

set<string> uniqueRollNumberSet = marksObtainInMaths.keySet();
system.debug('Showing Student Roll Number--' + uniqueRollNumberSet);

list<integer> marksObtainList = marksObtainInMaths.values();
system.debug('Showing Marks Obtain--' + marksObtainList);


or//system.debug('tShowing Student Roll Number--'+ marksObtainInMaths.keySet());
or//system.debug('Showing Marks Obtain--' + marksObtainInMaths.values());
















