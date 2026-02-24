public with sharing class numberAverage {
    public Decimal average(List<Decimal> numbers){
        if (numbers == null || numbers.isEmpty()) {
            return null;
        }
        
        Decimal sum = 0;
        for (Decimal n : numbers) {
            sum += n;
        }
        
        Decimal avg = sum / numbers.size();
        return avg.setScale(2);
    }
}