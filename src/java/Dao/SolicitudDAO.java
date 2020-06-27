/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Clases.ListaSolicitud;
import Conexion.Conexion;
import Clases.Solicitud;
import java.sql.CallableStatement;
import java.sql.Connection;
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
    public boolean agregarSolicitud(Solicitud solicitud) throws SQLException {
        boolean centinela = false;

        try {

            //Abrir conexión
            this.conexion = new Conexion().obtenerConexion();
            String llamada = "{ call SP_AGREGAR_SOLICITUD(?,?,?,?,?,?,?,?,?,?,?,?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);

 
            //Pasar atributos
            cstmt.setInt(1, solicitud.getId_solicitud());
            cstmt.setDate(2, solicitud.getFecha_solicitud());
            cstmt.setString(3, solicitud.getDireccion_vivienda());
            cstmt.setString(4, solicitud.getConstructora());
            cstmt.setString(5, solicitud.getRut_cliente());
            cstmt.setString(6, solicitud.getTipo_pago());
            cstmt.setInt(7, solicitud.getPago());
            cstmt.setDouble(8, solicitud.getDescuento());
            cstmt.setString(9, solicitud.getEstado());
            cstmt.setInt(10, solicitud.getId_agenda());
            cstmt.setInt(11, solicitud.getId_comuna());
            cstmt.setInt(12, solicitud.getId_servicio());

            if (cstmt.executeUpdate() > 0) {
                centinela = true;
            }

        } catch (Exception e) {
            System.out.println("Error al Agregar Solicitud" + e.getMessage());

        } finally {

            //Cerrar Conexión
            this.conexion.close();
        }

        return centinela;
    }

    //Listar--------------------------------------------------------------------
    public List<ListaSolicitud> listarSolicitudes() throws SQLException {
        List<ListaSolicitud> listadoSol = new ArrayList<>();

        try {
            this.conexion = new Conexion().obtenerConexion();
            String llamada = " { call SP_LISTAR_SOLICITUDES(?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            //pasamos cursor
            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            cstmt.execute();

            ResultSet rs = (ResultSet) cstmt.getObject(1);

            while (rs.next()) {

                ListaSolicitud s = new ListaSolicitud();
                s.setId_solicitud(rs.getInt("id_solicitud"));
                s.setFecha_solicitud(rs.getDate("fecha_solicitud"));
                s.setDireccion_vivienda(rs.getString("direccion_vivienda"));
                s.setConstructora(rs.getString("constructora"));
                s.setRut_cliente(rs.getString("rut_cliente"));
                s.setTipo_pago(rs.getString("tipo_pago"));
                s.setPago(rs.getInt("pago"));
                s.setDescuento(rs.getDouble("descuento"));
                s.setEstado(rs.getString("estado"));
                s.setDia(rs.getDate("dia"));
                s.setHora(rs.getString("hora"));
                s.setNombre_comuna(rs.getString("comuna"));
                s.setNombre_servicio(rs.getString("servicio"));

                listadoSol.add(s);
            }
        } catch (Exception e) {
            System.out.println("Error al listar solicitudes" + e.getMessage());
        } finally {
            this.conexion.close();
        }
        return listadoSol;
    }

    //Eliminar------------------------------------------------------------------
    public boolean eliminarSolicitud(int codigo) throws SQLException {
        boolean centinela = false;

        try {

            //Abrir conexión
            this.conexion = new Conexion().obtenerConexion();
            String llamada = "DELETE FROM SOLICITUD WHERE ID_SOLICITUD = "+codigo;
            CallableStatement cstmt = this.conexion.prepareCall(llamada);

            if (cstmt.executeUpdate()>0) {
                centinela = true;
            }

        } catch (Exception e) {
            System.out.println("Error al Eliminar Solicitud" + e.getMessage());

        } finally {

            //Cerrar Conexión
            this.conexion.close();
        }

        return centinela;
    }
}
