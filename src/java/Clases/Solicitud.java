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
   private String constructora;
   private String rut_cliente;
   private int pago;
   private int descuento;
   private String estado;
   private int id_agenda;
   private int id_comuna;
   private int id_servicio;

    public Solicitud() {
    }

    public Solicitud(int id_solicitud, Date fecha_solicitud, String direccion_vivienda, String constructora, String rut_cliente, int pago, int descuento, String estado, int id_agenda, int id_comuna, int id_servicio) {
        this.id_solicitud = id_solicitud;
        this.fecha_solicitud = fecha_solicitud;
        this.direccion_vivienda = direccion_vivienda;
        this.constructora = constructora;
        this.rut_cliente = rut_cliente;
        this.pago = pago;
        this.descuento = descuento;
        this.estado = estado;
        this.id_agenda = id_agenda;
        this.id_comuna = id_comuna;
        this.id_servicio = id_servicio;
    }

    

    //SETTER

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

    public void setRut_cliente(String rut_cliente) {
        this.rut_cliente = rut_cliente;
    }

    public void setPago(int pago) {
        this.pago = pago;
    }

    public void setDescuento(int descuento) {
        this.descuento = descuento;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setId_agenda(int id_agenda) {
        this.id_agenda = id_agenda;
    }

    public void setId_comuna(int id_comuna) {
        this.id_comuna = id_comuna;
    }

    public void setId_servicio(int id_servicio) {
        this.id_servicio = id_servicio;
    }
    
    
    //GETTER

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

    public String getRut_cliente() {
        return rut_cliente;
    }

    public int getPago() {
        return pago;
    }

    public int getDescuento() {
        return descuento;
    }

    public String getEstado() {
        return estado;
    }

    public int getId_agenda() {
        return id_agenda;
    }

    public int getId_comuna() {
        return id_comuna;
    }

    public int getId_servicio() {
        return id_servicio;
    }

    @Override
    public String toString() {
        return "Solicitud{" + "id_solicitud=" + id_solicitud + ", fecha_solicitud=" + fecha_solicitud + ", direccion_vivienda=" + direccion_vivienda + ", constructora=" + constructora + ", rut_cliente=" + rut_cliente + ", pago=" + pago + ", descuento=" + descuento + ", estado=" + estado + ", id_agenda=" + id_agenda + ", id_comuna=" + id_comuna + ", id_servicio=" + id_servicio + '}';
    }

    

    

   


    
    
}
