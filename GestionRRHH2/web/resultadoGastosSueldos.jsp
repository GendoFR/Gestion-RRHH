<%-- 
    Document   : consultarGastosSueldos
    Created on : 3 dic 2023, 18:38:57
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
                int sueldoFinal = 0;
                String consulta = "call CalcularTotalSueldosConBono(?);";
                CallableStatement cStatement = conexion.prepareCall(consulta);
                cStatement.registerOutParameter(1,Types.INTEGER);
                cStatement.executeUpdate();
                sueldoFinal = cStatement.getInt(1);
                out.println("<table>");
                out.println("<tr>");
                out.println("<td class = 'centered' colspan='2'><h5>Gastos En Sueldos</h5></td>");
                out.println("</tr>");
                out.println("<tr>");
                if(sueldoFinal != 0){
                    out.println("<td><h1>$"+ sueldoFinal +"ARS</h1></td>");
                }
                else{
                    out.println("<td>Error de consulta.</td>");
                }
                out.println("</tr>");
                out.println("<td>" + "<p><a href = 'sueldosMenu.jsp'>Volver a Menú</a></td>" + "</td>");
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