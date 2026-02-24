public with sharing class fullNames {
    public List<String> fullNames(List<String> firstNames, List<String> lastNames) {
        List<String> result = new List<String>();
        
        if (firstNames == null || lastNames == null) {
            return result;
        }
        
        for (Integer i = 0; i < firstNames.size(); i++) {
            result.add(firstNames[i] + ' ' + lastNames[i]);
        }
        
        return result;
    }
}