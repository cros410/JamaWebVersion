<%-- 
    Document   : Registro
    Created on : 4/06/2016, 10:37:24 AM
    Author     : Diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro JamaPeru</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link href="css/animate.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <link href="css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="js/sweetalert.min.js" type="text/javascript"></script>

        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
        </script> 
    </head>
    <body>
        <div class="navbar navbar-default navbar-fixed-top">
            <a class="navbar-brand" href="#">JamaPeru</a>

            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Registro</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                </ul>
                <ul class="nav navbar-nav navbar-right">

                </ul>
            </div> 
            
        </div>
        <div class="container" style="margin-top: 100px;">
            <form class="form-horizontal" id="form" method="post" action="RegistrarUsuarioServlet" >
                <div class="form-group">
                    <a style="margin-left:30%; width:40% ; margin-right: 50%;" class="btn btn-primary">Registro con facebook</a>
                </div>
                <legend ><p style="text-justify: auto;text-align: center;">Registrate con tu dirección de email</p></legend>
                <div class="form-group">
                    <label class="col-md-2 control-label ">Correo:</label>
                    <div  style="margin-top: auto "class="col-md-10 ">
                        <input type="text" name="correo" class="form-control" id="corrreo" >
                    </div>
                </div>

                <div style="margin-top: auto"class="form-group">
                    <label  class="col-md-2 control-label">Nombre:</label>
                    <div class="col-md-10 ">
                        <input type="text" class="form-control" id="nombre" name="nombre"  >
                    </div>
                </div> 
                <div style="margin-top: auto"class="form-group">
                    <label  class="col-md-2 control-label">Sexo:</label>
                    <div class="col-md-1 ">
                        <select class="form-control" id="sexo" name="sexo">
                            <option>M</option>
                            <option>F</option>
                        </select>
                    </div>
                </div> 
                <div style="margin-top: auto"class="form-group">
                    <label  class="col-md-2 control-label">Apellido:</label>
                    <div class="col-md-10 ">
                        <input type="text" class="form-control" id="apellido" name="apellido" >
                    </div>
                </div> 
                <div  style="margin-top: auto"class="form-group">
                    <label  class="col-md-2 control-label">Contraseña:</label>
                    <div class="col-md-5 ">
                        <input type="password" class="form-control" id="password" name="password">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label">Confirmar contraseña:</label>
                    <div class="col-md-5 ">
                        <input type="password" class="form-control" id="conpassword" name="conpassword" >
                    </div>
                </div>  
                <div  style="margin-top: auto"class="form-group">
                    <label  class="col-md-2 control-label">Fecha de Nacimiento:</label>   
                    <div class="col-md-10 ">
                        <input class="form-control" type="text" id="datepicker" name="fecha">

                    </div>
                </div>
                <div style="margin-top: auto"class="form-group">
                    <div  class="col-md-12">
                        <input style="width: 50%; margin-left: 25%;margin-right: 25%;" type="submit" class="btn btn-success" id="ingresar"  value="Registrarse"/>
                    </div>
                </div>

            </form>

        </div>
        <script src="js/validalogin.js" type="text/javascript"></script>

    </body>

</html>
