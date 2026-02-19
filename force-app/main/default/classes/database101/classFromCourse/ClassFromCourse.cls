public with sharing class ClassFromCourse {
    public Id classFromCourse(String courseName) {
        List<apxio__Course__c> courses = [
        SELECT Id, Name
        FROM apxio__Course__c
        WHERE Name = :courseName
        LIMIT 1
    ];
        
        if (courses.isEmpty()) {
            return null;
        }
        
        apxio__Class__c cls = new apxio__Class__c();
        cls.Name = courses[0].Name;
        cls.apxio__Course__c = courses[0].Id;
        
        insert cls;
        
        return cls.Id;
    }
}