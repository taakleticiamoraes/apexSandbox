public with sharing class maximumSubArray {
    public static Integer maxSubArraySum(List<Integer> nums, Integer target){
        if (nums == null || nums.size() < target || target <= 0) {
            return 0;
        }
        
        Integer windowSum = 0;
        
        for (Integer i = 0; i < target; i++) {
            windowSum += nums[i];
        }
        
        Integer maxSum = windowSum;
        
        for (Integer i = target; i < nums.size(); i++) {
            windowSum = windowSum - nums[i - target] + nums[i];
            if (windowSum > maxSum) {
                maxSum = windowSum;
            }
        }
        
        return maxSum;
    }
}