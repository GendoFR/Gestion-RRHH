<%-- 
    Document   : resultadoConsultaPuesto
    Created on : 26 nov 2023, 13:38:17
    Author     : gendo
--%>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Resultados de la Consulta</title>
</head>
<body>
    <h2>Resultados de la Consulta</h2>
    <table border="1">
        <thead>
            <tr>
                <th>ID Empleado</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Puesto</th>
                <th>Sueldo</th>
                <th>Horas</th>
                <th>ID Departamento</th>
            </tr>
        </thead>
        <tbody>
            <% while (resultSet.next()) { %>
                <tr>
                    <td><%= resultSet.getInt("idEmpleado") %></td>
                    <td><%= resultSet.getString("nombreEmpleado") %></td>
                    <td><%= resultSet.getString("apellidoEmpleado") %></td>
                    <td><%= resultSet.getString("puestoEmpleado") %></td>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
