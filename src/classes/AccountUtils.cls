public class AccountUtils{
    public static List<Account> accountsByState(String Str){
        List<Account> listAcc = new List<Account>();
        try{
            listAcc = [Select Id,Name From Account Where BillingState = :Str];
        }catch(QueryException e){}
        return listAcc;
    }
}