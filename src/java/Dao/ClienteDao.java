/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.Conexion;
import Clases.Cliente;
import Clases.ListaCliente;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author chida
 */
public class ClienteDao {

    public Connection conexion;

    public ClienteDao() {
    }

    //Agregar-------------------------------------------------------------------
    public boolean agregarCliente(Cliente cli) throws SQLException {
        boolean centinela = false;

        try {

            //Abrir conexión
            this.conexion = new Conexion().obtenerConexion();
            String llamada = "{ call SP_AGREGAR_CLIENTE(?,?,?,?,?,?,?,?,?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);

            //Pasar atributos
            cstmt.setString(1, cli.getRut_cliente());
            cstmt.setString(2, cli.getPrimer_nombre());
            cstmt.setString(3, cli.getSegundo_nombre());
            cstmt.setString(4, cli.getAp_paterno());
            cstmt.setString(5, cli.getAp_materno());
            cstmt.setString(6, cli.getDireccion());
            cstmt.setInt(7, cli.getTelefono());
            cstmt.setString(8, cli.getEmail());
            cstmt.setInt(9, cli.getId_comuna());

            if (cstmt.executeUpdate() > 0) {
                centinela = true;
            }

        } catch (Exception e) {
            System.out.println("Error al Agregar Cliente" + e.getMessage());

        } finally {

            //Cerrar Conexión
            this.conexion.close();
        }

        return centinela;
    }

    //Listar--------------------------------------------------------------------
    public List<ListaCliente> listarClientes() throws SQLException {
        List<ListaCliente> listado = new ArrayList<>();

        try {
            this.conexion = new Conexion().obtenerConexion();
            String llamada = " { call SP_LISTAR_CLIENTES(?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            //pasamos cursor
            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            cstmt.execute();

            ResultSet rs = (ResultSet) cstmt.getObject(1);

            while (rs.next()) {

                ListaCliente c = new ListaCliente();
                c.setRut_cliente(rs.getString("rut_cliente"));
                c.setPrimer_nombre(rs.getString("primer_nombre"));
                c.setSegundo_nombre(rs.getString("segundo_nombre"));
                c.setAp_paterno(rs.getString("ap_paterno"));
                c.setAp_materno(rs.getString("ap_materno"));
                c.setDireccion(rs.getString("direccion"));
                c.setTelefono(rs.getInt("telefono"));
                c.setEmail(rs.getString("email"));
                c.setNombre(rs.getString("nombre"));
                listado.add(c);
            }
        } catch (Exception e) {
            System.out.println("Error al listar clientes" + e.getMessage());
        } finally {
            this.conexion.close();
        }
        return listado;
    }

    //Eliminar------------------------------------------------------------------
    public boolean eliminarCliente(String rut) throws SQLException {
        boolean centinela = false;

        try {

            //Abrir conexión
            this.conexion = new Conexion().obtenerConexion();
            String llamada = " { CALL SP_ELIMINAR_CLIENTE(?) } ";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            cstmt.setString(1, rut);

            if (cstmt.executeUpdate() > 0) {
                centinela = true;
            }

        } catch (Exception e) {
            System.out.println("Error al Eliminar Cliente" + e.getMessage());

        } finally {

            //Cerrar Conexión
            this.conexion.close();
        }

        return centinela;
    }

    //LISTAR POR RUT--------------------------------------------------------------
    public List<Cliente> buscarCliente(String rut) throws SQLException {
        List<Cliente> lista = new ArrayList<>();

        try {
            this.conexion = new Conexion().obtenerConexion();
            String llamada = " { call SP_BUSCAR_CLIENTE(?,?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            cstmt.setString(2, rut);
            cstmt.execute();

            ResultSet rs = (ResultSet) cstmt.getObject(1);

            while (rs.next()) {

                Cliente c = new Cliente();
                c.setRut_cliente(rs.getString("rut_cliente"));
                c.setPrimer_nombre(rs.getString("primer_nombre"));
                c.setSegundo_nombre(rs.getString("segundo_nombre"));
                c.setAp_paterno(rs.getString("ap_paterno"));
                c.setAp_materno(rs.getString("ap_materno"));
                c.setDireccion(rs.getString("direccion"));
                c.setTelefono(rs.getInt("telefono"));
                c.setEmail(rs.getString("email"));
                c.setId_comuna(rs.getInt("id_comuna"));

                lista.add(c);
            }
        } catch (Exception e) {
            System.out.println("Error al listar solicitudes" + e.getMessage());
        } finally {
            this.conexion.close();
        }
        return lista;
    }

    //MODIFICAR------------------------------------------------------------------
    public boolean ModificarCliente(Cliente cli) throws SQLException {
        boolean centinela = false;

        try {

            //Abrir conexión
            this.conexion = new Conexion().obtenerConexion();
            String llamada = "{ call SP_ACTUALIZAR_CLIENTE(?,?,?,?,?,?,?,?,?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);

            //Pasar atributos
            cstmt.setString(1, cli.getRut_cliente());
            cstmt.setString(2, cli.getPrimer_nombre());
            cstmt.setString(3, cli.getSegundo_nombre());
            cstmt.setString(4, cli.getAp_paterno());
            cstmt.setString(5, cli.getAp_materno());
            cstmt.setString(6, cli.getDireccion());
            cstmt.setInt(7, cli.getTelefono());
            cstmt.setString(8, cli.getEmail());
            cstmt.setInt(9, cli.getId_comuna());

            if (cstmt.executeUpdate() > 0) {
                centinela = true;
            }

        } catch (Exception e) {
            System.out.println("Error al Modificar Cliente" + e.getMessage());

        } finally {

            //Cerrar Conexión
            this.conexion.close();
        }

        return centinela;
    }

}
