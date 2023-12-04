<%-- 
    Document   : resultadoDepartamentoGasto
    Created on : 2 dic 2023, 14:57:05
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
    <title>Departamento con mayor gasto</title>
</head>
<body>
<div style="justify-content: center; display: flex; align-items: center; flex-direction: column; margin-top: 200px;">
    <%
        Connection conexion = ConexionMySQL.obtenerConexion();

        if (conexion != null) {
            try {
                String consulta = "SELECT * FROM departamentos ORDER BY gastosDepartamentos DESC LIMIT 1;";
                PreparedStatement statement = conexion.prepareStatement(consulta);
                ResultSet resultSet = statement.executeQuery();

                out.println("<table border='1'>");
                out.println("<tr>"
                + "<th>ID de Departamento</th>"
                + "<th>Nombre de Departamento</th>"
                + "<th>Horas Minimas</th>"
                + "<th>Gasto de Departamento</th>"
                + "<th>Porcentaje de Bono</th>"
                + "</tr>");

                while (resultSet.next()) {
                    out.println("<tr>");
                    out.println("<td>" + resultSet.getInt("idDepartamento") + "</td>");
                    out.println("<td>" + resultSet.getString("nombreDepartamento") + "</td>");
                    out.println("<td>" + resultSet.getInt("horasMinimas") + "</td>");
                    out.println("<td>" + resultSet.getInt("gastosDepartamentos") + "</td>");
                    out.println("<td>" +"%"+ resultSet.getInt("politicaBono") + "</td>");
                    out.println("</tr>");
                }
                
                out.println("<tr>");
                out.println("<td colspan = 5>" + "<p><a href = 'departamentosMenu.jsp'>Volver a Menú</a></td>" + "</td>");
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