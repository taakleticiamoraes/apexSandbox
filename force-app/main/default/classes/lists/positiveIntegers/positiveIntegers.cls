public with sharing class positiveIntegers {
    public List<Integer> positiveIntegers(List<Integer> numbers) {
        List<Integer> result = new List<Integer>();
        
        if (numbers == null) {
            return null;
        }
        
        for (Integer n : numbers) {
            if (n > 0) {
                result.add(n);
            }
        }
        
        return result;
    }
}