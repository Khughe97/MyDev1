public class ListDemo {
    public static string candidateList(integer i ) {
        //className instancename = new classname();
        List<string> listCandidates = new List<string>();
        listCandidates.add('Marc'); // index=0
        listCandidates.add('Elon'); // index=1
        listCandidates.add('Bill'); //index=2
        listCandidates.add('Marc'); //index=3
        system.debug('list candidates ==>'+ listCandidates);
        
        
        string returnStr= '';
        if (i>=0 && i<listCandidates.size()){
            returnStr = listCandidates[i];
        }else{
            returnStr = 'No values Found.';
        }
        return returnStr;
    }
    public static void randomIntegerList() {
        List<integer> listInteger = new List<integer>();
        listInteger.add(15); // index 0 
        listInteger.add(21); // index 1
        listInteger.add(10); // index 2
        listInteger.add(15); // index 3
        listInteger.add(15); // index 4

        system.debug('list integer==>'+ listInteger);
        integer index3value = listInteger.get(3);
        system.debug('index 3 value is ==>'+ index3value);

        integer index2value = listInteger[2];
        system.debug('index 2 value is ==>'+ index2value);
        }
        public static void allCats(){
            Cat falconsCat = new Cat('Nala', 'Black and white');
            Cat kelsiesCat = new Cat('Mac',' Grey and white');
            Cat s = new Cat('simba','brown');
            List<Cat> cats = new List<Cat>();
            cats.add(falconsCat);
            cats.add(kelsiesCat);
            cats.add(s);
            cats.add(falconsCat);
            cats.add(kelsiesCat);
            system.debug('all cats ==>'+ cats);
               if(!cats.isEmpty()){
                cat catAt3 = cats[3];
                system.debug('Cat at 3 is'+ catAt3);
               }
        }
}
