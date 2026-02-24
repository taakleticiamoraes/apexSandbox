public with sharing class squareASortedList {
    public static List<Integer> squareList(List<Integer> nums){
        List<Integer> result = new List<Integer>();
        
        if (nums == null || nums.size() == 0) {
            return result;
        }
        
        for (Integer i = 0; i < nums.size(); i++) {
            result.add(0);
        }
        
        Integer left = 0;
        Integer right = nums.size() - 1;
        Integer pos = nums.size() - 1;
        
        while (left <= right) {
            Integer leftSquare = nums[left] * nums[left];
            Integer rightSquare = nums[right] * nums[right];
            
            if (leftSquare > rightSquare) {
                result[pos] = leftSquare;
                left++;
            } else {
                result[pos] = rightSquare;
                right--;
            }
            
            pos--;
        }
        
        return result;
    }
}