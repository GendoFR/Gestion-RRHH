<%-- 
    Document   : consultarEmpleadoXSueldo
    Created on : 27 nov 2023, 17:57:18
    Author     : gendo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <link rel="stylesheet" href="style.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleados Por Sueldo</title>
    </head>
    <body>
      <form class="form-login"method="post" action="resultadoConsultaSueldo.jsp">
        <h5>Consulte empleados por su Sueldo</h5>
        <input class="control" type="text" name="sueldoMin" value="" placeholder="Sueldo Minimo" required>
        <input class="control" type="text" name="sueldoMax" value="" placeholder="Sueldo Máximo" required>
        <input class="boton" type="submit" name="btn-login" value="Consultar">
        <p><a href ="empleadosMenu.jsp">Volver a Menú empleados</a></p>
      </form>
    </body>
</html>
