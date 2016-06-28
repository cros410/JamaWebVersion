<%-- 
    Document   : Cuenta
    Created on : 4/06/2016, 04:43:28 PM
    Author     : Diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.sw2.bean.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cuenta JamaPeru</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="css/animate.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">
    </head>
    <body>
        <%
            Usuario user = (Usuario) request.getSession().getAttribute("usuarioSes");
            %>

        <div class="container">
            <div class="navbar navbar-default navbar-fixed-top">
                <a class="navbar-brand" href="#">JamaPeru</a>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Cuenta <span class="sr-only">(current)</span></a></li>
                        <li><a href="ListarPlatillosServlet">Mis Platillos</a></li>
                        <li><a href="Rank.jsp">Ranking</a></li>
                        <li><a href="ListaProfitServlet">Profit</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li style="margin-right: 20px;"><a href="index.jsp" >Cerrar sesion</a></li>
                    </ul>
                </div>
            </div>
            <form class="form-horizontal" style="margin-top: 8%;">
                <fieldset>
                    <legend>Datos de Cuenta</legend>
                    <div class="form-group">
                        <label for="inputNombreUsuario" class="col-lg-2 control-label">Nombre:</label>
                        <div class="col-lg-10">
                            <input type="text" value="<%= user.getNombre() %>" class="form-control" id="inputNombreUsuario" >
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputNombreApellido" class="col-lg-2 control-label">Apellido:</label>
                        <div class="col-lg-10">
                            <input type="text" value="<%= user.getApellido() %>" class="form-control" id="inputNombreApellido" >
                        </div>
                    </div> 
                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-2 control-label">Correo:</label>
                        <div class="col-lg-10">
                            <input type="text" value="<%= user.getCorreo() %>"  class="form-control" id="inputEmail" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-lg-2 control-label">Fecha de Nacimiento:</label>   
                        <div class="col-lg-4">
                            <input class="form-control" value="<%= user.getFecha_nac() %>" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-lg-2 control-label">Sexo:</label>   
                        <div class="col-lg-2">
                            <input class="form-control" value="<%= user.getSexo() %>" type="text">
                        </div>
                    </div>
                        
                </fieldset>
            </form>
        </div>
    </body>
</html>