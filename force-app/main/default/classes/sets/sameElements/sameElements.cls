public with sharing class sameElements {
    public Boolean sameElements(List<Integer> nums1, List<Integer> nums2) {
        if (nums1 == null || nums2 == null) {
            return false;
        }
        
        Set<Integer> set1 = new Set<Integer>(nums1);
        Set<Integer> set2 = new Set<Integer>(nums2);
        
        return set1.equals(set2);
    }
}