public with sharing class NextPrime {
    public Integer nextPrime(Integer num) {
        Integer c = num + 1;
        
        if (c < 2) {
            c = 2;
        }
        
        while (true) {
            
            Boolean isPrime = true;
            
            for (Integer i = 2; i <= c / 2; i++) {
                if (Math.mod(c, i) == 0) {
                    isPrime = false;
                    break;
                }
            }
            
            if (isPrime) {
                return c;
            }
            
            c++;
        }
        
        return 0;
    }
}