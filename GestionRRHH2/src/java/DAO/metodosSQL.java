/**
 *
 * @author gendo
 */
package DAO;

import clases.empleado;
import com.mysql.cj.jdbc.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;


public class metodosSQL {
    
    private Connection conexion;
    private PreparedStatement statement;
    private ResultSet result;
    private CallableStatement cStatement;
    private ArrayList Empleado;
    
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
            boolean isAdmin = false;
            try{
                conexion = ConexionMySQL.obtenerConexion();
                String consulta = "SELECT nombreUsuario, contraseñaUsuario FROM usuario WHERE nombreUsuario = ? AND contraseñaUsuario = ?";
                statement = conexion.prepareStatement(consulta);
                statement.setString(1, nombre);
                statement.setString(2, contraseña);
                result = statement.executeQuery();
                
                if(result.next()){
                    inicioSesion = true; //Se encontro el nombre de usuario y contraseña, por ende puede entrar.
                    /*consulta = "SELECT nombreUsuario, contraseñaUsuario, tipoUsuario FROM usuario WHERE nombreUsuario = ? AND contraseñaUsuario = ? AND tipoUsuario = 'administrador';";
                    statement = conexion.prepareStatement(consulta);
                    statement.setString(1, nombre);
                    statement.setString(2, contraseña);
                    result = statement.executeQuery();
                    if(result.next()){
                        isAdmin = true;
                        return isAdmin;
                    }*/ //Comentado porque no supe como hacer para que verifique si es usuario y luego verifique si es admin, preguntar mas tarde! :)
                    // update par de dias despues, lo hice jefe!!!! 
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
        
    public boolean loginAdmin(String nombre, String contraseña) throws SQLException{
            boolean isAdmin = false;
            try{
                conexion = ConexionMySQL.obtenerConexion();
                String consulta = "SELECT nombreUsuario, contraseñaUsuario, tipoUsuario FROM usuario WHERE nombreUsuario = ? AND contraseñaUsuario = ? AND tipoUsuario = 'administrador';";
                statement = conexion.prepareStatement(consulta);
                statement.setString(1, nombre);
                statement.setString(2, contraseña);
                result = statement.executeQuery();
                
                if(result.next()){
                    isAdmin = true;
                    return isAdmin;
                }
                else{
                    isAdmin = false; // No Se encontro el nombre de usuario y contraseña, por ende no puede entrar.
                }
                conexion.close();
            }
            catch (SQLException e){
                System.out.println("Error "+ e);
            }
            finally{
            conexion.close();
        }
            
        
        return isAdmin;
    }
    
    public String consultarEmpleado(String idEmpleado) throws SQLException {
        String consultaTotal = ""; // Declarar la variable fuera del bloque try-catch
        boolean bono = false;
        try {
            conexion = ConexionMySQL.obtenerConexion();
            String consulta = "SELECT consultarEmpleado(?) AS Resultado;";
            statement = conexion.prepareCall(consulta);
            statement.setString(1, idEmpleado);
            result = statement.executeQuery();

            if (result.next()) {
                consultaTotal = result.getString("Resultado"); // Obtener el valor devuelto por la función
                cStatement = (CallableStatement) conexion.prepareCall("{CALL obtenerBono(?,?)}");
                cStatement.setString(1, idEmpleado);
                cStatement.registerOutParameter(2, Types.BOOLEAN);
                cStatement.executeUpdate();
                bono = cStatement.getBoolean(2);
                
                if(bono == true){
                    consultaTotal = consultaTotal + " Tiene un bono!";
                }
                else{
                    consultaTotal = consultaTotal + " Tiene una deducción...";
                }
            } 
            else {
                consultaTotal = "No existe tal empleado.";
                System.out.println("HOLA SI PASE POR EL MAL");
            }
        } catch (SQLException e) {
            System.out.println("Error " + e);
            System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHH");
        } finally {
            if (conexion != null) {
                conexion.close();
            }
        }
        return consultaTotal;
    }
    
    public boolean ingresarEmpleado(String nombreEmpleado, String apellidoEmpleado, String sueldoEmpleado, String horasTrabajadas, String puestoEmpleado, String idDepartamento) throws SQLException{
        boolean ingreso = false;
        try{
            conexion = ConexionMySQL.obtenerConexion();
            String consulta = "INSERT INTO empleados (nombreEmpleado, apellidoEmpleado, sueldoEmpleado, horastrabajadas, puestoEmpleado, idDepartamento) VALUES (?, ?, ?, ?, ?, ?); ";
            statement = conexion.prepareCall(consulta);
            statement.setString(1, nombreEmpleado);
            statement.setString(2, apellidoEmpleado);
            statement.setString(3, sueldoEmpleado);
            statement.setString(4, horasTrabajadas);
            statement.setString(5, puestoEmpleado);
            statement.setString(6, idDepartamento);
            System.out.println(idDepartamento+"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
            int resultIns = statement.executeUpdate();
            
            if (resultIns > 0){
                System.out.println(resultIns);
                ingreso = true; // Se logró añadir al empleado
                System.out.println("Se añadió al empleado con nombre: " +nombreEmpleado+", apellido: "+apellidoEmpleado+", sueldo: "+sueldoEmpleado+", con horas: "+horasTrabajadas+", con puesto: "+puestoEmpleado+" y departamento N°"+idDepartamento+".");
                consulta = "UPDATE departamentos SET gastosDepartamentos = gastosDepartamentos + (SELECT SUM(sueldoEmpleado) FROM empleados WHERE idDepartamento = departamentos.idDepartamento) WHERE idDepartamento = ?;";
                statement = conexion.prepareCall(consulta);
                statement.setString(1,idDepartamento );
                resultIns = statement.executeUpdate();
                
                if(resultIns > 2){
                    System.out.println("Se pudo añadir el valor del sueldo del empleado añadido a la tabla departamentos");
                }
                else{
                    System.out.println("pe causa");
                }
            }
            else{
                ingreso = false;
                System.out.println("No se pudo añadir al empleado...");
            }
        }
        catch(SQLException e){
            System.out.println("Error " + e);
            System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHH");
        }
        finally{
            conexion.close();
        }
        return ingreso;
    }
    
    public List<empleado> filtrarPorPuesto(String puesto) throws SQLException {
        List<empleado> empleados = new ArrayList<>();
        try {
            String consulta = "SELECT * FROM empleados WHERE puestoEmpleado = ?";
            try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
                statement.setString(1, puesto);
                try (ResultSet resultSet = statement.executeQuery()) {
                    while (resultSet.next()) {
                        empleado empleado = new empleado();
                        empleado.setId(resultSet.getInt("idEmpleado"));
                        empleado.setNombre(resultSet.getString("nombreEmpleado"));
                        empleado.setApellido(resultSet.getString("apellidoEmpleado"));
                        empleado.setPuesto(resultSet.getString("puestoEmpleado"));
                        empleado.setSueldo(resultSet.getInt("sueldoEmpleado"));
                        empleado.setHoras(resultSet.getInt("horasTrabajadas"));
                        empleado.setIdDep(resultSet.getInt("idDepartamento"));
                        // Agrega más atributos según tu tabla

                        empleados.add(empleado);
                    }
                }
            }
        } 
        catch (SQLException e) {
            System.out.println("Error " + e);
        }
        return empleados;
    }
}
    


