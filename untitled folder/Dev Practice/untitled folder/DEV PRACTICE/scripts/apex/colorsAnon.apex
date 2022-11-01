list<string> colourList = new list<string>();
   colourList.add('Red');
   colourList.add('Blue');
   colourList.add('Yellow');
   colourList.add('Black');
   colourList.add('Gray');
   
   system.debug(colourList);
   Integer s = colourList.size();
   system.debug(s);
  
   Boolean red = colourList.contains('Red');
   system.debug(red);


   string last = colourList.get(s -1);
   string lastElement =last.toUpperCase();
   system.debug(lastElement);


