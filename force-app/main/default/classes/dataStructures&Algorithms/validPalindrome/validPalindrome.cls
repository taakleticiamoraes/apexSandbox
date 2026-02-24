public with sharing class validPalindrome {
    public Boolean isPalindrome(String str){
        if (str == null) {
            return false;
        }
        
        String cleaned = '';
        
        for (Integer i = 0; i < str.length(); i++) {
            String c = str.substring(i, i + 1);
            
            if ((c >= 'a' && c <= 'z') ||
                (c >= 'A' && c <= 'Z') ||
            (c >= '0' && c <= '9')) {
                cleaned += c.toLowerCase();
            }
        }
        Integer left = 0;
        Integer right = cleaned.length() - 1;
        
        while (left < right) {
            if (cleaned.substring(left, left + 1) != cleaned.substring(right, right + 1)) {
                return false;
            }
            left++;
            right--;
        }
        
        return true;
    }
}