/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/*import java.sql.PreparedStatement;
import java.sql.ResultSet;*/

public class ConexionMySQL {
    private static final String URL = "jdbc:mysql://localhost:3306/rrhh";
    private static final String USUARIO = "root";
    private static final String CONTRASENA = "";
    
    /*private static Connection conexion;
    private static PreparedStatement sentencia;
    private static ResultSet result;*/
    

    public static Connection obtenerConexion() {
        Connection conexion = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(URL, USUARIO, CONTRASENA);
            return conexion;
        } catch (ClassNotFoundException | SQLException e) {
        }
        return conexion;
    }

     /* public static void main(String [] args){
        try{
            conexion = obtenerConexion();
            String Consulta = "INSERT INTO usuarios (nombreUsuario, contraseñaUsuario, tipoUsuario) VALUES ('user', 'psw', 'user')";
            sentencia = conexion.prepareStatement(Consulta);
            int i = sentencia.executeUpdate();
            
            if(i > 0){
                System.out.println("Se guardaron los datos!");
            }
            else{
                System.out.println("Nose guardo nada pa, la cagaste");
            }
            conexion.close();
        }
        catch(SQLException e){
            System.out.println("Error" + e);
        }
    
    }
    */
}

