public with sharing class AOrAn {
    public String aOrAn(String word) {
        if(word == null || word.length() == 0){
            return word;
        }
        
        String firstLetter = word.substring(0,1).toLowerCase();
        
        if(firstLetter == 'a' || firstLetter == 'e' || firstLetter == 'i' || firstLetter == 'o' || firstLetter == 'u'){
            return 'an ' + word;
        }else{
            return 'a ' + word;
        }
    }
}