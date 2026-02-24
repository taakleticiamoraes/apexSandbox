public with sharing class casesByType {
    public Map<String, List<Case>> casesByType(List<Case> cases) {
        Map<String, List<Case>> result = new Map<String, List<Case>>();
        
        for (Case c : cases) {
            if (String.isBlank(c.Type)) {
                continue;
            }
            
            if (!result.containsKey(c.Type)) {
                result.put(c.Type, new List<Case>());
            }
            
            result.get(c.Type).add(c);
        }
        
        return result;
    }
}