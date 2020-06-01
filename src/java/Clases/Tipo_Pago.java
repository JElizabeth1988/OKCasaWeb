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
public class Tipo_Pago {
    private int id_tipo;
    private String nombre;

    public Tipo_Pago() {
    }

    public Tipo_Pago(int id_tipo, String nombre) {
        this.id_tipo = id_tipo;
        this.nombre = nombre;
    }
    
    
    //SETTER

    public void setId_tipo(int id_tipo) {
        this.id_tipo = id_tipo;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    //GETTER

    public int getId_tipo() {
        return id_tipo;
    }

    public String getNombre() {
        return nombre;
    }
    
    
    
}
