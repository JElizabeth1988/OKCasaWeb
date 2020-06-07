<%-- 
    Document   : Comuna
    Created on : 26-05-2020, 22:16:10
    Author     : chida
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>

        <div>
            <h1>Comunas</h1>
            <form action="Controlador" method="POST">

                <input type="submit" name="accion" value="Listar">
            </form>

        </div>
        <div>
            <table border="1">
                <thead>
                    <tr>
                        <th>RUT</th>
                        <th>PRIMER NOMBRE <th></th>
                        <th>SEGUNDO NOMBRE</th>
                        <th>APELLIDO PATERNO</th>
                        <th>APELLIDO MATERNO</th>
                        <th>DIRECCION</th>
                        <th>TELEFONO</th>
                        <th>EMAIL</th>
                        <th>HIPOTECARIO</th>
                        <th>COMUNA</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dato" items="${datos}">
                        <tr>
                            <td>${dato.getRut()}</td>
                            <td>${dato.getPrimer_nombre()}</td>
                            <td>${dato.getSegundo_nombre()}</td>
                            <td>${dato.getAp_paterno()}</td>
                            <td>${dato.getAp_materno()}</td>
                            <td>${dato.getDireccion()}</td>
                            <td>${dato.getTelefono()}</td>
                            <td>${dato.getEmail()}</td>
                            <td>${dato.getHipotecario()}</td>
                            <td>${dato.getComu()}</td>
                            <td>
                                
                                <form>
                                    <input type="submit" value="Editar">
                                    <input type="submit" value="Delete">
                                    
                                </form>
                                
                            </td>
                             
                        </tr>
                    </c:forEach>

                </tbody>
            </table>


        </div>   



    </center>


</body>
</html>
