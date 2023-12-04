<%-- 
    Document   : resultadoConsultaPuesto
    Created on : 25 nov 2023, 21:00:31
    Author     : gendo
--%>

<%@page import="DAO.metodosSQL"%>
<%@page import="clases.empleado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.ResultSetMetaData" %>
<%@ page import="java.sql.Types" %>
<%@ page import="java.sql.*" %>
<%@ page import="DAO.ConexionMySQL" %>
<%@ page import="Servlets.*"%>
<link rel="stylesheet" href="styleMenu.css">
<html>
<head>
    <title>Consulta por Puesto</title>
</head>
<body>
<div style="justify-content: center; display: flex; align-items: center; flex-direction: column; margin-top: 200px;">
    <%
        Connection conexion = ConexionMySQL.obtenerConexion();

        if (conexion != null) {
            try {
                String consulta = "SELECT * FROM empleados WHERE puestoEmpleado = ?";
                PreparedStatement statement = conexion.prepareStatement(consulta);
                String puesto = request.getParameter("puestoEmpleado");
                statement.setString(1, puesto);
                ResultSet resultSet = statement.executeQuery();

                out.println("<table border='1'>");
                out.println("<tr>"
                + "<th>ID de Empleado</th>"
                + "<th>Nombre</th>"
                + "<th>Apellido</th>"
                + "<th>Sueldo</th>"
                + "<th>Horas</th>"
                + "<th>Id de Departamento</th>"
                + "</tr>");

                while (resultSet.next()) {
                    out.println("<tr>");
                    out.println("<td>" + resultSet.getInt("idEmpleado") + "</td>");
                    out.println("<td>" + resultSet.getString("nombreEmpleado") + "</td>");
                    out.println("<td>" + resultSet.getString("apellidoEmpleado") + "</td>");
                    out.println("<td>" + resultSet.getString("sueldoEmpleado") + "</td>");
                    out.println("<td>" + resultSet.getString("horasTrabajadas") + "</td>");
                    String departamento = resultSet.getString("idDepartamento");
                    if(departamento != null){
                    out.println("<td>" + departamento + "</td>");
                    }
                    else{
                    out.println("<td>Sin Departamento</td>");
                    }
                    out.println("</tr>");
                }
                out.println("<tr>");
                out.println("<td colspan = 6>" + "<p><a href = 'consultarEmpleadoXPuesto.jsp'>Volver a Consulta</a></td>" + "</td>");
                out.println("</tr>");
                out.println("</table>");

                conexion.close();
            } catch (SQLException e) {
                out.println("Error al ejecutar la consulta: " + e.getMessage());
            }
        } else {
            out.println("Error al conectar a la base de datos");
        }
    %>
</div>
</body>
</html>