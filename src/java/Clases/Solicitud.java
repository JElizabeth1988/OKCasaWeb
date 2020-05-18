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
public class Solicitud {
   private int id_solicitud;
   private String fecha_solicitud;
   private int hora_solicitud;
   
  //Cliente
   private Cliente cli;
   
   //Comuna
   private Comuna comu;
   
   //Agenda
   private Agenda agen;

    public Solicitud() {
        cli = new Cliente();
        comu = new Comuna();
        agen = new Agenda();
    }

    public Solicitud(int id_solicitud, String fecha_solicitud, int hora_solicitud, Cliente cli, Comuna comu, Agenda agen) {
        this.id_solicitud = id_solicitud;
        this.fecha_solicitud = fecha_solicitud;
        this.hora_solicitud = hora_solicitud;
        this.cli = cli;
        this.comu = comu;
        this.agen = agen;
    }
   
   //SETTER

    public void setId_solicitud(int id_solicitud) {
        this.id_solicitud = id_solicitud;
    }

    public void setFecha_solicitud(String fecha_solicitud) {
        this.fecha_solicitud = fecha_solicitud;
    }

    public void setHora_solicitud(int hora_solicitud) {
        this.hora_solicitud = hora_solicitud;
    }

    public void setCli(Cliente cli) {
        this.cli = cli;
    }

    public void setComu(Comuna comu) {
        this.comu = comu;
    }

    public void setAgen(Agenda agen) {
        this.agen = agen;
    }
    
    //GETTER

    public int getId_solicitud() {
        return id_solicitud;
    }

    public String getFecha_solicitud() {
        return fecha_solicitud;
    }

    public int getHora_solicitud() {
        return hora_solicitud;
    }

    public Cliente getCli() {
        return cli;
    }

    public Comuna getComu() {
        return comu;
    }

    public Agenda getAgen() {
        return agen;
    }
    
   
   
}
