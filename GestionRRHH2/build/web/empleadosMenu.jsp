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
      <td class = "centered" colspan="2"><h5>Menú Empleados</h5></td>
    </tr>
    <tr>
      <td><button onclick="location.href='consultarEmpleado.jsp'">Consultar Empleados por ID</button></td>
      <td><button onclick="location.href='consultarEmpleadoXPuesto.jsp'">Consultar Empleados por Puesto</button></td>
    </tr>
    <tr>
      <td><button onclick="location.href='consultarEmpleadoXSueldo.jsp'">Consultar Empleados por Sueldo</button></td>
      <td><button onclick="location.href='consultarEmpleadoXSueldoPuesto.jsp'">Consultar Empleados por Sueldo y Puesto</button></td>
    </tr>
    <tr>
      <td class="centered" colspan="2"><p><a href="menu.jsp">Volver a Menú principal</a></p></td>
    </tr>
  </table>
  </body>
</html>