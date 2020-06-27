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
public class ListaSolicitud {

    private int id_solicitud;
    private Date fecha_solicitud;
    private String direccion_vivienda;
    private String constructora;
    private String rut_cliente;
    private String tipo_pago;
    private int pago;
    private double descuento;
    private String estado;
    private Date dia;
    private String hora;
    private String nombre_comuna;
    private String nombre_servicio;

    public ListaSolicitud() {
    }

    public ListaSolicitud(int id_solicitud, Date fecha_solicitud, String direccion_vivienda, String constructora, String rut_cliente, String tipo_pago, int pago, double descuento, String estado, Date dia, String hora, String nombre_comuna, String nombre_servicio) {
        this.id_solicitud = id_solicitud;
        this.fecha_solicitud = fecha_solicitud;
        this.direccion_vivienda = direccion_vivienda;
        this.constructora = constructora;
        this.rut_cliente = rut_cliente;
        this.tipo_pago = tipo_pago;
        this.pago = pago;
        this.descuento = descuento;
        this.estado = estado;
        this.dia = dia;
        this.hora = hora;
        this.nombre_comuna = nombre_comuna;
        this.nombre_servicio = nombre_servicio;
    }

    public int getId_solicitud() {
        return id_solicitud;
    }

    public void setId_solicitud(int id_solicitud) {
        this.id_solicitud = id_solicitud;
    }

    public Date getFecha_solicitud() {
        return fecha_solicitud;
    }

    public void setFecha_solicitud(Date fecha_solicitud) {
        this.fecha_solicitud = fecha_solicitud;
    }

    public String getDireccion_vivienda() {
        return direccion_vivienda;
    }

    public void setDireccion_vivienda(String direccion_vivienda) {
        this.direccion_vivienda = direccion_vivienda;
    }

    public String getConstructora() {
        return constructora;
    }

    public void setConstructora(String constructora) {
        this.constructora = constructora;
    }

    public String getRut_cliente() {
        return rut_cliente;
    }

    public void setRut_cliente(String rut_cliente) {
        this.rut_cliente = rut_cliente;
    }

    public String getTipo_pago() {
        return tipo_pago;
    }

    public void setTipo_pago(String tipo_pago) {
        this.tipo_pago = tipo_pago;
    }

    public int getPago() {
        return pago;
    }

    public void setPago(int pago) {
        this.pago = pago;
    }

    public double getDescuento() {
        return descuento;
    }

    public void setDescuento(double descuento) {
        this.descuento = descuento;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Date getDia() {
        return dia;
    }

    public void setDia(Date dia) {
        this.dia = dia;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getNombre_comuna() {
        return nombre_comuna;
    }

    public void setNombre_comuna(String nombre_comuna) {
        this.nombre_comuna = nombre_comuna;
    }

    public String getNombre_servicio() {
        return nombre_servicio;
    }

    public void setNombre_servicio(String nombre_servicio) {
        this.nombre_servicio = nombre_servicio;
    }

    @Override
    public String toString() {
        return "ListaSolicitud{" + "id_solicitud=" + id_solicitud + ", fecha_solicitud=" + fecha_solicitud + ", direccion_vivienda=" + direccion_vivienda + ", constructora=" + constructora + ", rut_cliente=" + rut_cliente + ", tipo_pago=" + tipo_pago + ", pago=" + pago + ", descuento=" + descuento + ", estado=" + estado + ", dia=" + dia + ", hora=" + hora + ", nombre_comuna=" + nombre_comuna + ", nombre_servicio=" + nombre_servicio + '}';
    }

    
       
    
}    



   
