public with sharing class holaMundo2controller {
 private final Account account;
 
    public holaMundo2controller() {
            account = [SELECT Id, Name, phone FROM Account WHERE Id= :ApexPages.currentPage().getParameters().get('casita')];
    }

    public Account getAccount(){
        return account;
    }

    public PageReference save(){
        update account;
        return null;
    }
}