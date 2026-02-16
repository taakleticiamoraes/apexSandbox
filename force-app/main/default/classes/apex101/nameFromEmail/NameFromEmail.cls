public with sharing class NameFromEmail {
    public String nameFromEmail(String email) {
        String namePart = email.split('@')[0];
        
        List<String> parts = namePart.split('\\.');
        
        String first = parts[0].toLowerCase();
        String last = parts[1].toLowerCase();
        
        first = first.substring(0,1).toUpperCase() + first.substring(1);
        last = last.substring(0,1).toUpperCase() + last.substring(1);
        
        return first + ' ' + last;
    }
}