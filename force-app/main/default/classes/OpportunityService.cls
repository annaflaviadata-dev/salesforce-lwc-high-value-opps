public with sharing class OpportunityService {
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getHighValueOpportunities() {
        return [SELECT Id, Name, Amount, StageName, CloseDate 
                FROM Opportunity 
                WHERE Amount > 100000 
                AND IsClosed = false 
                ORDER BY Amount DESC];
    }
}