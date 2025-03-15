/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author alumno
 */
public class Ubigeo {
    
    private int idUbigeo;
    private int idDepartamentoRegion;
    private int idProvincia;
    private int idUbigeoReniec;

    public Ubigeo(int idUbigeo, int idDepartamentoRegion, int idProvincia, int idUbigeoReniec) {
        this.idUbigeo = idUbigeo;
        this.idDepartamentoRegion = idDepartamentoRegion;
        this.idProvincia = idProvincia;
        this.idUbigeoReniec = idUbigeoReniec;
    }

    public int getIdUbigeo() {
        return idUbigeo;
    }

    public void setIdUbigeo(int idUbigeo) {
        this.idUbigeo = idUbigeo;
    }

    public int getIdDepartamentoRegion() {
        return idDepartamentoRegion;
    }

    public void setIdDepartamentoRegion(int idDepartamentoRegion) {
        this.idDepartamentoRegion = idDepartamentoRegion;
    }

    public int getIdProvincia() {
        return idProvincia;
    }

    public void setIdProvincia(int idProvincia) {
        this.idProvincia = idProvincia;
    }

    public int getIdUbigeoReniec() {
        return idUbigeoReniec;
    }

    public void setIdUbigeoReniec(int idUbigeoReniec) {
        this.idUbigeoReniec = idUbigeoReniec;
    }
    
    
    
}
