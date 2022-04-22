trigger AccouontTrigger on Account (before insert, before update) {
    if(trigger.isbefore && (trigger.isinsert || trigger.isupdate)) {
        AccountTriggerHelper.handlePhone(trigger.new);
    }
}