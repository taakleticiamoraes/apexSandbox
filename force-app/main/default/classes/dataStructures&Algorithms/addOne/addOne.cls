public with sharing class addOne {
    public void plusOne(List<Integer> numbers) {
        if (numbers == null || numbers.size() == 0) {
            return;
        }
        
        Integer i = numbers.size() - 1;
        
        while (i >= 0) {
            if (numbers[i] < 9) {
                numbers[i] = numbers[i] + 1;
                return;
            } else {
                numbers[i] = 0;
                i--;
            }
        }
        
        numbers.add(0);
        numbers[0] = 1;
    }
}