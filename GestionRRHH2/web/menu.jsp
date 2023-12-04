<%-- 
    Document   : menu
    Created on : 18 nov 2023, 15:43:56
    Author     : gendo
--%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Menu de RRHH</title>
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
      <td class="centered" colspan="2"><button onclick="location.href='sueldosMenu.jsp'">Ver Sueldos</button></td>
    </tr>
    <tr>
      <td class="centered" colspan="2"><p><a href="index.jsp">Cerrar Sesión</a></p></td>
    </tr>
  </table>
  </body>
</html>