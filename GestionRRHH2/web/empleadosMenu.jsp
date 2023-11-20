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
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <table>
          <tr>
              <td>
                  <button id="uniqueButton" class="buttonStyle" onclick = "location.href='empleadosMenu.jsp'">Ver Empleados</button>
              </td>
              <td>
                  <button id="uniqueButton" class="buttonStyle" onclick = "location.href='empleadosMenu.jsp'">Ver Departamentos</button>
              </td>
          </tr>
          <tr>
              <td>
                  <button id="uniqueButton" class="buttonStyle" onclick = "location.href='empleadosMenu.jsp'">Ver Sueldo</button>
              </td>
          </tr>
        </table>
    </body>
</html>
