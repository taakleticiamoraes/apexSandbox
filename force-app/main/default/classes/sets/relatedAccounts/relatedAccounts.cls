public with sharing class relatedAccounts {
    public Set<Id> accountIds(List<Opportunity> opps) {
        Set<Id> result = new Set<Id>();
        
        if (opps == null) {
            return result;
        }
        
        for (Opportunity opp : opps) {
            if (opp.AccountId != null) {
                result.add(opp.AccountId);
            }
        }
        
        return result;
    }
}