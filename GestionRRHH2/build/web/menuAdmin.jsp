<%-- 
    Document   : menuAdmin
    Created on : 25 nov 2023, 17:09:06
    Author     : gendo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú de adminstrador</title>
    <link rel="stylesheet" href="styleMenu.css">
  </head>
  <table>
    <tr>
      <td class = "centered" colspan="2"><h5>Menú Principal</h5></td>
    </tr>
    <tr>
      <td><button onclick="location.href='empleadosMenu.jsp'">Ver Empleados</button></td>
      <td><button onclick="location.href='departamentosMenu.jsp'">Ver Departamentos</button></td>
    </tr>
    <tr>
      <td><button onclick="location.href='sueldosMenu.jsp'">Ver Sueldos</button></td>
      <td><button onclick="location.href='funcionesAdmin.jsp'">Funciones Admin</button></td>
    </tr>
    <tr>
      <td class="centered" colspan="2"><p><a href="index.jsp">Cerrar Sesión</a></p></td>
    </tr>
  </table>
  </body>
</html>
    </body>
</html>
