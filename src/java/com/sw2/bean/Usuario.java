/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.bean;

import java.util.List;

/**
 *
 * @author Diego
 */
public class Usuario {
    private int idusuarios;
    private String nombre;
    private String apellido;
    private String correo;
    private String sexo;
    private String tipo;
    private String fecha_nac;
    private String password;
    private List<Platillo> platilos;
    
    

    public Usuario() {
    }

    public Usuario(int idusuarios, String nombre, String apellido, String correo, String sexo, String tipo, String fecha_nac, String password) {
        this.idusuarios = idusuarios;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.sexo = sexo;
        this.tipo = tipo;
        this.fecha_nac = fecha_nac;
        this.password = password;
    }

    public int getIdusuarios() {
        return idusuarios;
    }

    public void setIdusuarios(int idusuarios) {
        this.idusuarios = idusuarios;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getFecha_nac() {
        return fecha_nac;
    }

    public void setFecha_nac(String fecha_nac) {
        this.fecha_nac = fecha_nac;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<Platillo> getPlatilos() {
        return platilos;
    }

    public void setPlatilos(List<Platillo> platilos) {
        this.platilos = platilos;
    }

    
    
    @Override
    public String toString() {
        return "Usuario{" + "idusuarios=" + idusuarios + ", nombre=" + nombre + ", apellido=" + apellido + ", correo=" + correo + ", sexo=" + sexo + ", tipo=" + tipo + ", fecha_nac=" + fecha_nac + ", password=" + password + '}';
    }

   
    
    
    
}
