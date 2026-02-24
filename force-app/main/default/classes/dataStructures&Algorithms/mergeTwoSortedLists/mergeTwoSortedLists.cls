public with sharing class mergeTwoSortedLists {
    public static List<Integer> mergeLists(List<Integer> list1, List<Integer> list2){
        List<Integer> result = new List<Integer>();
        
        Integer i = 0;
        Integer j = 0;
        
        while (i < list1.size() && j < list2.size()) {
            if (list1[i] <= list2[j]) {
                result.add(list1[i]);
                i++;
            } else {
                result.add(list2[j]);
                j++;
            }
        }
        
        while (i < list1.size()) {
            result.add(list1[i]);
            i++;
        }
        
        while (j < list2.size()) {
            result.add(list2[j]);
            j++;
        }
        
        return result;
    }
}