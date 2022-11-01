public class stringDemo {
    public void stringDemoMethod() {
        string varDemo = 'I am learning string methods in apex';
        integer varLength= varDemo.length();
        system.debug('The length is->'+ varLength);

        string varDemoInCaps = varDemo.toUpperCase();
        system.debug('string in uppercase->'+varDemoInCaps);

        boolean containsLearning = VarDemo.contains('learning');
        system.debug('string contains learning ='+ containsLearning);



    }
}
