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
public class Agenda {
    private int id_agenda;
    private String dia;
    private String hora;
    private String disponible;

    public Agenda() {
    }

    public Agenda(int id_agenda, String dia, String hora, String disponible) {
        this.id_agenda = id_agenda;
        this.dia = dia;
        this.hora = hora;
        this.disponible = disponible;
    }
    
    
    //SETTER
    public void setId_agenda(int id_agenda) {
        this.id_agenda = id_agenda;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public void setHora(String hora) {   
        this.hora = hora;
    }

    public void setDisponible(String disponible) {
        this.disponible = disponible;
    }

    //GETTER

    public int getId_agenda() {
        return id_agenda;
    }

    public String getDia() {
        return dia;
    }

    public String getHora() {
        return hora;
    }

    public String getDisponible() {
        return disponible;
    }
    
    
    
    
}
