public with sharing class phonebook {
    public Map<String, String> phonebook(List<Contact> contacts) {
        Map<String, String> result = new Map<String, String>();
        
        if (contacts == null) {
            return result;
        }
        
        for (Contact c : contacts) {
            if (!String.isBlank(c.Phone)) {
                result.put(c.Name, c.Phone);
            }
        }
        
        return result;
    }
}