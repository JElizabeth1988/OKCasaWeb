/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TEST;


import Clases.Cliente;
import Dao.ClienteDao;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
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
    
        try {
            
          /*Cliente c = new Cliente("13697138-7", "Ximena", "Nayareth", "Gómez", "Pacheco", "Rucalin 4100", 965172587, "sxs@gsa.cl", "Si", 2);
           
           if(dao.agregarCliente(c)){
               System.out.println("Cliente Guardado");
           } else{
               System.out.println("Cliente no Guardado");
           }*/
        
            List<Cliente>listado = dao.listarClientes();
            for (Cliente cliente : listado) {
                System.out.println(cliente.toString());
            }
            
           
            
        } catch (Exception e) {
            
            System.out.println("Error al ejecutar"+e.getMessage());
        }
                    
    
    }
    }



