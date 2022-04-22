public class AccountTriggerHelper {
    public static void handlePhone(List<Account> newPhone){
        for(Account e : newPhone){
            if(e.phone == NULL){
                e.addError('No hay un Numero de Telefono');
            }
        }
    }
}