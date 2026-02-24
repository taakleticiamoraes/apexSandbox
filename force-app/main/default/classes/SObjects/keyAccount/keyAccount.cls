public with sharing class keyAccount {
    public Boolean isKeyAccount(Account a) {
        if (a == null || a.AnnualRevenue == null) {
            return false;
        }
        
        Decimal threshold;
        
        if (a.Industry == 'Banking') {
            threshold = 600000;
        } else if (a.Industry == 'Technology') {
            threshold = 800000;
        } else if (a.Industry == 'Retail') {
            threshold = 2000000;
        } else {
            threshold = 500000;
        }
        
        return a.AnnualRevenue >= threshold;
    }
}