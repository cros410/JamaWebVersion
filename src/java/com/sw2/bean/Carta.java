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
public class Carta {
    
   private  int idcarta ;
   private Platillo platillo;
   private float precio;
   private String fecha;
   private float profit;

    public Carta() {
        this.platillo = new Platillo();
    }
   
   

    public int getIdcarta() {
        return idcarta;
    }

    public void setIdcarta(int idcarta) {
        this.idcarta = idcarta;
    }

    public Platillo getPlatillo() {
        return platillo;
    }

    public void setPlatillo(Platillo platillo) {
        this.platillo = platillo;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public float getProfit() {
        return profit;
    }

    public void setProfit(float profit) {
        this.profit = profit;
    }

   
   
    
}
