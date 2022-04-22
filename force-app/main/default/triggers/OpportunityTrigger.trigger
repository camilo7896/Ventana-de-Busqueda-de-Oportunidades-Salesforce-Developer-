trigger OpportunityTrigger on Opportunity (before insert, before update) {

    if(trigger.isbefore && (trigger.isinsert || trigger.isupdate)){
        opportunityHelper.handleType(trigger.New);
        opportunityHelper.handleAmount(trigger.New);
        opportunityHelper.handleDate(trigger.New);
        
    }
    
}