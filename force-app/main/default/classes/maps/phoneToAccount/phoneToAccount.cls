public with sharing class phoneToAccount {
    public Map<String, Account> phoneToAccount(List<Account> accounts) {
        Map<String, Account> result = new Map<String, Account>();
        
        if (accounts == null) {
            return result;
        }
        
        for (Account acc : accounts) {
            if (!String.isBlank(acc.Phone)) {
                result.put(acc.Phone, acc);
            }
        }
        
        return result;
    }
}