public with sharing class validSubsequence {
    public Boolean isSubSequence(String s1, String s2){
        if (s1 == null || s2 == null) {
            return false;
        }
        
        Integer i = 0;
        Integer j = 0;
        
        while (i < s1.length() && j < s2.length()) {
            if (s1.substring(i, i + 1) == s2.substring(j, j + 1)) {
                i++;
            }
            j++;
        }
        
        return i == s1.length();
    }
}