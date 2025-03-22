/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.Nacionalidad;

/**
 *
 * @author LUDE
 */
public class NacionalidadDAO {
    
    Conexion conexion = new Conexion();
    
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    
    // metodo listar
    public List listar() {
        
        String sql = "SELECT * FROM nacionalidad"; 
        
        List<Nacionalidad> lista = new ArrayList<>();

        try {
            con = conexion.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                int id = rs.getInt("idNacionalidad");
                String descripcion = rs.getString("descripcion");
                boolean estadoActivo = rs.getBoolean("estadoActivo");

                Nacionalidad nacionalidad = new Nacionalidad(id, descripcion, estadoActivo);
                lista.add(nacionalidad);
            }

        } catch (SQLException e) {
            System.err.println("Error al listar Nacionalidad" + e);
        }

        return lista;
    } // fin metodo listar
    
}
