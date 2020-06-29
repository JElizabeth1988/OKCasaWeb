/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.Conexion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import ws.Agenda;

/**
 *
 * @author chida
 */
public class AgendaDao {

    public Connection conexion;

    public AgendaDao() {
    }

    //Agregar-------------------------------------------------------------------
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
}
