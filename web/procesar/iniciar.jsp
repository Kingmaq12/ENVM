
<%
    
    String correo = request.getParameter("correo");
    String contraseņa = request.getParameter("contrasenia");

    session.setAttribute("correo", correo);
    session.setAttribute("contraseņa", contraseņa);
    
    
   response.sendRedirect("../redactar.jsp"); 
    
%>

