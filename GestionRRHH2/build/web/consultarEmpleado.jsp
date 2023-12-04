<%-- 
    Document   : consultarEmpleado
    Created on : 20 nov 2023, 19:09:08
    Author     : gendo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <link rel="stylesheet" href="style.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Empleado</title>
    </head>
    <body>
      <form class="form-login"method="post" action="resultadoConsultaEmpleado.jsp">
        <h5>Consulte El empleado</h5>
        <input class="control" type="text" name="idEmpleadopedido" value="" placeholder="Codigo de Empleado" required>
        <input class="boton" type="submit" name="btn-login" value="Consultar">
        <p><a href ="empleadosMenu.jsp">Volver a Menú empleados</a></p>
      </form>
    </body>
</html>
