public with sharing class StudentsList {
    public void insertStudents(List<String> studentNames, List<String> studentEmails) {
        List<apxio__Student__c> studentsToInsert = new List<apxio__Student__c>();
        
        for (Integer i = 0; i < studentNames.size(); i++) {
            apxio__Student__c student = new apxio__Student__c();
            student.Name = studentNames[i];
            student.apxio__Email__c = studentEmails[i];
            
            studentsToInsert.add(student);
        }
        
        insert studentsToInsert;
    }
}