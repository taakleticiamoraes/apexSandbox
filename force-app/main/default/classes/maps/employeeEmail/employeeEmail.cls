public with sharing class employeeEmail {
    public String employeeEmail(Map<String, String> employeeIdToEmail, String employeeId) {
        if (employeeIdToEmail != null && employeeIdToEmail.containsKey(employeeId)) {
            return employeeIdToEmail.get(employeeId);
        }
        return 'info@apexsandbox.io';
    }
}