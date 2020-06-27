/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TEST;

import Clases.ListaSolicitud;
import Clases.Solicitud;
import Dao.SolicitudDAO;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
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

            /*Date date = new Date();
             //Caso 1: obtener la hora y salida por pantalla con formato:
             DateFormat hourFormat = new SimpleDateFormat("HH:mm");
             System.out.println("Hora: " + hourFormat.format(date));
             //Caso 2: obtener la fecha y salida por pantalla con formato:
             DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
             System.out.println("Fecha: " + dateFormat.format(date));*/
            
            /*Solicitud so = new Solicitud(100, null, "dewdewcdewd", "dwedewdewd", "19385798-1", "dewdewdwed", 30000, 0.2, "dewdewd", 1, 2, 3);
            if (dao.agregarSolicitud(so)) {

                System.out.println("Solicitud Guardada");
            } else {
                System.out.println("Solicitud no Guardada");
            }
*/
            List<ListaSolicitud>listado = dao.listarSolicitudes();
             for (ListaSolicitud solicitud : listado) {
             System.out.println(solicitud.toString());
             }
        } catch (Exception e) {
            System.out.println("Error al ejecutar" + e.getMessage());
        }

    }

}
