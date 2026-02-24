public with sharing class sameParentII {
    public Boolean sameParent(Account acc, Contact con, Opportunity opp) {
        if (acc == null || con == null || opp == null) {
            return false;
        }
        
        if (acc.Id == null || con.AccountId == null || opp.AccountId == null) {
            return false;
        }
        
        return con.AccountId == acc.Id && opp.AccountId == acc.Id;
    }
}