<%-- 
    Document   : mostrarUsuarios
    Created on : 5/05/2024, 5:03:04 p. m.
    Author     : sttiven
--%>
<%@page import="java.util.List"%>
<%@page import="com.practicaservlest.logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Usuarios</h1>
        <% 
         List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("ListaUsuarios") ; 
         int cont =1;
         for(Usuario usu: listaUsuarios){
                 
        %>
        <p><b> Usuario <%=cont%></b></p>
        <p> Id:  <%=usu.getId()%> </p>
        <p> nombre:  <%=usu.getNombre()%> </p>
        <p> correo:  <%=usu.getCorreo()%></p>
        <p> contraseña:  <%=usu.getContraseña()%> </p>
        <p>-------------------------------------------</p>
        <% cont = cont+1; %>
        
        <%
            }
        %>
    </body>
</html>
