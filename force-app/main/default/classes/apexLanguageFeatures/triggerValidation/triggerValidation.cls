public with sharing class triggerValidation {
    public void validateInsert(List<Opportunity> opportunities){
        for (Opportunity opp : opportunities) {
            if (opp.StageName == 'Closed Won' &&
            (opp.Description == null || opp.Description.trim() == '')) {
                
                opp.Description.addError(
                    'Description should not be empty for Closed Won opportunity.'
                    );
            }
        }
    }
}