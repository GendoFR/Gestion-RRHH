<%-- 
    Document   : sueldosMenu
    Created on : 3 dic 2023, 15:54:51
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
      <td class = "centered" colspan="2"><h5>Menú Sueldos</h5></td>
    </tr>
    <tr>
      <td><button onclick="location.href='consultarSueldoEmpleado.jsp'">Consultar Sueldo de un Empleado</button></td>
      <td><button onclick="location.href='resultadoGastosSueldos.jsp'">Consultar gastos en Sueldos</button></td>
    </tr>
    <tr>
      <td class="centered" colspan="2"><p><a href="menu.jsp">Volver a Menú principal</a></p></td>
    </tr>
  </table>
  </body>
</html>