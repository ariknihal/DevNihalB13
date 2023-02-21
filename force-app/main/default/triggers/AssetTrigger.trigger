trigger AssetTrigger on Asset (before insert, before update) {
if(trigger.isBefore){
    AssetHandler.assetHandlerUpdate(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
}

}