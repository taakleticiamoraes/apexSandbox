public with sharing class secondLargestElement {
    public Integer secondLargest(List<Integer> numbers) {
        Integer largest = numbers[0];
        Integer secondLargest = -2147483647 - 1;
        
        for (Integer num : numbers) {
            if (num > largest) {
                largest = num;
            }
        }
        
        for (Integer num : numbers) {
            if (num > secondLargest && num < largest) {
                secondLargest = num;
            }
        }
        
        return secondLargest;
    }
}