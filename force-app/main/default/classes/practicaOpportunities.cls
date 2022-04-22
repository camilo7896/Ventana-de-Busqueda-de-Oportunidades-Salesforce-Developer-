public with sharing class practicaOpportunities {
    @AuraEnabled
    public static List<wrapperOportunities> serverEcho(String firstName) {
      
        List<Opportunity> entradas = new List<Opportunity>();
        
        entradas=[SELECT Id, Name, Amount
        FROM Opportunity 
        WHERE Name =: firstName];

        List<wrapperOportunities> wopt = new List<wrapperOportunities>();
        wrapperOportunities opt = new wrapperOportunities();
        for (Opportunity a : entradas) {
            opt.Name = a.Name;
            opt.Amount = a.Amount;    
            wopt.add(opt);      
        }

        return wopt;
    }


    public class wrapperOportunities{
       @AuraEnabled
        public String Name{get;set;}
        @AuraEnabled
        public Decimal Amount{get;set;}
    }
}