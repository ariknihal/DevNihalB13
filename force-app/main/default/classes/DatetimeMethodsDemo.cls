public class DatetimeMethodsDemo {
    public void calculateAgeInMonths() {

        Date birthDate = date.newInstance(1990, 12, 8);
        Date todayDate = date.today();


        Integer ageInMonths = birthDate.monthsBetween(todayDate);
        system.debug('my age in months' + ageInMonths);
        Integer ageInMonthsx = birthDate.daysBetween(todayDate);
        system.debug('my age in months' + ageInMonthsx);
    }

    public void birthDatetimeInMS(){

        Datetime birthdt = Datetime.newInstance(1990, 12, 8, 2, 40, 00);
        long millisecBirthdt = birthdt.getTime();
        System.debug('birth datetime in milisecond is ' + millisecBirthdt);
        
    }
    public void printSubscriptionEndDate(){

        date subStartDate = date.today();
        date subEndDate = subStartDate.addDays(1000);

        system.debug('subs end date is ' + subEndDate);

        Integer endYear = subEndDate.year();
        Integer endMonth = subEndDate.month();
        System.debug('end year is' + endYear);
        System.debug('end month is' + endMonth);
    }

    public void printOfferEndTime(){

        Datetime offerStart = Datetime.now();

        Datetime offerEnd = offerStart.addHours(51);
        System.debug('offer end datetime is' + offerEnd);

        Date offerEnddate = offerEnd.date();
        System.debug('date of offer end' + offerEnddate);


    }
}












