public with sharing class validAnagram {
    public boolean isAnagram(String s1, String s2) {
        if (s1 == null || s2 == null) {
            return false;
        }
        
        if (s1.length() != s2.length()) {
            return false;
        }
        
        Map<String, Integer> counts = new Map<String, Integer>();
        
        for (Integer i = 0; i < s1.length(); i++) {
            String ch = s1.substring(i, i + 1);
            counts.put(ch, (counts.containsKey(ch) ? counts.get(ch) + 1 : 1));
        }
        
        for (Integer i = 0; i < s2.length(); i++) {
            String ch = s2.substring(i, i + 1);
            
            if (!counts.containsKey(ch)) {
                return false;
            }
            
            counts.put(ch, counts.get(ch) - 1);
            
            if (counts.get(ch) == 0) {
                counts.remove(ch);
            }
        }
        
        return counts.isEmpty();
    }
}