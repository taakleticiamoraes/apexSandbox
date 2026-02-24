public with sharing class fibonacciSeries {
    public List<Integer> fibonacciSeries(Integer n) {
        List<Integer> result = new List<Integer>();
        
        for (Integer i = 0; i < n; i++) {
            if (i == 0 || i == 1) {
                result.add(1);
            } else {
                Integer nextValue = result[i - 1] + result[i - 2];
                result.add(nextValue);
            }
        }
        
        return result;
    }
}