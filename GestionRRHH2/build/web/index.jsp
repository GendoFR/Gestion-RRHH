<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Login de RRHH</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
      <form class="form-login"method="post" action="ServletLogin">
        <h5>Inicie Sesi�n</h5>
        <input class="control" type="text" name="usuario" value="" placeholder="Usuario">
        <input class="control" type="password" name="contrasena" value="" placeholder="Contrase�a">
        <input class="boton" type="submit" name="btn-login" value="Ingresar">
        <p><a href ="registro.jsp">�Quieres registrarte?</a></p>
      </form>

  </body>
</html>