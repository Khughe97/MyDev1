AccConAndOppOperations.ACC_1();
system.debug(AccConAndOppOperations.opp('web', 'closed won'));

AccConAndOppOperations.ACC_2();
 system.debug(AccConAndOppOperations.Acc_3('Burger', 12000, 'Customer - Direct'));

 set<string> uniqueNameSet = new set <string>{'Tom','Jerry'};
 system.debug(uniqueNameSet.size());
 uniqueNameSet.add('SpongeBob');
 uniqueNameSet.add('Patrick');
 uniqueNameSet.add('squidward');
 Boolean answer= uniqueNameSet.contains('Kelsie');
 system.debug(answer);
 Boolean isEmpty = uniqueNameSet.isEmpty();
 system.debug(isEmpty);

 uniqueNameSet.clear();
 system.debug('Is empty now' + uniqueNameSet);

 Boolean isEmpty2 = uniqueNameSet.isEmpty();
 system.debug('Second check is it empty?? ' + isEmpty2);


 Map<string, integer> StudentRank = new Map<string, integer>();
 StudentRank.put( 'Alex' , 1 );
 StudentRank.put( 'Allie' , 2);
 StudentRank.put( 'John' , 3);
 StudentRank.put( 'Bob' , 4);

 for(string eachName: StudentRank.keySet()){
    system.debug('Student Name '+ eachName);

 }
 for(string eachName: StudentRank.keySet()){
    system.debug('Student Name '+ eachName);
    system.debug('Student Name '+ eachName + 'and rank ' + StudentRank.get(eachName));
 }
