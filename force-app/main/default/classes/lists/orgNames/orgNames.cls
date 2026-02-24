public with sharing class orgNames {
    public List<String> orgNames(List<String> adjectives, List<String> animals) {
        List<String> result = new List<String>();
        
        for (String adj : adjectives) {
            for (String animal : animals) {
                result.add(adj + '-' + animal);
            }
        }
        
        return result;
    }
}