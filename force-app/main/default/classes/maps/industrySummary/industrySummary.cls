public with sharing class industrySummary {
    public Map<String, Decimal> industrySummary(List<Account> accounts) {
        Map<String, Decimal> result = new Map<String, Decimal>();
        
        if (accounts == null) {
            return result;
        }
        
        for (Account acc : accounts) {
            if (String.isBlank(acc.Industry)) {
                continue;
            }
            
            Decimal revenue = acc.AnnualRevenue == null ? 0 : acc.AnnualRevenue;
            
            if (result.containsKey(acc.Industry)) {
                result.put(acc.Industry, result.get(acc.Industry) + revenue);
            } else {
                result.put(acc.Industry, revenue);
            }
        }
        
        return result;
    }
}