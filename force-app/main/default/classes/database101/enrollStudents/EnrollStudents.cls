public with sharing class EnrollStudents {
    public void enrollStudents(List<String> emails, String className) {
        apxio__Class__c cls = [
        SELECT Id
        FROM apxio__Class__c
        WHERE Name = :className
        LIMIT 1
    ];
        
        List<apxio__Student__c> students = [
        SELECT Id
        FROM apxio__Student__c
        WHERE apxio__Email__c IN :emails
    ];
        
        List<apxio__Class_Enrollment__c> enrollments = new List<apxio__Class_Enrollment__c>();
        
        for (apxio__Student__c student : students) {
            apxio__Class_Enrollment__c enrollment = new apxio__Class_Enrollment__c();
            enrollment.apxio__Student__c = student.Id;
            enrollment.apxio__Offered_Class__c = cls.Id;
            enrollments.add(enrollment);
        }
        
        insert enrollments;
    }
}