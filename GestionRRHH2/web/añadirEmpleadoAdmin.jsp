<%-- 
    Document   : añadirEmpleadoAdmin
    Created on : 24 nov 2023, 16:33:48
    Author     : gendo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="stylelargo.css">
    </head>
    <body>
        <form class="form-login"method="post" action="ServletAnadirEmpleado">
            <h5>Ingrese al empleado</h5>
            <input class="control" type="text" name="nombreEmpleado" value="" placeholder="Nombre del Empleado">
            <input class="control" type="text" name="apellidoEmpleado" value="" placeholder="Apellido del Empleado">
            <input class="control" type="text" name="sueldoEmpleado" value="" placeholder="Sueldo del Empleado">
            <input class="control" type="text" name="horasTrabajadas" value="" placeholder="Horas trabajadas">
            <input class="control" type="text" name="puestoEmpleado" value="" placeholder="Puesto del Empleado">
            <select id="idDepartamento" name="idDepartamento" >
                <option value="" disabled selected>Departamento</option>
                <option value="1">Software</option>
                <option value="2">Hardware</option>
                <option value="3">Marketing</option>
                <option value="4">Directivos</option>
            </select>
            <input class="boton" type="submit" name="btn-login" value="Ingresar">
            <p><a href ="empleadosMenuAdmin.jsp">¿Deseas volver?</a></p>
        </form>
    </body>
</html>
