public with sharing class contactBirthday {
    public Boolean isBirthday(Contact c) {
        if (c == null || c.Birthdate == null) {
            return false;
        }
        
        Date today = Date.today();
        
        return c.Birthdate.month() == today.month() &&
            c.Birthdate.day() == today.day();
    }
}