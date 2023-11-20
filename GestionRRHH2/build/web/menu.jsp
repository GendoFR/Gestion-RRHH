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
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
      <table>
          <tr>
              <td>
                  <h5>Menu Principal</h5>
              </td>
          </tr>
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
          <tr>
              <td>
                  <p><a href ="registro.jsp">Cerrar Sesión</a></p>
              </td>
          </tr>
      </table>
  </body>
</html>