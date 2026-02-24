public with sharing class sortingAList {
    public List<String> getNamesInAscOrder(List<String> accountNames)
    {
        if (accountNames == null) {
            return null;
        }
        List<String> result = new List<String>(accountNames);
        result.sort();
        return result;
    }
}