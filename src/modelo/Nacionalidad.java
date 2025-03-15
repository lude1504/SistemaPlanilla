/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author alumno
 */
public class Nacionalidad {
    private int idNacionalidad;
    private String descripcion;

    public Nacionalidad(int idNacionalidad, String descripcion) {
        this.idNacionalidad = idNacionalidad;
        this.descripcion = descripcion;
    }

    public int getIdNacionalidad() {
        return idNacionalidad;
    }

    public void setIdNacionalidad(int idNacionalidad) {
        this.idNacionalidad = idNacionalidad;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    
    // métodos para el CRUD
    public void insertarNacionalidad(){
        
    }
    
}
