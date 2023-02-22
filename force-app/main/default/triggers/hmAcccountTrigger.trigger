trigger hmAcccountTrigger on Account (after insert) {
    hmAccountHandler.createContacts(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
  }
  