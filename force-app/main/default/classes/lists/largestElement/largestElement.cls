public with sharing class largestElement {
    public static Integer findLargest(List<Integer> nums) {
        Integer largest = nums[0];
        
        for (Integer n : nums) {
            if (n > largest) {
                largest = n;
            }
        }
        
        return largest;
    }
}