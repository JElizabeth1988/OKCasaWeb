/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BaseDato;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author chida
 */
public class Conexion {
   
    private Connection conectar;

    public Conexion() {  
    
       conectarDB();  
    }                                                        

    public Connection getConectar() {
        return conectar;
    }
    
    //Método customer que hace enlace con la base de datos , no retorna nada
    
    public void conectarDB()
    {
        try {
            Class.forName("oracle.jdbc.OracleDriver"); 
            String url="jdbc:oracle:thin:@localhost:1521:XE"; 
            conectar = DriverManager.getConnection(url,"OKCasa", "OKCasa"); 
        } 
        catch (Exception ex) {           
            JOptionPane.showMessageDialog(null,"Error al conectar Base Datos :"+ex.getMessage()); 
            
        }
    }  

    public void desconectarBD()   
    {
        try
        {
           getConectar().close();
        }
        catch (Exception ex){
          JOptionPane.showMessageDialog(null,"Error al conectar Base Datos :"+ex.getMessage());   
        }
    }
    
}

