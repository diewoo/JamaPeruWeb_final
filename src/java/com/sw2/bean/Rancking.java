/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.bean;

/**
 *
 * @author diegoalonso
 */
public class Rancking {

    private int idrankcing;
    private int idcarta;
    private String puesto;
    private String fecha;
    private String estado;
    private int cantidad_likes;

    public Rancking() {
    }

    public Rancking(int idrankcing, int idcarta, String puesto, String fecha, String estado, int cantidad_likes) {
        this.idrankcing = idrankcing;
        this.idcarta = idcarta;
        this.puesto = puesto;
        this.fecha = fecha;
        this.estado = estado;
        this.cantidad_likes = cantidad_likes;
    }

    public int getIdrankcing() {
        return idrankcing;
    }

    public void setIdrankcing(int idrankcing) {
        this.idrankcing = idrankcing;
    }

    public int getIdcarta() {
        return idcarta;
    }

    public void setIdcarta(int idcarta) {
        this.idcarta = idcarta;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
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

    public int getCantidad_likes() {
        return cantidad_likes;
    }

    public void setCantidad_likes(int cantidad_likes) {
        this.cantidad_likes = cantidad_likes;
    }

    @Override
    public String toString() {
        return "Rancking{" + "idrankcing=" + idrankcing + ", idcarta=" + idcarta + ", puesto=" + puesto + ", fecha=" + fecha + ", estado=" + estado + ", cantidad_likes=" + cantidad_likes + '}';
    }

    
    
    
}
