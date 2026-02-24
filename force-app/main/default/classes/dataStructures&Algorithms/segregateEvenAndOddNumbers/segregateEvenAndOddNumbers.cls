public with sharing class segregateEvenAndOddNumbers {
    public static void segregateEvenOdd(List<Integer> numbers){
        if (numbers == null || numbers.size() == 0) {
            return;
        }
        
        Integer left = 0;
        Integer right = numbers.size() - 1;
        
        while (left < right) {
            if (Math.mod(numbers[left], 2) == 0) {
                left++;
            }
            else if (Math.mod(numbers[right], 2) != 0) {
                right--;
            }
            else {
                Integer temp = numbers[left];
                numbers[left] = numbers[right];
                numbers[right] = temp;
                
                left++;
                right--;
            }
        }
    }
}