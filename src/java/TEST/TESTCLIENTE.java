/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TEST;


import Clases.Cliente;
import Clases.Comuna;
import Dao.ClienteDao;
import Dao.ComunaDAO;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
/**
 *
 * @author chida
 */
public class TESTCLIENTE {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        /*Date date = new Date();
//Caso 1: obtener la hora y salida por pantalla con formato:
        DateFormat hourFormat = new SimpleDateFormat("HH:mm");
        System.out.println("Hora: " + hourFormat.format(date));
//Caso 2: obtener la fecha y salida por pantalla con formato:
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        System.out.println("Fecha: " + dateFormat.format(date));*/
        
       //----------------------------------------
        
        
         ClienteDao dao = new ClienteDao();
         ComunaDAO d = new ComunaDAO();
        try {
            
          Cliente c = new Cliente("19385798-1", "no", "Nayareth", "Gómez", "Pacheco", "Rucalin 4100", 965172587, "sxs@gsa.cl", 2);
           
           if(dao.ModificarCliente(c)){
               System.out.println("Cliente mod");
           } else{
               System.out.println("Cliente no mod");
           }
        
            /*List<Cliente> listado = dao.buscarCliente("19385798-1");
            for (Cliente cliente : listado) {
                System.out.println(cliente.toString());
            }
            
            /*List<Comuna>lis = d.listarComunas();
            for (Comuna comuna : lis) {
                System.out.println(comuna.toString());
            }
            */
           
            /*if (dao.eliminarCliente("12864223-4")) {
                System.out.println("Eliminado");
            }else{
                System.out.println("No eliminado");
            }

            */
        } catch (Exception e) {
            
            System.out.println("Error al ejecutar"+e.getMessage());
        }
                    
    
    }
    }



