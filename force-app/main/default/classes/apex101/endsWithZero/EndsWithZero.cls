public with sharing class EndsWithZero {
    public Boolean isEndWithZero(Integer num){
        return Math.mod(num, 10) == 0;
    }
}