/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import BaseDatos.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author chida
 */
public class ComunaDAO {
    PreparedStatement ps;
    ResultSet rs;
    Conexion c= new Conexion();
    Connection con;
        
    public List listar(){
        
        List<Comuna>lista=new ArrayList<>();
        String sql="SELECT * FROM COMUNA";
        
        try {
            con=c.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while (rs.next()) {
                Comuna co=new Comuna();
                co.setId_comuna(rs.getInt(1));
                co.setNombre(rs.getString(2));
                lista.add(co);
            }
                    
        } catch (Exception e) {
        }
        
        return lista;
    }
            
            
    
    
}
