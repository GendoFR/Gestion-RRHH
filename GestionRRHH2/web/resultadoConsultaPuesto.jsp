<%-- 
    Document   : resultadoConsultaPuesto
    Created on : 25 nov 2023, 21:00:31
    Author     : gendo
--%>

<%@page import="DAO.metodosSQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.ResultSetMetaData" %>
<%@ page import="java.sql.Types" %>

<html>
<head>
    <title>Resultados de la Consulta</title>
</head>
<body>
    <h2>Resultados de la Consulta</h2>
    <%
        ResultSet resultados = metodosSQL.filtrarPorPuesto(puestoEmpleado);
        if (resultados != null) {
            ResultSetMetaData metaData = resultados.getMetaData();
            int numColumnas = metaData.getColumnCount();

            out.println("<table border='1'>");
            out.println("<tr>");
            for (int i = 1; i <= numColumnas; i++) {
                out.println("<th>" + metaData.getColumnName(i) + "</th>");
            }
            out.println("</tr>");

            while (resultados.next()) {
                out.println("<tr>");
                for (int i = 1; i <= numColumnas; i++) {
                    out.println("<td>" + resultados.getString(i) + "</td>");
                }
                out.println("</tr>");
            }

            out.println("</table>");
        } else {
            out.println("No se encontraron resultados.");
        }
    %>
</body>
</html>
