public with sharing class CourseAndClass {
    public void createCourseAndClass(String name, String description) {
        apxio__Course__c course = new apxio__Course__c();
        course.Name = name;
        course.apxio__Course_Details__c = description;
        
        insert course;
        
        String classDescription = description;
        if (classDescription != null && classDescription.length() > 255) {
            classDescription = classDescription.substring(0, 255);
        }
        
        apxio__Class__c cls = new apxio__Class__c();
        cls.Name = name;
        cls.apxio__Course__c = course.Id;
        cls.apxio__Description__c = classDescription;
        
        insert cls;
    }
}