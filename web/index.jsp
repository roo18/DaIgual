<%-- 
    Document   : index
    Created on : 07-oct-2013, 10:28:18
    Author     : alumno
--%>

<%@page import="java.util.List"%>
<%@page import="com.fpmislata.banco.datos.EntidadBancariaDAO"%>
<%@page import="com.fpmislata.banco.negocio.EntidadBancaria"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAO();
    List<EntidadBancaria> entidadesBancarias = entidadBancariaDAO.findAll();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Entidades</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    </head>
    <body>
        <table class="table table-bordered">
            <tr class="info" style="font-weight: bold;">
                <td>ID</td><td>CODIGO</td><td>NOMBRE ENTIDAD</td><td>CIF</td><td>TIPO ENTIDAD</td>
            </tr>
            <%    for (EntidadBancaria entidadBancaria : entidadesBancarias) {%>
            <tr class="warning">
                <td><%=entidadBancaria.getIdEntidadBancaria()%></td>
                <td><%=entidadBancaria.getCodigoEntidad()%></td>
                <td><%=entidadBancaria.getNombre()%></td>
                <td><%=entidadBancaria.getCif()%></td>
                <td><%=entidadBancaria.getTipoEntidadBancaria()%></td>
            </tr>

            <% }
            %>
        </table>
    </body>
</html>
