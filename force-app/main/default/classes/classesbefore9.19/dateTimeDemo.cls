public class dateTimeDemo {
    public void dateTimeDemoMethod() {
        Date currentDate = date.today();
        system.debug('todays date is'+ currentDate);

        date date1 = date.newInstance(2019,1,1);
        date date2= date.newInstance(2020,1,1);
        integer numOfDays=date1.daysbetween(date2);
        system.debug('No.Of.Days-> '+ numOfDays);

        date subEndDate= currentDate.addDays(-30);

        system.debug('subscription end date is...'+ subEndDate);
    }
}
