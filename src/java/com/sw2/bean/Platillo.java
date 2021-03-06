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
public class Platillo {

    private int id;
    private String nombre;
    private String descripcion;
    private String imagen;
    private String tipo;
    private String tag;
    private String estado;
    private String post_id;
    private String puesto;
    private int cant_likes;

    public Platillo() {
    }

    public Platillo(int id, String nombre, String descripcion, String imagen, String tipo, String tag,String estado,String post_id,String puesto,int cant_likes) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.imagen = imagen;
        this.tipo = tipo;
        this.tag = tag;
        this.estado=estado;
        this.post_id=post_id;
        this.puesto=puesto;
        this.cant_likes=cant_likes;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getPost_id() {
        return post_id;
    }

    public void setPost_id(String post_id) {
        this.post_id = post_id;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }

    public int getCant_likes() {
        return cant_likes;
    }

    public void setCant_likes(int cant_likes) {
        this.cant_likes = cant_likes;
    }
    
    

    @Override
    public String toString() {
        return "Platillo{" + "id=" + id + ", nombre=" + nombre + ", descripcion=" + descripcion + ", imagen=" + imagen + ", tipo=" + tipo + ", tag=" + tag + ", estado=" + estado + '}';
    }

   

}
