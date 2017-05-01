

<%
 
    String texto = request.getParameter("mytextarea");
    
    System.out.println("textarea:"+texto);
    
    session.setAttribute("texto", texto);
     
    response.sendRedirect("../leer_excel.jsp"); 
     
    
%>    