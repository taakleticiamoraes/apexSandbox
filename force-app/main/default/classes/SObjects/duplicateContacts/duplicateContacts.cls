public with sharing class duplicateContacts {
    public Boolean duplicateContacts(Contact c1, Contact c2) {
        if (c1 == null || c2 == null) {
            return false;
        }
        
        if (c1.Phone != null && c2.Phone != null && c1.Phone == c2.Phone) {
            return true;
        }
        
        if (c1.Email != null && c2.Email != null && c1.Email == c2.Email) {
            return true;
        }
        
        return false;
    }
}