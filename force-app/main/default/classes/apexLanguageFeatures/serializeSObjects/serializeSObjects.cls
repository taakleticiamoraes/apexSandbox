public with sharing class serializeSObjects {
    public String getAccountsInJSONFormat(List<Account> accounts){
        return JSON.serialize(accounts);
    }
}