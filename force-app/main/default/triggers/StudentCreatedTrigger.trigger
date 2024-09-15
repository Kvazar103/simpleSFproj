trigger StudentCreatedTrigger on Student__c (after insert) {
    
    if(Trigger.isAfter && Trigger.isInsert){
        StudentCreatedHandler.studentCreated();
    }

}