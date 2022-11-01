Calculator c = new Calculator();
c.printNewMessage('This is new age calc');

string msg = 'Print this now.';
c.printNewMessage(msg);
string msg99 = 'Now this';
c.printNewMessage(msg99);
string result = c.printAndReturnMessage('Print this ASAP');
system.debug(result);
integer y =c.add(1,2,3);
system.debug('sum of 1 , 2 , and 3 is... ' + y);
integer x = c.add(5,10);
system.debug('sum of 5 plus 10 is.. '+ x);

integer a = c.subtract(10,5);
system.debug('sum of 10 minus 5 is..' + a);

integer b = c.multiply(10,5);
system.debug('sum of 10 times 5 is..' + b);

integer r = c.divide (10,5);
system.debug('sum of 10 divided by 5 is..' + r);
