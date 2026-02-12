public with sharing class PassingStudents {
    public Boolean isPassed(Boolean passedExam, Boolean passedAssignments, Boolean passedProject) {
        return (passedExam && passedAssignments)
            || (passedExam && passedProject)
            || (passedAssignments && passedProject);
    }
}