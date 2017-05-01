<!DOCTYPE html>
<html>
<head>
	<title>Ingresar</title>
	<meta name="viewport" content="width=device-width, initial-escale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
	<div class="jumbotron container boxlogin">
	<p class="text-center"><strong>INGRESAR A ENVM</strong></p>

		<form name="iniciarSesion" id="iniciarSesion" method="post" action="procesar/iniciar.jsp">
		<label>Correo electronico:</label>
		<input type="text" name="correo" id="correo" class="form-control" placeholder="Correo">
		<label>Contraseña:</label>			
		<input type="password" name="contrasenia" id="contrasenia"class="form-control" placeholder="Contraseña">
		<input type="submit" value="Empezar" class="center-block btn btn-info btn-lg">
                <br>
                <label class="label-danger" name="campo" id="campo" ></label>
		</form>
	</div>
    
    
    
</body>
</html>