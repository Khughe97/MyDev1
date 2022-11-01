map<string, decimal> currISOCodeAndExchangeRateMap = new map<string, decimal>();
currISOCodeAndExchangeRateMap.put('AUD', 0.73);
currISOCodeAndExchangeRateMap.put( 'CAD', 0.78);
currISOCodeAndExchangeRateMap.put('EUR', 1.13 );
currISOCodeAndExchangeRateMap.put('NZD',0.68 );
currISOCodeAndExchangeRateMap.put('INR', 0.013 );
 system.debug(currISOCodeAndExchangeRateMap);
  decimal europe = currISOCodeAndExchangeRateMap.get('EUR');
  system.debug('currency for Europe is : ' + europe);

  boolean isContainsSAD = currISOCodeAndExchangeRateMap.containsKey('SAD');
  system.debug('Contains conversion rate???' + isContainsSAD);

Set<string> greaterThanOrEqualToOne = new set<string>();
Set<string> LessThanOne = new set<string>();
for(string eachCode:currISOCodeAndExchangeRateMap.keySet()){
    if(currISOCodeAndExchangeRateMap.get(eachCode)>=1){
        greaterThanOrEqualToOne.add(eachCode);
    }else{
        lessThanOne.add(eachCode);
    }
}
system.debug(greaterThanOrEqualToOne);
system.debug(lessThanOne);
