public with sharing class findCommonCharacters {
    public List<String> commonChars(List<String> strs){
        if (strs == null || strs.isEmpty()) {
            return new List<String>();
        }
        
        Integer[] minFreq = new Integer[26];
        for (Integer i = 0; i < 26; i++) {
            minFreq[i] = 0;
        }
        
        String first = strs[0];
        for (Integer i = 0; i < first.length(); i++) {
            String ch = first.substring(i, i + 1);
            Integer index = 'abcdefghijklmnopqrstuvwxyz'.indexOf(ch);
            minFreq[index]++;
        }
        
        for (Integer i = 1; i < strs.size(); i++) {
            Integer[] freq = new Integer[26];
            for (Integer j = 0; j < 26; j++) {
                freq[j] = 0;
            }
            
            String word = strs[i];
            for (Integer j = 0; j < word.length(); j++) {
                String ch = word.substring(j, j + 1);
                Integer index = 'abcdefghijklmnopqrstuvwxyz'.indexOf(ch);
                freq[index]++;
            }
            
            for (Integer j = 0; j < 26; j++) {
                minFreq[j] = Math.min(minFreq[j], freq[j]);
            }
        }
        
        List<String> result = new List<String>();
        for (Integer i = 0; i < 26; i++) {
            while (minFreq[i] > 0) {
                result.add('abcdefghijklmnopqrstuvwxyz'.substring(i, i + 1));
                minFreq[i]--;
            }
        }
        
        return result;
    }
}