/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TEST;

import Clases.Login;
import Dao.LoginDAO;
import java.util.List;

/**
 *
 * @author chida
 */
public class TESTLOGIN {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
          LoginDAO dao = new LoginDAO();
    
        try {
            
           Login l = new Login("cami2309", "camii2102", "17385798-1");
           
           if(dao.agregarLogin(l)){
               System.out.println("Login Guardado");
           } else{
               System.out.println("Login no Guardado");
           }
        
            
        } catch (Exception e) {
            
            System.out.println("Error al ejecutar"+e.getMessage());
        }
        
        
    }
    
}
