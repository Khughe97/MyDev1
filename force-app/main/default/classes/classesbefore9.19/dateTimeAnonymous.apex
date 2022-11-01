DatetimeMethodDemo dtm= new DatetimeMethodDemo();
dtm.calculateAgeInMonths();
dtm.calculateAgeInDays();
dtm.printSubscriptionEndDate();
dtm.printofferEndDateTime();
datetime birthDate =dateTime.newInstance(1997,7,8,20,0,7);
long longBirthDate= birthDate.getTime();
system.debug('birthdate in miliseconds from 1970'+ longBirthDate);
