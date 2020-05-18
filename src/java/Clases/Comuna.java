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
    
    //Region
    private Region reg;

    public Comuna() {
      reg=new Region();
    }

    public Comuna(int id_comuna, String nombre, Region reg) {
        this.id_comuna = id_comuna;
        this.nombre = nombre;
        this.reg = reg;
    }

    //SETTER
    
    public void setId_comuna(int id_comuna) {
        this.id_comuna = id_comuna;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setReg(Region reg) {
        this.reg = reg;
    }
    
    //GETTER

    public int getId_comuna() {
        return id_comuna;
    }

    public String getNombre() {
        return nombre;
    }

    public Region getReg() {
        return reg;
    }
    
    
}
