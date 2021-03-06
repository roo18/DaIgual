<%-- 
    Document   : index
    Created on : 07-oct-2013, 10:28:18
    Author     : alumno
--%>

<%@page import="com.fpmislata.banco.datos.EntidadBancariaDAOImplHibernate"%>
<%@page import="com.fpmislata.banco.datos.EntidadBancariaDAOImplJDBC"%>
<%@page import="java.util.List"%>
<%@page import="com.fpmislata.banco.datos.EntidadBancariaDAO"%>
<%@page import="com.fpmislata.banco.negocio.EntidadBancaria"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String nombre = request.getParameter("nombre");
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplHibernate();
    List<EntidadBancaria> entidadesBancarias = entidadBancariaDAO.findByNombre(nombre);

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Entidades</title>
        <link href="css/bootstrap.css" rel="stylesheet" media="screen">
        <link href="css/bootstrap-responsive.css" rel="stylesheet" media="screen">
    </head>
    <body style="background-color: ghostwhite">
        <div id="insertar" style="margin: 10px;">
            <b>Insertar nueva Entidad Bancaria: </b>
            <a href="viewforinsert.jsp" ><input type="button" value="Nueva" class="btn btn-primary" /></a>
        </div>
        <form action="index.jsp" style="margin: 10px;">
            <b>Nombre entidad:</b>
            <input type="text" name="nombre" class="input-medium search-query" />
            <input type="submit" value="Consulta" class="btn btn-warning"/>
        </form>
        <table class="table table-bordered">
            <tr class="info" style="font-weight: bold;">
                <td>ID</td><td>CODIGO</td><td>NOMBRE ENTIDAD</td><td>CIF</td><td>TIPO ENTIDAD</td><td>BORRAR</td><td>EDITAR</td>
            </tr>
            <%    for (EntidadBancaria entidadBancaria : entidadesBancarias) {%>
            <tr class="warning">
                <td><%=entidadBancaria.getIdEntidadBancaria()%></td>
                <td><%=entidadBancaria.getCodigoEntidad()%></td>
                <td><%=entidadBancaria.getNombre()%></td>
                <td><%=entidadBancaria.getCif()%></td>
                <td><%=entidadBancaria.getTipoEntidadBancaria()%></td>
                <td style="width: 50px;">
                    <a href="borrar.jsp?idEntidadBancaria=<%=entidadBancaria.getIdEntidadBancaria()%>"><i class="icon-remove"></i></a>  
                </td>
                <td style="width: 50px;">
                    <a href="viewforupdate.jsp?idEntidadBancaria=<%=entidadBancaria.getIdEntidadBancaria()%>"><i class="icon-edit"></i></a>
                </td>
            </tr>

            <% }
            %>
        </table>
    </body>
</html>
