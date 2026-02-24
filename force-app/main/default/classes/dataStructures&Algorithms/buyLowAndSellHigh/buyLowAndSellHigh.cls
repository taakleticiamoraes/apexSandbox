public with sharing class buyLowAndSellHigh {
    public Integer maxProfit(List<Integer> prices){
        if (prices == null || prices.size() == 0) {
            return 0;
        }
        
        Integer minPrice = prices[0];
        Integer maxProfit = 0;
        
        for (Integer i = 1; i < prices.size(); i++) {
            Integer price = prices[i];
            
            Integer profit = price - minPrice;
            if (profit > maxProfit) {
                maxProfit = profit;
            }
            
            if (price < minPrice) {
                minPrice = price;
            }
        }
        
        return maxProfit;
    }
}