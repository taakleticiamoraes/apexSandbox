public with sharing class dynamicFieldValues {
    public List<String> getFieldsValue(Account acc, List<String> fields)
    {
        List<String> result = new List<String>();
        
        for (String fieldName : fields) {
            Object value = acc.get(fieldName);
            result.add(value == null ? null : String.valueOf(value));
        }
        
        return result;
    }
}