/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TEST;

import Clases.Solicitud;
import Dao.SolicitudDAO;
import java.util.List;
/**
 *
 * @author chida
 */
public class TESTSOLICITUD {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here 
    
          SolicitudDAO dao = new SolicitudDAO();
    
       try {
            
           /*Solicitud s = new Solicitud(100, "05/06/2020", "10:10", "Olmos 1010", "Bio bio", "13697138-7", 2, 2, 5);
           
           if(dao.agregarSolicitud(s)){
               
               System.out.println("Solicitud Guardada");
           } else{
               System.out.println("Solicitud no Guardada");
           }*/
           
            List<Solicitud>listado = dao.listarSolicitudes();
            for (Solicitud solicitud : listado) {
                System.out.println(solicitud.toString());
            }
           
        } catch (Exception e) {
             System.out.println("Error al ejecutar"+e.getMessage());
        }
    
    }
    
}
