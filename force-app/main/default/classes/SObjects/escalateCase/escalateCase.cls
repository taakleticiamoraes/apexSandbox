public with sharing class escalateCase {
    public void escalateIfMeetsCriteria(Case c) {
        if (c == null) {
            return;
        }
        
        if ((c.Type == 'Mechanical' || c.Type == 'Electrical') &&
            c.Reason == 'Breakdown' &&
        c.Status == 'In Progress') {
            
            c.IsEscalated = true;
        }
    }
}