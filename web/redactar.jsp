<!DOCTYPE html>
<html>
<head>
	<title>Redactar</title>
	<meta name="viewport" content="width=device-width, initial-escale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/redactar.css">
        <script src='https://cloud.tinymce.com/stable/tinymce.min.js?apiKey=bi95fqk7mqmbazspu46k5r5adhml7qeegfenbi6kxkle5w24'></script>
        
		  <script>
		  tinymce.init({
		    selector: '#mytextarea'
		  });
		  </script>
</head>

<body>
<div class="jumbotron container boxredactar">
	<p class="text-center"><strong>Utilice la siguiente herramienta para redactar su mensaje:</strong></p>
	  <form method="POST" id="texto" name="texto" action="procesar/redactar.jsp" >
              <% 
                  if(session.getAttribute("texto")!=null){
              %>
              <textarea id="mytextarea" name="mytextarea" ><%=session.getAttribute("texto")%></textarea>
              <%
                  }else{
              %>
              <textarea id="mytextarea" name="mytextarea"> ¡Ingrese aqui su texto! </textarea>
              <%
                  }
              %>
              
	    <hr>
	    <input type="submit" value="Siguiente" class="center-block btn btn-info btn-lg">
	  </form>
  </div>
</body>
</html>