

<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@page import="ufps.ENVM.negocio.Negocio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    FileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload upload = new ServletFileUpload(factory);
    String rutaServer = getServletContext().getRealPath("/");

// req es la HttpServletRequest que recibimos del formulario.
// Los items obtenidos serán cada uno de los campos del formulario,
// tanto campos normales como ficheros subidos.
    List items = upload.parseRequest(request);

// Se recorren todos los items, que son de tipo FileItem
    for (Object item : items) {
        FileItem uploaded = (FileItem) item;

   // Hay que comprobar si es un campo de formulario. Si no lo es, se guarda el fichero
        // subido donde nos interese
        if (!uploaded.isFormField()) {
            // No es campo de formulario, guardamos el fichero en algún sitio
             File fichero = new File(rutaServer, uploaded.getName());
            uploaded.write(fichero);
            
            Negocio nego = new Negocio();
            nego.leerExcel(fichero,String.valueOf(session.getAttribute("correo")),String.valueOf(session.getAttribute("contraseña")),String.valueOf(session.getAttribute("texto")));

            
        } else {
            // es un campo de formulario, podemos obtener clave y valor
            String key = uploaded.getFieldName();
            String valor = uploaded.getString();
        }
    }

    
            

%>     