public with sharing class RegisterStudent {
    public String registerStudent(String name, String phone, String email) {
        apxio__Student__c student = new apxio__Student__c();
        student.Name = name;
        student.apxio__Phone__c = phone;
        student.apxio__Email__c = email;
        
        insert student;
        
        student = [
        SELECT apxio__Registration_Number__c
        FROM apxio__Student__c
        WHERE Id = :student.Id
        LIMIT 1
    ];
        
        return student.apxio__Registration_Number__c;
    }
}