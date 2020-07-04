/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.Conexion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import oracle.jdbc.OracleTypes;
import ws.Agenda;

/**
 *
 * @author chida
 */
public class AgendaDao {

    public Connection conexion;

    public AgendaDao() {
    }

    //Modificar-------------------------------------------------------------------
    public boolean modificarAgenda(int id_agenda) throws SQLException {
        boolean centinela = false;

        try {

            //Abrir conexión
            this.conexion = new Conexion().obtenerConexion();
            String llamada = "{ CALL SP_MODIFICAR_AGENDA(?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            cstmt.setInt(1, id_agenda);

            if (cstmt.executeUpdate() > 0) {
                centinela = true;
            }

        } catch (Exception e) {
            System.out.println("Error al Modificar Agenda" + e.getMessage());

        } finally {

            //Cerrar Conexión
            this.conexion.close();
        }

        return centinela;
    }

    //BuscarAgenda-------------------------------------------------------------------
    public boolean buscarAgenda(int id_agenda) throws SQLException {
        boolean centinela = false;

        try {

            //Abrir conexión
            this.conexion = new Conexion().obtenerConexion();
            String llamada = "{ CALL SP_BUSCAR_AGENDA(?,?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            cstmt.setInt(2, id_agenda);
            cstmt.execute();
            ResultSet rs = (ResultSet) cstmt.getObject(1);

            if (rs.next()) {
                centinela = true;
            }

        } catch (Exception e) {
            System.out.println("Error al Buscar Agenda" + e.getMessage());

        } finally {

            //Cerrar Conexión
            this.conexion.close();
        }

        return centinela;
    }
    
    //Modificar por Admin
    
    public boolean modificarAgendaAdmin(int id_agenda) throws SQLException {
        boolean centinela = false;

        try {

            //Abrir conexión
            this.conexion = new Conexion().obtenerConexion();
            String llamada = "{ CALL SP_MODIFICAR_AGENDA_AD(?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            cstmt.setInt(1, id_agenda);

            if (cstmt.executeUpdate() > 0) {
                centinela = true;
            }

        } catch (Exception e) {
            System.out.println("Error al Modificar Agenda" + e.getMessage());

        } finally {

            //Cerrar Conexión
            this.conexion.close();
        }

        return centinela;
    }

}
