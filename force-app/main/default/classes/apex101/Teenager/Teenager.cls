public with sharing class Teenager {
    public Boolean isTeenager(Integer age) {
        if(age < 13){
            return false;
        }else if(age > 19){
            return false;
        }else{
            return true;
        }
    }
}