/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import java.sql.Connection;
import Conexion.Conexion;
import Clases.Login;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author chida
 */
public class LoginDAO {

    public Connection conexion;

    public LoginDAO() {
    }

    //Agregar-------------------------------------------------------------------
    public boolean agregarLogin(Login login) throws SQLException {
        boolean centinela = false;

        try {

            //Abrir conexión
            this.conexion = new Conexion().obtenerConexion();
            String llamada = "{ call SP_AGREGAR_LOGIN(?,?,?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);

            //Pasar atributos
            cstmt.setString(1, login.getNombre_usuario());
            cstmt.setString(2, login.getContrasenia());
            cstmt.setString(3, login.getRut_cliente());

            if (cstmt.executeUpdate() > 0) {
                centinela = true;
            }

        } catch (Exception e) {
            System.out.println("Error al Agregar Login" + e.getMessage());

        } finally {

            //Cerrar Conexión
            this.conexion.close();
        }

        return centinela;
    }

    //Listar--------------------------------------------------------------------
    public List<Login> listarLogin() throws SQLException {
        List<Login> listado = new ArrayList<>();

        try {
            this.conexion = new Conexion().obtenerConexion();
            String llamada = " { call SP_LISTAR_LOGIN(?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            //pasamos cursor
            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            cstmt.execute();

            ResultSet rs = (ResultSet) cstmt.getObject(1);

            while (rs.next()) {

                Login l = new Login();
                l.setNombre_usuario(rs.getString("nombre_usuario"));
                l.setContrasenia(rs.getString("contrasenia"));
                l.setRut_cliente(rs.getString("rut_cliente"));

                listado.add(l);
            }
        } catch (Exception e) {
            System.out.println("Error al listar logins" + e.getMessage());
        } finally {
            this.conexion.close();
        }
        return listado;
    }
}
