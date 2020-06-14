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
public class Usuario {
    private int codigo;
    private String nombre_usuario;
    private String contrasenia;
    private String rut_cliente;
    private int id_tipo_usuario;

    public Usuario() {
        
    }

    public Usuario(int codigo, String nombre_usuario, String contrasenia, String rut_cliente, int id_tipo_usuario) {
        this.codigo = codigo;
        this.nombre_usuario = nombre_usuario;
        this.contrasenia = contrasenia;
        this.rut_cliente = rut_cliente;
        this.id_tipo_usuario = id_tipo_usuario;
    }

    
    //SETTER
    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    public void setRut_cliente(String rut_cliente) {
        this.rut_cliente = rut_cliente;
    }

    public void setId_tipo_usuario(int id_tipo_usuario) {
        this.id_tipo_usuario = id_tipo_usuario;
    }

    
    //GETTER

    public int getCodigo() {
        return codigo;
    }

    public String getNombre_usuario() {
        return nombre_usuario;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public String getRut_cliente() {
        return rut_cliente;
    }

    public int getId_tipo_usuario() {
        return id_tipo_usuario;
    }
    
    

    @Override
    public String toString() {
        return "Usuario{" + "codigo=" + codigo + ", nombre_usuario=" + nombre_usuario + ", contrasenia=" + contrasenia + ", rut_cliente=" + rut_cliente + ", id_tipo_usuario=" + id_tipo_usuario + '}';
    }

    

    
    

   
   

}
