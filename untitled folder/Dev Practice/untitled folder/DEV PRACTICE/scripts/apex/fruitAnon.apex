set<string> fruitSet = new set<string>{'Peach','Pear','Apple','Banana'};
system.debug(fruitSet);
for(string Fruits:fruitSet){
    system.debug(' fruit:' + Fruits);
}
integer listSize = fruitSet.size();
system.debug(listSize);
fruitSet.add('Apricot');
system.debug(fruitSet);
system.debug(' Contains Apricot? ' + fruitSet.contains('Apricot'));
system.debug(' Is empty ? '+ fruitSet.isEmpty());