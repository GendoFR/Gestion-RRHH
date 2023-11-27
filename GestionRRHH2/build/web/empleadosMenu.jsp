<%-- 
    Document   : empleadosMenu
    Created on : 20 nov 2023, 18:25:50
    Author     : gendo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver empleados</title>
    <link rel="stylesheet" href="styleMenu.css">
  </head>
  <table>
    <tr>
      <td class = "centered" colspan="2"><h5>Menú Principal</h5></td>
    </tr>
    <tr>
      <td><button onclick="location.href='consultarEmpleado.jsp'">Consultar Empleados</button></td>
      <td><button onclick="location.href='menu.jsp'">Ver Departamentos</button></td>
    </tr>
    <tr>
      <td class="centered" colspan="2"><button onclick="location.href='menu.jsp'">Ver Sueldos</button></td>
    </tr>
    <tr>
      <td class="centered" colspan="2"><p><a href="index.jsp">Cerrar Sesión</a></p></td>
    </tr>
  </table>
  </body>
</html>