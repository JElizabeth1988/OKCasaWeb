/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import java.sql.Connection;
import Conexion.Conexion;
import Clases.Usuario;
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
public class UsuarioDAO {

    public Connection conexion;

    public UsuarioDAO() {
    }

    //Agregar-------------------------------------------------------------------
    public boolean agregarUsuario(Usuario us) throws SQLException {
        boolean centinela = false;

        try {

            //Abrir conexión
            this.conexion = new Conexion().obtenerConexion();
            String llamada = "{ call SP_AGREGAR_USUARIO(?,?,?,?,?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);

            //Pasar atributos
            cstmt.setInt(1, us.getCodigo());
            cstmt.setString(2, us.getNombre_usuario());
            cstmt.setString(3, us.getContrasenia());
            cstmt.setString(4, us.getRut_cliente());
            cstmt.setInt(5, us.getId_tipo_usuario());

            if (cstmt.executeUpdate() > 0) {
                centinela = true;
            }

        } catch (Exception e) {
            System.out.println("Error al Agregar Usuario" + e.getMessage());

        } finally {

            //Cerrar Conexión
            this.conexion.close();
        }

        return centinela;
    }

    //Listar--------------------------------------------------------------------
    public List<Usuario> listarUsuario() throws SQLException {
        List<Usuario> listado = new ArrayList<>();

        try {
            this.conexion = new Conexion().obtenerConexion();
            String llamada = " { call SP_LISTAR_USUARIO(?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            //pasamos cursor
            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            cstmt.execute();

            ResultSet rs = (ResultSet) cstmt.getObject(1);

            while (rs.next()) {

                Usuario l = new Usuario();
                l.setNombre_usuario(rs.getString("nombre_usuario"));
                l.setContrasenia(rs.getString("contrasenia"));
                l.setRut_cliente(rs.getString("rut_cliente"));
                l.setId_tipo_usuario(rs.getInt("id_tipo_usuario"));

                listado.add(l);
            }
        } catch (Exception e) {
            System.out.println("Error al listar usuarios" + e.getMessage());
        } finally {
            this.conexion.close();
        }
        return listado;
    }
    
    //LOGIN---------------------------------------------------------------------
    public int Login (String user, String pass) throws SQLException{
    
     int tipo = 0;
     
        try {
            
            this.conexion = new Conexion().obtenerConexion();
            String script = "SELECT ID_TIPO_USUARIO FROM USUARIO "
                    + "WHERE NOMBRE_USUARIO = '"+user+"' AND "
                    + "CONTRASENIA = '"+pass+"' ";
            CallableStatement cstmt = this.conexion.prepareCall(script);
            
            ResultSet rs = cstmt.executeQuery();
            
            while (rs.next()) {                
                tipo = rs.getInt("ID_TIPO_USUARIO");
            }
        } catch (Exception e) {
            System.out.println("Error en Login"+e.getMessage());
        }finally{
            
            this.conexion.close();
        }
        return tipo;
    }
    
}
