public with sharing class sameString {
    public static Boolean sameString(String str1, String str2){
        Integer i = str1.length() - 1;
        Integer j = str2.length() - 1;
        
        Integer skip1 = 0;
        Integer skip2 = 0;
        
        while (i >= 0 || j >= 0) {
            while (i >= 0) {
                if (str1.substring(i, i+1) == '#') {
                    skip1++;
                    i--;
                } else if (skip1 > 0) {
                    skip1--;
                    i--;
                } else {
                    break;
                }
            }
            while (j >= 0) {
                if (str2.substring(j, j+1) == '#') {
                    skip2++;
                    j--;
                } else if (skip2 > 0) {
                    skip2--;
                    j--;
                } else {
                    break;
                }
            }
            
            String c1 = (i >= 0) ? str1.substring(i, i+1) : null;
            String c2 = (j >= 0) ? str2.substring(j, j+1) : null;
            
            if (c1 != c2) {
                return false;
            }
            
            i--;
            j--;
        }
        
        return true;
    }
}