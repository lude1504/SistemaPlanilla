/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import conexion.Conexion;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;
import modelo.Usuario;

/**
 *
 * @author alumno
 */
public class CUsuario {
    //metodo para Inciar Sesion
    public boolean LoginUser(Usuario objeto) {

        Conexion objconexion = new Conexion();
        boolean respuesta = false;

        Connection cn = objconexion.conectar();
        String sql = "SELECT usuario, contrasenia FROM Usuario WHERE usuario = '"+ objeto.getUsuario() +"' AND contrasenia = '"+ objeto.getContrasenia()+"';";
        Statement stm;
        try {
            stm = cn.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            
            while(rs.next()){
                respuesta = true;
            }
        } catch (SQLException e) {
            System.out.println("Error al inciar sesion: " + e);
            JOptionPane.showMessageDialog(null, "Error al inicar sesion: " + e);
        }
        return respuesta;
    }
}
