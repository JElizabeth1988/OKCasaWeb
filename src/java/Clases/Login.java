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
    
    //CLIENTE
    private Cliente cli;

    //SACAR PF DE TABLA CLIENTE (!)
    
    public Login() {
        cli = new Cliente();
    }

    public Login(String nombre_usuario, String contrasenia, Cliente cli) {
        this.nombre_usuario = nombre_usuario;
        this.contrasenia = contrasenia;
        this.cli = cli;
    }

    //SETTER

    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    public void setCli(Cliente cli) {
        this.cli = cli;
    }
    
    //GETTER

    public String getNombre_usuario() {
        return nombre_usuario;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public Cliente getCli() {
        return cli;
    }
    

}
