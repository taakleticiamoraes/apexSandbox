public with sharing class consecutiveOnes {
    public Integer maxConsecutiveOnes(Integer[] numbers) {
        if (numbers == null || numbers.isEmpty()) {
            return 0;
        }
        
        Integer maxCount = 0;
        Integer currentCount = 0;
        
        for (Integer n : numbers) {
            if (n == 1) {
                currentCount++;
                if (currentCount > maxCount) {
                    maxCount = currentCount;
                }
            } else {
                currentCount = 0;
            }
        }
        
        return maxCount;
    }
}