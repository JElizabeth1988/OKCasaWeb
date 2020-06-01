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
   private String hora_solicitud;
   
  //Cliente
   private Cliente cli;
      
   //Agenda
   private Agenda agen;
   
   //Pago
   private Pago pag;

    public Solicitud() {
        cli = new Cliente();

        agen = new Agenda();
        
        pag = new Pago();
    }

    public Solicitud(int id_solicitud, String fecha_solicitud, String hora_solicitud, Cliente cli, Agenda agen, Pago pag) {
        this.id_solicitud = id_solicitud;
        this.fecha_solicitud = fecha_solicitud;
        this.hora_solicitud = hora_solicitud;
        this.cli = cli;
        this.agen = agen;
        this.pag = pag;
    }
    
    //SETTER
    public void setId_solicitud(int id_solicitud) {
        this.id_solicitud = id_solicitud;
    }

    public void setFecha_solicitud(String fecha_solicitud) {
        this.fecha_solicitud = fecha_solicitud;
    }

    public void setHora_solicitud(String hora_solicitud) {
        this.hora_solicitud = hora_solicitud;
    }

    public void setCli(Cliente cli) {
        this.cli = cli;
    }

    public void setAgen(Agenda agen) {
        this.agen = agen;
    }

    public void setPag(Pago pag) {   
        this.pag = pag;
    }

    //GETTER

    public int getId_solicitud() {
        return id_solicitud;
    }

    public String getFecha_solicitud() {
        return fecha_solicitud;
    }

    public String getHora_solicitud() {
        return hora_solicitud;
    }

    public Cliente getCli() {
        return cli;
    }

    public Agenda getAgen() {
        return agen;
    }

    public Pago getPag() {
        return pag;
    }
    

   
}
