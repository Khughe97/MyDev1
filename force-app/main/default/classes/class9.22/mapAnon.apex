//map 
// key data type 
// value data type   //variable name     //new instamce of same type of map
map< string, string> mapCountryCurrency = new map<string,string>();
mapCountryCurrency.put('USA','Dollar');  
mapCountryCurrency.put('France','Euro');
mapCountryCurrency.put('India','Rupees');
mapCountryCurrency.put('India','Rupee');
mapCountryCurrency.put('Turkey','Lira');
mapCountryCurrency.put('El Salvador','Bitcoin');
mapCountryCurrency.put('Canada','Dollar');
system.debug(mapCountryCurrency);

string IndiaCurrency = mapCountryCurrency.get('India');
string TurkeyCurrency = mapCountryCurrency.get('Turkey');

system.debug('India currency = '+ IndiaCurrency);
system.debug('Turkey currency = '+ TurkeyCurrency);

Set<string> allCountries = mapCountryCurrency.keySet();
system.debug('all countries ==> '+ allcountries);

List<string> allCurrencies = mapCountryCurrency.values();
system.debug('all currencies ==> '+ allCurrencies);

Set<String> countries = mapCountryCurrency.keySet();
system.debug('all countries ==>'+ countries);
for (string eachCountry: countries ){
    system.debug('each country==>'+ eachCountry);
    string eachCurrency = mapCountryCurrency.get(eachCountry);
    system.debug('each currency ==> ' + eachCurrency);
    system.debug('----------');
}