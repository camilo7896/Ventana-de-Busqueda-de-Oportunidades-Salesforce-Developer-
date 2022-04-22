
public class EventoTriggerHelper {
    
    public static void handleDate(List<Event> newEvents){
        for (Evento e : newEvents) {
            if (e.StartDateTime > DateTime.now().AddDays(60)) {
                e.addError('No puedes crear el evento mayor a 60 dias');
            }
        }
    }

    public static void handleNewOpportunities(List<Event> newEvents){
        List<Opportunity> newOppties = new List<Opportunity>();
        for (Event e : newEvents) {
            if (e.WhatId.getsObjectType() == Account.getsObjectType()) {
                newOppties.add(new Opportunity(name= e.subject, closeDate = e.StartDateTime.Date(), stageName= 'prospecting', accountId=e.WhatId));
            }
        }
        insert newOppties;
    }
}