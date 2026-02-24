public with sharing class duplicateIntegers {
    public Boolean containsDuplicates(List<Integer> nums) {
        if (nums == null) {
            return false;
        }
        
        Set<Integer> uniqueNums = new Set<Integer>(nums);
        return uniqueNums.size() < nums.size();
    }
}