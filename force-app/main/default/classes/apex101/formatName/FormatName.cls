public with sharing class FormatName {
    public String formatName(String firstName, String lastName) {
        Boolean hasFirst = !String.isBlank(firstName);
        Boolean hasLast  = !String.isBlank(lastName);
        
        if (hasFirst && hasLast) {
            return lastName + ', ' + firstName;
        }
        
        if (hasFirst) {
            return firstName;
        }
        
        if (hasLast) {
            return lastName;
        }
        
        return '';
    }
}