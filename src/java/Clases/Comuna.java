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
public class Comuna {
    private int id_comuna;
    private String nombre;

    public Comuna() {
    }

    public Comuna(int id_comuna, String nombre) {
        this.id_comuna = id_comuna;
        this.nombre = nombre;
    }
    
    //SETTER

    public void setId_comuna(int id_comuna) {
        this.id_comuna = id_comuna;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
    //GETTER

    public int getId_comuna() {
        return id_comuna;
    }

    public String getNombre() {
        return nombre;
    }

    @Override
    public String toString() {
        return "Comuna{" + "id_comuna=" + id_comuna + ", nombre=" + nombre + '}';
    }
    
    
    
    
    
    
}
