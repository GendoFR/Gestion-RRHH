<%-- 
    Document   : consultarEmpleadoXPuesto
    Created on : 25 nov 2023, 21:04:23
    Author     : gendo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <link rel="stylesheet" href="style.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleado por Puesto</title>
    </head>
    <body>
      <form class="form-login"method="post" action="resultadoConsultaPuesto.jsp">
        <h5>Consulte empleados por puesto</h5>
        <input class="control" type="text" name="puestoEmpleado" value="" placeholder="Puesto de Empleado" required>
        <input class="boton" type="submit" name="btn-login" value="Consultar">
        <p><a href ="empleadosMenu.jsp">Volver a Menú empleados</a></p>
      </form>
    </body>
</html>
