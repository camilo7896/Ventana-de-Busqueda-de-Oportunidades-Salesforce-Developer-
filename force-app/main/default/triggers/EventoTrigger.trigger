trigger EventoTrigger on SOBJECT (before insert, before update, after insert) {
    if(trigger.isinsert && (trigger.isinsert || trigger.isUpdate)){
        EventoTriggerHelper.handleDate(trigger.new);
    }

    if (trigger.isAfter && trigger.isInsert) {
        EventoTriggerHelper.handleNewOpportunities(trigger.new);
    }
}