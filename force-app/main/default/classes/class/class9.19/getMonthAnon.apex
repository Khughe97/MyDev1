getMonth gm1 = new getMonth();
string output_Month1= gm1.getMonthName(1);
system.debug('The 1st Month is -->' + output_Month1);

getMonth gm2 = new getMonth();
string output_Quarter1= gm2.quarterSwitch('January');
system.debug('January is in quarter -->' + output_Quarter1);

getMonth gm7 = new getMonth();
string output_Month7= gm7.getMonthName(7);
system.debug('The 7th Month is -->' + output_Month7);

getMonth gm8 = new getMonth();
string output_Quarter8= gm8.quarterSwitch('July');
system.debug('July is in quarter -->' + output_Quarter8);

getMonth gm3 = new getMonth();
string output_Month3= gm3.getMonthName(22);
system.debug(output_Month3);

getMonth gm4 = new getMonth();
string output_Quarter4= gm4.quarterSwitch('red');
system.debug(output_Quarter4);

