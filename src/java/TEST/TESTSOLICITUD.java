/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TEST;

import Clases.ListaSolicitud;
import Clases.Solicitud;
import Dao.SolicitudDAO;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import ws.WSSeguimiento_Service;

/**
 *
 * @author chida
 */
public class TESTSOLICITUD {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException {
        // TODO code application logic here 

        SolicitudDAO dao = new SolicitudDAO();

        try {

            /*Date date = new Date();
             //Caso 1: obtener la hora y salida por pantalla con formato:
             DateFormat hourFormat = new SimpleDateFormat("HH:mm");
             System.out.println("Hora: " + hourFormat.format(date));
             //Caso 2: obtener la fecha y salida por pantalla con formato:
             DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
             System.out.println("Fecha: " + dateFormat.format(date));*/
            
           /*List<Solicitud>listado = dao.buscarSolicitud(1);
             for (Solicitud solicitud : listado){ 
             System.out.println(solicitud.toString());
             }
            */
            Solicitud so = new Solicitud(1, null, "hello", "dwedewdewd", "19385798-1", "dewdewdwed", 30000, 0.2, "dewdewd", 1, 2, 3);
            if (dao.eliminarSolicitud(15)) {
                System.out.println("Solicitud Modificada");
            } else {
                System.out.println("Solicitud no Modificada");
            }
            
            /*List<ListaSolicitud>listado = dao.listarPorRut("13697138-7");
             for (ListaSolicitud solicitud : listado) {
             System.out.println(solicitud.toString());
             }*/
             
        } catch (Exception e) {
            System.out.println("Error al ejecutar" + e.getMessage());
        }

    }

}
