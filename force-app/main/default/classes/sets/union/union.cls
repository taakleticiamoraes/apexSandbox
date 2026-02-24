public with sharing class union {
    public Set<Integer> setUnion(Set<Integer> set1, Set<Integer> set2) {
        Set<Integer> result = new Set<Integer>();
        
        if (set1 != null) {
            result.addAll(set1);
        }
        
        if (set2 != null) {
            result.addAll(set2);
        }
        
        return result;
    }
}