public with sharing class contactsDeDuplicator {
    public static List<Contact> ContactDeduplicator(List<Contact> contacts) {
        List<Contact> result = new List<Contact>();
        Set<String> seenEmails = new Set<String>();
        
        if (contacts == null) {
            return result;
        }
        
        for (Contact c : contacts) {
            String emailKey;
            
            if (String.isBlank(c.Email)) {
                emailKey = 'blank';
            } else {
                emailKey = c.Email.toLowerCase();
            }
            
            if (!seenEmails.contains(emailKey)) {
                seenEmails.add(emailKey);
                result.add(c);
            }
        }
        
        return result;
    }
}