public class PrimativeDataTypeDemo {
    public void printBasicDataType() { 
        system.Debug('inside print basic data type method');
        string batchName ='Batch 10';
        integer totalCandidates = 85;
        boolean isAdminCompleted = true;
        system.debug(batchName);
        system.debug(totalCandidates);
        system.debug(isAdminCompleted);

        string batchDescription = batchName + ' is amazing, really.';
        system.debug(batchDescription);

        Decimal decValue=777888.88;
        system.debug('dec value -'+ decValue);

        Long longValue= 78987L;
        system.debug('long value -'+ longValue);

        Object obj = 'This is a string';
        system.debug( 'obj is ->'+ obj);
        Object obj2 = 10;
        system.debug('obj2 is-->'+obj2);
        Id id1 = '001D000000Ju1zH';
        system.debug('id1 is-->' + id1);

        


    }
}
