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
    
    // atributos
    private int idNacionalidad;
    private String descripcion;

    // constructor vacio
    public Nacionalidad(){
        
    }
    // constructor agregar
    public Nacionalidad(String descripcion){
        this.descripcion = descripcion;
    }
    
    
    // constructor actualizar
    public Nacionalidad(int idNacionalidad, String descripcion) {
        this.idNacionalidad = idNacionalidad;
        this.descripcion = descripcion;
    }

    
    // getters & setters
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
