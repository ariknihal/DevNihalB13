trigger TriggerLeadAssigment on lead (before insert, before update) {
    list<lead> newleads = trigger.new;

    if(trigger.isInsert){
        for(lead einsert : newleads) {
            System.debug('each created records = ' + newleads);
        }
    }

    if(trigger.isUpdate){
        for(lead eupdate : newleads){
            System.debug('each updated records = ' + eupdate.Id + 'name ' + eupdate.Name + 'description ' + eupdate.Description );
            
        }
    }


}