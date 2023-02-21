trigger ConTrigger on Contact (before update, after update) {
    if(trigger.isBefore && trigger.isUpdate){
        System.debug('before update');
    }
    if(trigger.isAfter && trigger.isUpdate){
    System.debug('after update');
}
}