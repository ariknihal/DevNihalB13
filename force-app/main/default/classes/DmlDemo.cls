public class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        //create instance of sobject
        account acc = new account(); //similar to clicking new button
        //set field names
        acc.Name = 'softinnovas';

        //insert dml to create records
        insert acc;
        system.debug(acc);
    }

    public static void dmlInsertDemo_cstmObj() {
        //create instance
        Salesforce_Project__c sp = new Salesforce_Project__c();
        //set field names
        sp.Project_Name__c = 'Learn dml batch 13';
        sp.Description__c = 'doing good everybody';

        //save it by 'insert dml'
        insert sp;
    }

    public static void dmlupdateDemo_stndObj1() {
        Account ac = new account();
        ac.Name = 'Salesforce';
        system.debug('acc before inserting : ' + ac);
        insert ac;
        system.debug('acc insert called : ' + ac);

        //update any record. WE MUST HVE ID.
        ac.name = 'Salesforce Inc.';
        //update dml
        update ac;
        system.debug('after updating ' + ac);
    }

    public static void dmlUpdateDemo_stndObj3() {
        //1. get record from org
        account acc = [select id, name from account where name = 'softinnovas' limit 1];

        //update name
        acc.Name = 'SoftInnovas Inc.';
        acc.Phone = '9556789451';
        //update dml
        update acc;
    }
    public static void dmlInsertDemo_cstmObj2(){
        Salesforce_Project__c sp = [select id, name from Salesforce_Project__c ORDER BY CreatedDate desc limit 1];

        Salesforce_Ticket__c newST = new Salesforce_Ticket__c();
        newST.Subject__c = 'Create related record';
        newST.Priority__c = 'High';
        newST.Status__c = 'New';
        newST.Requested_by_date__c = date.today();

        newST.Salesforce_Project__c = sp.id;

        insert newST;
    }

    public static void dmlMultipleRecordInsert_right1(){
        list<account> listAcc = new  list<account>();
        account acc1= new account();
        acc1.Name = 'nulk acc1';
        listAcc.add(acc1);

        account acc2= new account();
        acc2.Name = 'nulk acc2';
        listAcc.add(acc2);

        account acc3= new account();
        acc3.Name = 'nulk acc3';
        listAcc.add(acc3);
        
        insert listAcc;
    }
    public static void dmlMultipleRecordInsert_right2(){

    list<account> ListAcc = new list<account>();
    for (Integer i = 0; i < 160; i++){
        account acc = new account();
        acc.Name='softinnovas ' + i;
        acc.Phone = '723647823' + i;
        acc.AccountNumber = ' acs' + i;
        acc.Active__c = 'yes';
        listAcc.add(acc);

    }
    if(!listAcc.isEmpty()){
        insert ListAcc;
    }
    }
    public static void dmlMultipleRecordUpdate_right1(){
        list <account> listAccount = [select id, name from account order by createddate desc limit 20];
        for (account acc: listAccount){
            acc.name=acc.name + 'B.0';

        }
        update listAccount;
    }
    public static void dmlMultipleRecordUpdate_right2() {
        list<account> listAccount = [select id, name, Active__c from account];

        list<account> updateAccount = new list<account>();
        //System.SObjectException: SObject row was retrieved via SOQL without querying the requested field: Account.Active__c
        for (account eachAcc : listAccount) {
            if (eachAcc.Active__c == 'Yes') {
                eachAcc.Name += ' Yy';
                updateAccount.add(eachAcc);
            }else if (eachAcc.Active__c == null) {
                eachAcc.Name += ' Nn';
                updateAccount.add(eachAcc);
        }
    }
        if (!updateAccount.isEmpty()) {
            update updateAccount;
        }
}
    }