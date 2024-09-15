public class StudentCreatedHandler {
    
    public static void studentCreated(){
        
        List<Student__c> studentToUpdate=new List<Student__c>();
        
        for(Student__c student:[SELECT Id,Comment__c FROM Student__c WHERE Id IN:Trigger.new LIMIT 200]){
            student.Comment__c='Done';
            studentToUpdate.add(student);
        }
        if(studentToUpdate!=null){
            update studentToUpdate;
        }
        
    }

}