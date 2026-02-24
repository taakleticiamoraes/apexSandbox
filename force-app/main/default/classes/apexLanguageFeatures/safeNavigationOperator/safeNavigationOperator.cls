public with sharing class safeNavigationOperator {
    public String getAccountBillingCityWithSafeNavigation(List<Account> accounts){
        return accounts?.get(0)?.BillingCity?.toUpperCase();
    }
    
}