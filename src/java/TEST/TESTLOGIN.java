/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TEST;

import Clases.Usuario;
import Dao.UsuarioDAO;
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
        
          UsuarioDAO dao = new UsuarioDAO();
    
        try {
            
           Usuario l = new Usuario("cami2309", "camii2102", "13697138-7",2);
           
           if(dao.agregarUsuario(l)){
               System.out.println("Login Guardado");
           } else{
               System.out.println("Login no Guardado");
           }
        
            
        } catch (Exception e) {
            
            System.out.println("Error al ejecutar"+e.getMessage());
        }
        
        
    }
    
}
