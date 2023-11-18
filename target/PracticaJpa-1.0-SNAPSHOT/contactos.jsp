<%@page import="java.util.List"%>
<%@page import="com.emergentes.entidad.Contacto"%>
<%
    List<Contacto> lista = (List<Contacto>)request.getAttribute("contactos");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Contactos</h1>
        <p><a href="MainController?action=add">Nuevo Contacto</a></p>
        
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Telefono</th>
                <th>Correo</th>
                <th></th>
                <th></th>
            </tr>
            <%
                for(Contacto item :lista){
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getNombre()%></td>
                <td><%= item.getTelefono()%></td>
                <td><%= item.getCorreo()%></td>
                <th><a href="MainController?action=edit&id=<%= item.getId()%>">Editar</a></th>
                <th><a href="MainController?action=dele&id=<%= item.getId()%>" onclick="return(confirm('Esta seguro ?'))">Eliminar</a></th>
            </tr>
            <%}%>
        </table>
    </body>
</html>
