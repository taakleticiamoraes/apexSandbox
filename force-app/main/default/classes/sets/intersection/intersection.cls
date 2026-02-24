public with sharing class intersection {
    public Set<Integer> setIntersection(Set<Integer> set1, Set<Integer> set2) {
        Set<Integer> result = new Set<Integer>();
        
        if (set1 == null || set2 == null) {
            return result;
        }
        
        for (Integer num : set1) {
            if (set2.contains(num)) {
                result.add(num);
            }
        }
        
        return result;
    }
}