public with sharing class twoSumII {
    public List<Integer> twoSum(List<Integer> nums, Integer target){
        if (nums == null || nums.size() < 2) {
            return null;
        }
        
        Integer left = 0;
        Integer right = nums.size() - 1;
        
        while (left < right) {
            Integer sum = nums[left] + nums[right];
            
            if (sum == target) {
                return new List<Integer>{left, right};
            }
            else if (sum < target) {
                left++;
            }
            else {
                right--;
            }
        }
        
        return null;
    }
}