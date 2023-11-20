/**
 *
 * @author gendo
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class metodosSQL {
    
    private Connection conexion;
    private PreparedStatement statement;
    private ResultSet result;
    
    public boolean registrarUser(String nombreUsuario, String contraseñaUsuario, String tipoUsuario){
        boolean registro = false;
        try{
            conexion = ConexionMySQL.obtenerConexion();
            String consulta = "INSERT INTO usuario (nombreUsuario, contraseñaUsuario, tipoUsuario) VALUES (?,?,?)";
            statement = conexion.prepareStatement(consulta);
            statement.setString(1, nombreUsuario);
            statement.setString(2, contraseñaUsuario);
            statement.setString(3, tipoUsuario);
            
            int resultIns = statement.executeUpdate();
            
            if(resultIns > 0){
                registro = true; // El usuario se creo correctamente
                System.out.println("Se creo un usuario");
            }
            else{
                registro = false;
                System.out.println("No se creo un usuario :( ");
            }
        
            conexion.close();
        }
        catch (SQLException e){
            System.out.println("Error " + e);
        }
        finally{
            try{
               conexion.close(); 
            }
            catch(SQLException e){
                System.out.println("Error " + e); 
            }
        }
        System.out.println(registro);
        return registro;
    }
    
        public boolean loginUser(String nombre, String contraseña) throws SQLException{
            boolean inicioSesion = false;
            try{
                conexion = ConexionMySQL.obtenerConexion();
                String consulta = "SELECT nombreUsuario, contraseñaUsuario FROM usuario WHERE nombreUsuario = ? AND contraseñaUsuario = ?";
                statement = conexion.prepareStatement(consulta);
                statement.setString(1, nombre);
                statement.setString(2, contraseña);
                result = statement.executeQuery();
                
                if(result.next()){
                    inicioSesion = true; //Se encontro el nombre de usuario y contraseña, por ende puede entrar.
                }
                else{
                    inicioSesion = false; // No Se encontro el nombre de usuario y contraseña, por ende no puede entrar.
                }
                conexion.close();
            }
            catch (SQLException e){
                System.out.println("Error "+ e);
            }
            finally{
            conexion.close();
        }
            
        
        return inicioSesion;
    }
    
        public String consultarEmpleado(String idEmpleado) throws SQLException{
            String ConsultaTotal = "";
            try{
                conexion = ConexionMySQL.obtenerConexion();
                String consulta = "Select * FROM empleados WHERE idEmpleado = ?";
                statement = conexion.prepareCall(consulta);
                statement.setString(1, idEmpleado);
                result = statement.executeQuery();
                
                if(result.next()){
                    String valorColumna1 = result.getString("nombreEmpleado");
                    String valorColumna2 = result.getString("apellidoEmpleado");
                    String valorColumna3 = result.getString("sueldoEmpleado");
                    String valorColumna4 = result.getString("puestoEmpleado");
                    String valorColumna5 = result.getString("horasTrabajads");
                    String valorColumna6 = result.getString("idDepartamento");
                    String consultaTotal = valorColumna1 + " " + valorColumna2 + " " + valorColumna3 + " " + valorColumna4 + " " + valorColumna5 + " " + valorColumna6 + " ";
                }
                else{
                    String consultaTotal = "No existe tal empleado.";
                }
                conexion.close();
            }
            catch(SQLException e){
                System.out.println("Error "+ e);
            }
            finally{
                conexion.close();
            }
        return ConsultaTotal;
        }
}
