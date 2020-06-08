/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author chida
 */
public class Login {
    private String nombre_usuario;
    private String contrasenia;
    private String rut_cliente;

    public Login() {
        
    }

    public Login(String nombre_usuario, String contrasenia, String rut_cliente) {
        this.nombre_usuario = nombre_usuario;
        this.contrasenia = contrasenia;
        this.rut_cliente = rut_cliente;
    }

    

    //SETTER

    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    public void setRut_cliente(String rut_cliente) {
        this.rut_cliente = rut_cliente;
    }


    
    //GETTER

    public String getNombre_usuario() {
        return nombre_usuario;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public String getRut_cliente() {
        return rut_cliente;
    }

    @Override
    public String toString() {
        return "Login{" + "nombre_usuario=" + nombre_usuario + ", contrasenia=" + contrasenia + ", rut_cliente=" + rut_cliente + '}';
    }

   
   

}
