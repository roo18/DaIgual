<%-- 
    Document   : nuevo
    Created on : 07-nov-2013, 10:40:07
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.css" rel="stylesheet" media="screen">
        <link href="css/bootstrap-responsive.css" rel="stylesheet" media="screen">
    </head>
    <body>
        <form id="formulario" action="insert.jsp" class="form-horizontal">
            Id: <input class="span2" type="text" name="idEntidadBancaria" /> 
            Codigo Entidad: <input type="text" name="codigoEntidadBancaria" /> 
            Nombre: <input type="text" name="nombreEntidadBancaria" /> 
            CIF: <input type="text" name="cifEntidadBancaria" /> 
            <input class="btn bt" type="submit" value="Insertar" /> 
        </form>
    </body>
</html>
