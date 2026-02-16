public with sharing class ReverseOrderOfWords {
    public String reverseWordsInASentence(String sentence){
        if (sentence == null) {
            return null;
        }
        
        List<String> words = sentence.split(' ');
        String result = '';
        
        for (Integer i = words.size() - 1; i >= 0; i--) {
            
            result += words[i];
            
            if (i > 0) {
                result += ' ';
            }
        }
        
        return result;
    }
}