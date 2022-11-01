List<string> colorList = new List<string>();
   colorList.add('Red');
   colorList.add('Blue');
   colorList.add('Yellow');
   colorList.add('Black');
   colorList.add('Gray');
   
   system.debug(colorList);
   integer s =colorList.size();
   system.debug(s);
  
   Boolean purple = colorList.contains('Red');
   system.debug(purple);

   string last = colorList.get(s-1);
   string lastElement = last.toUpperCase();
   system.debug(lastElement);


