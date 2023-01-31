public class SoqlAssing13 {
    public static void soqlContact(){
        
        list<contact> lstcontact =[Select id, name, Account.Id, Account.Name from contact];

        System.debug(lstcontact);

        for (contact lstcon : lstcontact) {

        System.debug(' account id == ' + lstcon.AccountId + ' account name == ' + lstcon.Account.Name);  
        }
    }
   public static void soqlAccount(){

        list<account> lstaccount =[select id, name, (select id, name from contacts ) from account];

        System.debug(lstaccount);

        for (account lstacc : lstaccount) {

        System.debug(' contact id== ' + lstacc.id + ' ,contact name== ' + lstacc.name);

            
        }
    }
   }
    
