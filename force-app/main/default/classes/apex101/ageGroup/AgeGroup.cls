public with sharing class AgeGroup {
    public String ageGroup(Integer n) {
        if(n < 2){
            return 'Infant';
        }else if(n < 15){
            return 'Child';
        }else if(n < 22){
            return 'Youth';
        }else if(n > 21){
            return 'Adult';
        }else{
            return 'Invalid';
        }
    }
}