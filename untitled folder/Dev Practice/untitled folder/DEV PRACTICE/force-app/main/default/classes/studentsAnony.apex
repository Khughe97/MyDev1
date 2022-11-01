Students s = new Students();

Students s1 = new Students();
s1.firstName = ' John ';
s1.lastName = ' Hughes ';
s1.classYear = 1990;
s1.major = ' Science ';
string reportReturn = s1.generateReport();
system.debug('report returned '+ reportReturn);

Students s2 = new Students();
s2.firstName = 'Alex ';
s2.lastName = ' Collins ';
s2.classYear = 1997;
s2.major = ' Math ';
string reportReturn2 = s2.generateReport();
system.debug('report returned '+ reportReturn2);