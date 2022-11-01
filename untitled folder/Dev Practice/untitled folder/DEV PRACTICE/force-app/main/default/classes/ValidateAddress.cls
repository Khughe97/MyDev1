public class ValidateAddress {
    public void validateHomeAddress() {
        string houseName =' Blue ';
        string streetName = 'Cora';
        string cityName = 'Nashville';
        string stateName = 'Tennessee';
        string stateISOCode = 'TN';
        string countryName = 'United states';
        string countryISOCode = 'USA';
        integer numberOfCharacters = streetName.length();
        system.debug(numberOfCharacters);
        Boolean content1 = streetName.contains(houseName);
        system.debug(content1);
        Boolean content2 = streetName.contains(stateISOCode);
        system.debug(content2);
        string  convertCountryName1 = countryName.toUpperCase();
        system.debug(convertCountryName1);
        
        
        string  convertCityName1 = cityName.toUpperCase();
        system.debug(convertCityName1);
        string convertStateName1 = stateName.toLowerCase();
        system.debug(convertStateName1);
        
        string  convertStateISOCode1 = stateISOCode.toLowerCase();
        system.debug(convertStateISOCode1);
        string  convertCountryName2 = countryISOCode.toLowerCase();
        system.debug(convertCountryName2);
        
        
        
        string myAddress = ( houseName + ' '  + streetName+' '+ cityName+ ' ' + stateName + ' ' +stateISOCode + ' '+ countryName + ' '  + countryISOCode);
        system.debug('My full Address is '+ myAddress);

    }
}
