
<%
    
    String correo = request.getParameter("correo");
    String contrase�a = request.getParameter("contrasenia");

    session.setAttribute("correo", correo);
    session.setAttribute("contrase�a", contrase�a);
    
    
   response.sendRedirect("../redactar.jsp"); 
    
%>

