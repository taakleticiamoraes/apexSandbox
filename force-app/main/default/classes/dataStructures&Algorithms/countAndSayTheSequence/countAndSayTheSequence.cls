public with sharing class countAndSayTheSequence {
    public string countAndSay(integer N) {
        if (n == null || n < 1) {
            return null;
        }
        
        String result = '1';
        
        for (Integer i = 2; i <= n; i++) {
            String next = '';
            Integer count = 1;
            
            for (Integer j = 1; j < result.length(); j++) {
                if (result.substring(j, j + 1) == result.substring(j - 1, j)) {
                    count++;
                } else {
                    next += String.valueOf(count) + result.substring(j - 1, j);
                    count = 1;
                }
            }
            
            next += String.valueOf(count) + result.substring(result.length() - 1);
            
            result = next;
        }
        
        return result;
    }
}