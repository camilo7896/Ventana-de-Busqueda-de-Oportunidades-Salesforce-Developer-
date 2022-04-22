public class opportunityHelper {

    public static void handleType(List<Opportunity> newOpportunity){

        for (Opportunity e : newOpportunity) {
            if (e.type ==  'New Customer' && e.LeadSource == 'Web') {
                e.AddError('No puedes Guardar por que estas guardando -..............');
            }
        }
    }


    public static void handleAmount(List<Opportunity> newOpportunity){
        for (Opportunity e : newOpportunity) {
            if(e.amount == null){
                e.amount=2000;
            }
        }
    }

    public static void handleDate(List<Opportunity> newOpportunity){
        for(Opportunity e: newOpportunity){
            if(e.CloseDate >= DateTime.now().AddDays(20)){
                e.addError('No puedes superar los 20 dias');
            }
        }
    }
    
}