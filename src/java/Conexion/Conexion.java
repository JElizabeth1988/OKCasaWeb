/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author chida
 */
public class Conexion {

    private static Connection conexion;

    private String usuario = "OKCasa";
    private String pass = "OKCasa";
    private String url = "jdbc:oracle:thin:" + usuario + "/" + pass + "@localhost:1521:orcl";

    public Conexion() {

        try {

            //Cargar librería JDBC para oracle
            Class.forName("oracle.jdbc.OracleDriver").newInstance();
            this.conexion = DriverManager.getConnection(url,usuario,pass);

        } catch (Exception e) {
            System.out.println("Error de Conexión" + e.getMessage());
        }
    }

    public Connection obtenerConexion() {

        return conexion;
    }

}
