// Handler class for AccountHandler_assg
public class hmAccountHandler {
    // Method to create Contact records for a list of Account records
    public static void createContacts(List<Account> newList, List<Account> oldList, Map<Id, Account> newMap, Map<Id, Account> oldMap) {
      List<Contact> contactList = new List<Contact>();
      for (Account acc : newList) {
        Contact con = new Contact();
        con.FirstName = acc.Name;
        con.LastName = 'Test Contact';
        con.AccountId = acc.Id;
        contactList.add(con);
      }
      insert contactList;
    }
  }
  