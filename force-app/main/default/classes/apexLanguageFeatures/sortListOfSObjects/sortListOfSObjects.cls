public with sharing class sortListOfSObjects {
    public List<Account> getAccounts(List<Account> accounts) {
        if (accounts == null) {
            return null;
        }
        
        List<Account> result = new List<Account>();
        result.addAll(accounts);
        
        result.sort(new AccountRevenueComparator());
        return result;
    }
    
    public class AccountRevenueComparator implements Comparator<Account> {
        public Integer compare(Account a1, Account a2) {
            if (a1.AnnualRevenue == a2.AnnualRevenue) return 0;
            if (a1.AnnualRevenue == null) return 1;
            if (a2.AnnualRevenue == null) return -1;
            
            return a1.AnnualRevenue > a2.AnnualRevenue ? -1 : 1;
        }
    }
    
}