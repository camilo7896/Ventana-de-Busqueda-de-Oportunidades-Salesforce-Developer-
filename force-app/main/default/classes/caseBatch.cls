public class caseBatch Implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext BC) {
List<CaseField__mdt> mcs = new List<CaseField__mdt>();
        String query = 'SELECT Id, Name, CreatedDate FROM Case WHERE CreatedDate = '+ DateTime.now().AddDays(-2);
        for (CaseField__mdt e : mcs) {
            query +=' AND ' 
        }
    }
}
   