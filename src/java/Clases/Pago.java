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
public class Pago {
    private int id_pago;
    private int valor;
    private int descuento;
    
    //TIPO PAGO
    private Tipo_Pago tipo;
    
    //CLIENTE
    private Cliente cli;

    public Pago() {
        
        tipo = new Tipo_Pago();
        cli = new Cliente();
        
    }

    public Pago(int id_pago, int valor, int descuento, Tipo_Pago tipo, Cliente cli) {
        this.id_pago = id_pago;
        this.valor = valor;
        this.descuento = descuento;
        this.tipo = tipo;
        this.cli = cli;
    }
    
    //SETTER

    public void setId_pago(int id_pago) {
        this.id_pago = id_pago;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public void setDescuento(int descuento) {
        this.descuento = descuento;
    }

    public void setTipo(Tipo_Pago tipo) {
        this.tipo = tipo;
    }

    public void setCli(Cliente cli) {
        this.cli = cli;
    }
    
    
    //GETTER

    public int getId_pago() {
        return id_pago;
    }

    public int getValor() {
        return valor;
    }

    public int getDescuento() {
        return descuento;
    }

    public Tipo_Pago getTipo() {
        return tipo;
    }

    public Cliente getCli() {
        return cli;
    }
    
    
    
    
}
