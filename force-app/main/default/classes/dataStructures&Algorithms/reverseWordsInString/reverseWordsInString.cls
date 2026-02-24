public with sharing class reverseWordsInString {
    public static String reverseWords(String str){
        if (str == null) {
            return null;
        }
        
        List<String> words = str.split(' ');
        List<String> result = new List<String>();
        
        for (String word : words) {
            String reversed = '';
            for (Integer i = word.length() - 1; i >= 0; i--) {
                reversed += word.substring(i, i + 1);
            }
            result.add(reversed);
        }
        
        return String.join(result, ' ');
    }
}