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
    private String rut;
    private String primer_nombre;
    private String segundo_nombre;
    private String ap_paterno;
    private String ap_materno;
    private String direccion;
    private int telefono;
    private String email;
    private Boolean hipotecario;

    //comuna
    private Comuna comu;

    public Cliente() {
        comu=new Comuna();
    }

    public Cliente(String rut, String primer_nombre, String segundo_nombre, String ap_paterno, String ap_materno, String direccion, int telefono, String email, Boolean hipotecario, Comuna comu) {
        this.rut = rut;
        this.primer_nombre = primer_nombre;
        this.segundo_nombre = segundo_nombre;
        this.ap_paterno = ap_paterno;
        this.ap_materno = ap_materno;
        this.direccion = direccion;
        this.telefono = telefono;
        this.email = email;
        this.hipotecario = hipotecario;
        this.comu = comu;
    }

 
    //SET

    public void setRut(String rut) {
        this.rut = rut;
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

    public void setHipotecario(Boolean hipotecario) {
        this.hipotecario = hipotecario;
    }

    public void setComu(Comuna comu) {
        this.comu = comu;
    }
   
    //GET

    public String getRut() {
        return rut;
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

    public Boolean getHipotecario() {
        return hipotecario;
    }

    public Comuna getComu() {
        return comu;
    }
    
    
}



