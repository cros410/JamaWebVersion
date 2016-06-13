/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.bean;

/**
 *
 * @author Diego
 */
public class Venta {
    
    private int idventa;
    private Usuario usuario;
    private Carta carta;
    private int caantidad;
    private String fecha;
    private String estado;
    private float monto;
    private float profit;

    public Venta() {
        this.usuario = new Usuario();
        this.carta = new Carta();
    }
    
    

    public int getIdventa() {
        return idventa;
    }

    public void setIdventa(int idventa) {
        this.idventa = idventa;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Carta getCarta() {
        return carta;
    }

    public void setCarta(Carta carta) {
        this.carta = carta;
    }

    public int getCaantidad() {
        return caantidad;
    }

    public void setCaantidad(int caantidad) {
        this.caantidad = caantidad;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public float getMonto() {
        return monto;
    }

    public void setMonto(float monto) {
        this.monto = monto;
    }

    public float getProfit() {
        return profit;
    }

    public void setProfit(float profit) {
        this.profit = profit;
    }

    @Override
    public String toString() {
        return "Venta{" + "idventa=" + idventa + 
                ", monto=" + monto +
                ", profit=" + profit +
                ", platillo=" + carta.getPlatillo().getNombre() + 
                ", fecha=" + fecha + 
                '}';
    }
    
    
    
}
