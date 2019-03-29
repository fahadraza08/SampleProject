public class StringArrayTest{
    
    public static List<String> generateStringArray(Integer n){
        List<String> listStr = new List<String>();
        for(Integer i=0; i<n; i++){
            listStr.add('Test '+i);
        }
        return listStr;
    }
}