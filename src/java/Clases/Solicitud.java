    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.Date;


/**
 *
 * @author chida
 */
public class Solicitud {
   private int id_solicitud;
   private Date fecha_solicitud;
   private String direccion_vivienda;
   
   
   //Constructora
   private String constructora;
   
   private String estado;
   
  //Cliente
   private String rut_cliente;
      
   //Agenda
   private int id_agenda;
   
   //Pago
   private int id_pago;
   
   //Comuna
   private int id_comuna;
   
   //Servicio
    private int id_servicio;

    public Solicitud() {
    }

    public Solicitud(int id_solicitud, Date fecha_solicitud, String direccion_vivienda, String constructora, String estado, String rut_cliente, int id_agenda, int id_pago, int id_comuna, int id_servicio) {
        this.id_solicitud = id_solicitud;
        this.fecha_solicitud = fecha_solicitud;
        this.direccion_vivienda = direccion_vivienda;
        this.constructora = constructora;
        this.estado = estado;
        this.rut_cliente = rut_cliente;
        this.id_agenda = id_agenda;
        this.id_pago = id_pago;
        this.id_comuna = id_comuna;
        this.id_servicio = id_servicio;
    }

    public void setId_solicitud(int id_solicitud) {   
        this.id_solicitud = id_solicitud;
    }

    public void setFecha_solicitud(Date fecha_solicitud) {
        this.fecha_solicitud = fecha_solicitud;
    }

    public void setDireccion_vivienda(String direccion_vivienda) {
        this.direccion_vivienda = direccion_vivienda;
    }

    public void setConstructora(String constructora) {
        this.constructora = constructora;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setRut_cliente(String rut_cliente) {
        this.rut_cliente = rut_cliente;
    }

    public void setId_agenda(int id_agenda) {
        this.id_agenda = id_agenda;
    }

    public void setId_pago(int id_pago) {
        this.id_pago = id_pago;
    }

    public void setId_comuna(int id_comuna) {
        this.id_comuna = id_comuna;
    }
    public void setId_servicio(int id_servicio) {
        this.id_servicio = id_servicio;
    }

    //GET

    public int getId_solicitud() {
        return id_solicitud;
    }

    public Date getFecha_solicitud() {
        return fecha_solicitud;
    }

    public String getDireccion_vivienda() {
        return direccion_vivienda;
    }

    public String getConstructora() {
        return constructora;
    }

    public String getEstado() {
        return estado;
    }

    public String getRut_cliente() {
        return rut_cliente;
    }

    public int getId_agenda() {
        return id_agenda;
    }

    public int getId_pago() {
        return id_pago;
    }

    public int getId_comuna() {
        return id_comuna;
    }

    public int getId_servicio() {
        return id_servicio;
    }

    @Override
    public String toString() {
        return "Solicitud{" + "id_solicitud=" + id_solicitud + ", fecha_solicitud=" + fecha_solicitud + ", direccion_vivienda=" + direccion_vivienda + ", constructora=" + constructora + ", estado=" + estado + ", rut_cliente=" + rut_cliente + ", id_agenda=" + id_agenda + ", id_pago=" + id_pago + ", id_comuna=" + id_comuna + ", id_servicio=" + id_servicio + '}';
    }
    
    
}
