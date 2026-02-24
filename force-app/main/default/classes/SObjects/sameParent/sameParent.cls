public with sharing class sameParent {
    public Boolean sameParent(Contact c, Opportunity opp) {
        if (c == null || opp == null) {
            return false;
        }
        
        if (c.AccountId == null || opp.AccountId == null) {
            return false;
        }
        
        return c.AccountId == opp.AccountId;
    }
}