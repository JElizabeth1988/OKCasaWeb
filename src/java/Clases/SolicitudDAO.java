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
public class SolicitudDAO {
    PreparedStatement ps;
    ResultSet rs;
    Conexion c= new Conexion();
    Connection con;
        
    public List listar(){
        
        List<Solicitud>lista=new ArrayList<>();
        String sql="SELECT * FROM SOLICITUD";
        
        try {
            con=c.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while (rs.next()) {
                Solicitud so = new Solicitud();
                so.setId_solicitud(rs.getInt(1));
                so.setFecha_solicitud(rs.getString(2));
                so.setHora_solicitud(rs.getString(3));
                so.setCli(rs.getObject(4, Cliente.class));
                so.setAgen(rs.getObject(5, Agenda.class));
                so.setPag(rs.getObject(6, Pago.class));
                lista.add(so);
            }
                    
        } catch (Exception e) {
        }
        
        return lista;
    }
}
