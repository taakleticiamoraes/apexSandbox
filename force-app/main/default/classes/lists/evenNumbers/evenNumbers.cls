public with sharing class evenNumbers {
    public List<Integer> evenNumbers(Integer n) {
        List<Integer> result = new List<Integer>();
        
        for (Integer i = 1; i <= n; i++) {
            result.add(i * 2);
        }
        
        return result;
    }
}