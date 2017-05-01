
<%
    
    String correo = request.getParameter("correo");
    String contraseña = request.getParameter("contrasenia");

    session.setAttribute("correo", correo);
    session.setAttribute("contraseña", contraseña);
    
    
   response.sendRedirect("../redactar.jsp"); 
    
%>

