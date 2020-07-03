/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Clases.Comuna;
import Conexion.Conexion;
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
public class ComunaDAO {
    
    
    public Connection conexion;

    public ComunaDAO() {
    }
    
        //Listar--------------------------------------------------------------------
    public List<Comuna> listarComunas(int codigo) throws SQLException {
        List<Comuna> listado = new ArrayList<>();

        try {
            this.conexion = new Conexion().obtenerConexion();
            String llamada = " { call SP_LISTAR_COMUNAS(?,?) }";
            CallableStatement cstmt = this.conexion.prepareCall(llamada);
            cstmt.registerOutParameter(1, OracleTypes.CURSOR);
            cstmt.setInt(2, codigo);
            cstmt.execute();

            ResultSet rs = (ResultSet) cstmt.getObject(1);

            while (rs.next()) {

                Comuna c = new Comuna();
                c.setId_comuna(rs.getInt("id_comuna"));
                c.setNombre(rs.getString("nombre"));
   
                listado.add(c);
            }
        } catch (Exception e) {
            System.out.println("Error al listar comunas" + e.getMessage());
        } finally {
            this.conexion.close();
        }
        return listado;
    }

}
