public with sharing class sortedList {
    public boolean isSorted(List<Integer> numbers) {
        if (numbers == null || numbers.size() <= 1) {
            return true;
        }
        
        Boolean ascending = true;
        Boolean descending = true;
        
        for (Integer i = 1; i < numbers.size(); i++) {
            if (numbers[i] < numbers[i - 1]) {
                ascending = false;
            }
            if (numbers[i] > numbers[i - 1]) {
                descending = false;
            }
        }
        
        return ascending || descending;
    }
}