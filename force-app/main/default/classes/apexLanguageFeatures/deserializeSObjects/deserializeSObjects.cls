public with sharing class deserializeSObjects {
    public List<Account> getAccountsFromJSONString(String inputJSON){
        if (inputJSON == null || inputJSON == '') {
            return null;
        }
        
        return (List<Account>) JSON.deserialize(inputJSON, List<Account>.class);
    }
}