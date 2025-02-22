package conexion;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;

/**
 *
 * @author alumno
 */
public class Conexion {
     //conexion local
    public static Connection conectar() {

        Connection cn = null;
        try {
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_sistema_planilla", "senati", "senati");
            return cn;
        } catch (SQLException e) {
            System.err.println("Error en la conexion local: " + e);
        }
        return null;
    }
}
