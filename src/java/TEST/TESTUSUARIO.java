/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TEST;

import Clases.Usuario;
import Dao.UsuarioDAO;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author chida
 */
public class TESTUSUARIO {

    /**
     * @param args the command line arguments
     */
     public static void main(String[] args) {
        // TODO code application logic here

        
         UsuarioDAO dao = new UsuarioDAO();
    
        try {
           /* 
          Usuario u = new Usuario(100, "prueba", "hola123", "13697138-7", 2);*/
          
           if(dao.buscarUsuario("elisa_ngr7")){
               System.out.println("Usuario existe");
           } else{
               System.out.println("Usuario no Guardado");
           }
        
            
        } catch (Exception e) {
            
            System.out.println("Error al ejecutar"+e.getMessage());
        }
                    
    
    }
    }
