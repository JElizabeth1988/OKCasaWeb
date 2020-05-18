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
    private int dia;
    private int hora;

    public Agenda() {
    }

    public Agenda(int id_agenda, int dia, int hora) {
        this.id_agenda = id_agenda;
        this.dia = dia;
        this.hora = hora;
    }
    
    //SETTER

    public void setId_agenda(int id_agenda) {
        this.id_agenda = id_agenda;
    }

    public void setDia(int dia) {
        this.dia = dia;
    }

    public void setHora(int hora) {
        this.hora = hora;
    }
    
    //GETTER
    public int getId_agenda() {
        return id_agenda;
    }

    public int getDia() {
        return dia;
    }

    public int getHora() {
        return hora;
    }
    
    
}
