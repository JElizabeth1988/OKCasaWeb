/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TEST;

import Dao.AgendaDao;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author chida
 */
public class TESTAGENDA {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        AgendaDao dao = new AgendaDao();
        
        try {
            
            if (dao.modificarAgenda(10)) {
                System.out.println("Modificado");
            }else{
                System.out.println("No modificado");
            }

            
        } catch (SQLException ex) {
            System.out.println("nop"+ex.getMessage());
        }
    }
    
}
