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
public class ClienteDao {
    PreparedStatement ps;
    ResultSet rs;
    Conexion c= new Conexion();
    Connection con;
        
    public List listar(){
        
        List<Cliente>lista=new ArrayList<>();
        String sql="SELECT * FROM CLIENTE";
        
        try {
            con=c.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while (rs.next()) {
                Cliente cli =new Cliente();
                cli.setPrimer_nombre(rs.getString(1));
                cli.setSegundo_nombre(rs.getString(2));
                cli.setAp_paterno(rs.getString(3));
                cli.setAp_materno(rs.getString(4));
                cli.setDireccion(rs.getString(5));
                cli.setTelefono(rs.getInt(6));
                cli.setEmail(rs.getString(7));
                cli.setHipotecario(rs.getBoolean(8));
                cli.setComu(rs.getObject(9, Comuna.class));
                
               
                lista.add(cli);
            }
                    
        } catch (Exception e) {
        }
        
        return lista;
    }
}
