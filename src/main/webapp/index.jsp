<%@page import="com.emergentes.Estudiante"%>
<%@page import="java.util.ArrayList"%>
<%
    if (session.getAttribute("listaest") == null) {
        ArrayList<Estudiante> lisaux = new ArrayList<Estudiante>();
        session.setAttribute("listaest", lisaux);
    }
    ArrayList<Estudiante> lista = (ArrayList<Estudiante>) session.getAttribute("listaest");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Incritos</title>
 <style>
            h1 {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h1>Listado de inscritos</h1>
        <div style="text-align: center;">
            <a href="MainServlet?op=nuevo">Nuevo</a>
        </div>
        <table border = "1" align="center">
            <tr>
                <th>Id</th>
                <th>Fecha</th>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Turno</th>
                <th>Seminarios</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null) {
                    for (Estudiante item : lista) {
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getFecha()%></td>
                <td><%= item.getNombre()%></td>
                <td><%= item.getApellidos()%></td>
                <td><%= item.getTurno()%></td>
                <td><%= item.getSeminarios()%></td>
                <td>
                    <a href="MainServlet?op=editar&id=<%= item.getId()%>">Editar</a>
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%= item.getId()%>"
                       onclick="return(confirm('Esta seguro de eliminar?'))">Eliminar</a>
                </td>

            </tr>

            <%
                    }
                }
            %>
        </table>
    </body>

</html>