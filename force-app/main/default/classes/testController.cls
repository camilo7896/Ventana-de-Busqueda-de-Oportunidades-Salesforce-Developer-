@isTest
public class testController {

  static TestMethod void multiplicarTest(){
     integer resultado= contactController.Multiplicar(9,10);
     System.assertEquals(90, resultado);
  }
}