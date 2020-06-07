/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.Conexion;
import Clases.Solicitud;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author chida
 */
public class SolicitudDAO {
    
    public Connection conexion;

    public SolicitudDAO() {
    }
    
    //Agregar-------------------------------------------------------------------
    public boolean agregarSolicitud(Solicitud solicitud) throws SQLException{
        boolean centinela = false;
        
        try {
            
            //Abrir conexión
            this.conexion = new Conexion().obtenerConexion();
            String llamada = "{ call SP_AGREGAR_SOLICITUD(?,?,?,?,?,?,?,?,?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);

            //Pasar atributos
            cstmt.setInt(1, solicitud.getId_solicitud());
            cstmt.setString(2, solicitud.getFecha_solicitud());
            cstmt.setString(3, solicitud.getHora_solicitud());
            cstmt.setString(4, solicitud.getDireccion_vivienda());
            cstmt.setString(5, solicitud.getConstructora());
            cstmt.setString(6, solicitud.getRut_cliente());
            cstmt.setInt(7, solicitud.getId_agenda());
            cstmt.setInt(8, solicitud.getId_pago());
            cstmt.setInt(9, solicitud.getId_comuna());
            
            if (cstmt.executeUpdate()>0) {
               centinela = true;
            }
            
        } catch (Exception e) {
            System.out.println("Error al Agregar Solicitud"+e.getMessage());
        
        }finally{
            
            //Cerrar Conexión
            this.conexion.close();
        }
        
        return centinela;
    }
    
    
    //Listar--------------------------------------------------------------------
     public List<Solicitud> listarSolicitudes() throws SQLException{
        List<Solicitud> listado = new ArrayList<>();
        
        try {
            this.conexion = new Conexion().obtenerConexion();
            String llamada = " { call SP_LISTAR_SOLICITUDES(?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            //pasamos cursor
            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            cstmt.execute();
            
            ResultSet rs = (ResultSet) cstmt.getObject(1);
            
            while (rs.next()) {
                
                Solicitud s = new Solicitud();
                s.setId_solicitud(rs.getInt("id_solicitud"));
                s.setFecha_solicitud(rs.getString("fecha_solicitud"));
                s.setHora_solicitud(rs.getString("hora_solicitud"));
                s.setDireccion_vivienda(rs.getString("direccion_vivienda"));
                s.setConstructora(rs.getString("constructora"));
                s.setRut_cliente(rs.getString("rut_cliente"));
                s.setId_agenda(rs.getInt("id_agenda"));
                s.setId_pago(rs.getInt("id_pago"));
                s.setId_comuna(rs.getInt("id_comuna"));
                
                listado.add(s);
            }
        } catch (Exception e) {
            System.out.println("Error al listar solicitudes"+e.getMessage());
        }finally{
            this.conexion.close();
        }
        return listado;
    } 
    
    
    //Eliminar

}