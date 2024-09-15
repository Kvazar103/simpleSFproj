@isTest
public class StudentCreatedHandlerTest {
    
    @isTest
    private static void testStudentCreate(){
        
        Test.startTest();
        
        Student__c student=new Student__c(Name='Bill',Mark__c=5,Email__c='testEmail@gmail.com');
        
        insert student;
        
        Test.stopTest();
        
        Student__c newStudent=[SELECT Id,Comment__c FROM Student__c];
        
        system.assert(newStudent!=null);
        system.assertEquals(newStudent.Comment__c,'Done');
        
    }

}