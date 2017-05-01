<!DOCTYPE html>
<html>
<head>
	<title>Leer Excel</title>
	<meta name="viewport" content="width=device-width, initial-escale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/leer.css">
</head>
<body>
	<div class="jumbotron container boxleer">
	<p class="text-center"><strong>Para Completar el proceso, seleccione el Excel:</strong></p>
<hr>
		<form name="registrarExcel" id="registrarExcel" method="post" action="procesar/leer_excel.jsp"  enctype="multipart/form-data" >
		 <div class="form-group">
		    <label>Archivo Microsoft Excel </label> <br>
		    <input type="file" id="excel" name="excel" >
		</div>
  		<p>Enviar el Mensaje a los correos electronicos del Archivo:</p>
  		<input type="submit" value="Enviar" class="center-block btn btn-info btn-lg">
		</form>
	</div>
</body>
</html>