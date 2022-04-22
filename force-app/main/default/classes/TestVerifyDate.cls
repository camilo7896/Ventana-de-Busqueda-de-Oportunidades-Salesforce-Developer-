@isTest
public class TestVerifyDate {
    @isTest 
    static void CheckDatesTest2(){
    
        Date date1 = Date.newInstance(2022, 04, 03);
        Date date2 = Date.newInstance(2022, 04, 010);
        
        Test.startTest();
        VerifyDate.CheckDates(date1,date2);
        
        System.assertEquals(Date.newInstance(2022, 04, 10), date2, 'Respuesta exitosa');
    }
    @isTest 
        static void CheckDatesTest1(){
          Date date1 = Date.newInstance(2022, 04, 03);
          Date date2 = Date.newInstance(2022, 04, 010);
             Test.startTest();
          Date response = VerifyDate.CheckDates(date1,date2);
        
        System.assertEquals(Date.newInstance(2022, 04, 31), response);
        }
}