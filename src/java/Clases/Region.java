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
public class Region {
    private int id_region;
    private String nombre;

    public Region() {
    }

    public Region(int id_region, String nombre) {
        this.id_region = id_region;
        this.nombre = nombre;
    }

    //SETTER

    public void setId_region(int id_region) {
        this.id_region = id_region;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    //GETTER

    public int getId_region() {
        return id_region;
    }

    public String getNombre() {
        return nombre;
    }
    

}
