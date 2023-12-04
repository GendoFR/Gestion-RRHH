<%-- 
    Document   : consultarSueldoEmpleado
    Created on : 3 dic 2023, 16:02:44
    Author     : gendo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <link rel="stylesheet" href="style.css">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Sueldo de Empleado</title>
    </head>
    <body>
      <form class="form-login"method="post" action="resultadoConsultaSueldoEmpleado.jsp">
        <h5>Consulte el sueldo de empleado</h5>
        <input class="control" type="text" name="idEmpleadopedido" value="" placeholder="Codigo de Empleado" required>
        <input class="boton" type="submit" name="btn-login" value="Consultar">
        <p><a href ="sueldosMenu.jsp">Volver a Menú sueldos</a></p>
      </form>
    </body>
</html>