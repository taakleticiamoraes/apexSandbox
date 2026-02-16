public with sharing class Fibonacci {
    public Integer fibonacci(Integer n) {
        if(n == 1 || n == 2){
            return 1;
        }
        
        Integer prev1 = 1;
        Integer prev2 = 1;
        Integer current = 0;
        
        for (Integer i = 3; i <= n; i++) {
            current = prev1 + prev2;
            prev1 = prev2;
            prev2 = current;
        }
        
        return current;
        
    }
}