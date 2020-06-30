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
public class Cliente {
    private String rut_cliente;
    private String primer_nombre;
    private String segundo_nombre;
    private String ap_paterno;
    private String ap_materno;
    private String direccion;
    private int telefono;
    private String email;


    //comuna
    private int id_comuna;
    
    public Cliente() {
    }

    public Cliente(String rut_cliente, String primer_nombre, String segundo_nombre, String ap_paterno, String ap_materno, String direccion, int telefono, String email, int id_comuna) {
        this.rut_cliente = rut_cliente;
        this.primer_nombre = primer_nombre;
        this.segundo_nombre = segundo_nombre;
        this.ap_paterno = ap_paterno;
        this.ap_materno = ap_materno;
        this.direccion = direccion;
        this.telefono = telefono;
        this.email = email;
        this.id_comuna = id_comuna;
    }

    public void setRut_cliente(String rut_cliente) {   
        this.rut_cliente = rut_cliente;
    }

    public void setPrimer_nombre(String primer_nombre) {    
        this.primer_nombre = primer_nombre;
    }

    public void setSegundo_nombre(String segundo_nombre) {
        this.segundo_nombre = segundo_nombre;
    }

    public void setAp_paterno(String ap_paterno) {
        this.ap_paterno = ap_paterno;
    }

    public void setAp_materno(String ap_materno) {
        this.ap_materno = ap_materno;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setId_comuna(int id_comuna) {
        this.id_comuna = id_comuna;
    }
   
    public String getRut_cliente() {
        return rut_cliente;
    }

    public String getPrimer_nombre() {
        return primer_nombre;
    }

    public String getSegundo_nombre() {
        return segundo_nombre;
    }

    public String getAp_paterno() {
        return ap_paterno;
    }

    public String getAp_materno() {
        return ap_materno;
    }

    public String getDireccion() {
        return direccion;
    }

    public int getTelefono() {
        return telefono;
    }

    public String getEmail() {
        return email;
    }

    //GETTER
    public int getId_comuna() {   
        return id_comuna;
    }

    @Override
    public String toString() {
        return "Cliente{" + "rut_cliente=" + rut_cliente + ", primer_nombre=" + primer_nombre + ", segundo_nombre=" + segundo_nombre + ", ap_paterno=" + ap_paterno + ", ap_materno=" + ap_materno + ", direccion=" + direccion + ", telefono=" + telefono + ", email=" + email + ", id_comuna=" + id_comuna + '}';
    }

 
 

    
}



