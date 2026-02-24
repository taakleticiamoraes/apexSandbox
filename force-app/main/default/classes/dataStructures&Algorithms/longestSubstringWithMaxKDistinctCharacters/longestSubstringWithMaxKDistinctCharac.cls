public with sharing class longestSubstringWithMaxKDistinctCharac {
    public static Integer longestDistinctSubstring(String str, Integer k){
        if (str == null || str.length() == 0 || k <= 0) {
            return 0;
        }
        
        Integer windowStart = 0;
        Integer maxLength = 0;
        Map<String, Integer> charFrequency = new Map<String, Integer>();
        
        for (Integer windowEnd = 0; windowEnd < str.length(); windowEnd++) {
            String rightChar = str.substring(windowEnd, windowEnd + 1);
            
            if (!charFrequency.containsKey(rightChar)) {
                charFrequency.put(rightChar, 0);
            }
            charFrequency.put(rightChar, charFrequency.get(rightChar) + 1);
            
            while (charFrequency.size() > k) {
                String leftChar = str.substring(windowStart, windowStart + 1);
                charFrequency.put(leftChar, charFrequency.get(leftChar) - 1);
                
                if (charFrequency.get(leftChar) == 0) {
                    charFrequency.remove(leftChar);
                }
                windowStart++;
            }
            
            maxLength = Math.max(maxLength, windowEnd - windowStart + 1);
        }
        
        return maxLength;
    }
}