public class DatetimeMethodDemo {
    public void calculateAgeInMonths() {
        date birthDate = date.newInstance(1997,7,8);
        date todaydate= date.today();

        integer ageInMonths = birthdate.monthsBetween(todayDate);
        system.debug( 'My age in months is '+ ageInMonths);


    }
    public void calculateAgeInDays(){
        date birthDate = date.newInstance(1997,7,8);
        date todaydate= date.today();

        integer ageInDays = birthdate.daysBetween(todayDate);
        system.debug( 'My age in months is '+ ageInDays);

    }
    public void printSubscriptionEndDate(){
        date subStartDate = date.today();

        date subEndDate= subStartDate.addDays(1000);
        system.debug('subscription end date is...'+ subEndDate);
        
        integer endDateMonth= subEndDate.month();
        system.debug('end date month = '+ endDateMonth);
        
        integer endDateYear = subEndDate.year();
        system.debug('end date year = '+ endDateYear);
    }
    public void printOfferEndDateTime(){
        datetime offerStartDT=datetime.now();

        datetime offerEndDT=offerStartDT.addhours(51);
        system.debug('offer end datetime = '+ offerEndDT);

        date offerEndDate= offerEndDT.date();
        system.debug('offer end date = '+ offerEndDate);
    }
}
