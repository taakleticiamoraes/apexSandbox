public with sharing class WhichTwo {
    public String whichTwo(Integer a, Integer b, Integer c) {
        if (a + b == c) {
            return 'c';
        }
        
        if (a + c == b) {
            return 'b';
        }
        
        if (b + c == a) {
            return 'a';
        }
        
        return '';
    }
}