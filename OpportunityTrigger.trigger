trigger OpportunityTrigger on Opportunity (after insert, before insert) {

    if(Trigger.isBefore){
        system.debug('EXECUTADO APOS INSERIR A OPORTUNIDADE');
    }
    
}