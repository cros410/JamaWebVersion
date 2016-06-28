<%-- 
    Document   : AgregarPlatillo
    Created on : 04-jun-2016, 15:39:16
    Author     : j
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Platillo</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="js/cloudinary.js" type="text/javascript"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="css/animate.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="js/cloudinary.js" type="text/javascript"></script>

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

            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="#">Cuenta </a></li>
                    <li   class="active"><a href="ListarPlatillosServlet">Mis Platillos</a></li>
                    <li><a href="Rank.jsp">Ranking</a></li>
                    <li><a href="ListaProfitServlet">Profit</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <list style="margin-right:20px;"><a href="index.jsp">Cerrar sesion</a></li>
                </ul>
            </div>
        </div>


        <div class="container" style="margin-top: 100px;">

            <form class="form-horizontal" id="form" method="post" action="IngresarPlatilloServlet" >

                <legend ><p style="text-justify: auto;text-align: center;">Ingresar Platillo</p></legend>
                <div class="form-group">
                    <label class="col-md-2 control-label ">Nombre: </label>
                    <div  style="margin-top: auto "class="col-md-10 ">
                        <input type="text" name="nombre" class="form-control" id="nombre" >
                    </div>
                </div>

                <div style="margin-top: auto"class="form-group">
                    <label  class="col-md-2 control-label">Descripcion: </label>
                    <div class="col-md-10">
                        <textarea style="height: 400px;" type="text" class="form-control" id="descrip" name="descrip"  ></textarea>
                    </div>
                </div> 
                <div style="margin-top: auto"class="form-group">
                    <label  class="col-md-2 control-label">Foto:</label>
                    <div class="col-md-1 ">
                        <a class="btn btn-primary"id="upload_widget_opener" >Subir</a>
                        <input type="text" hidden="" name="imagen" id="imagen" value="" >    
                    </div>
                </div> 
                <div style="margin-top: auto"class="form-group">
                    <label  class="col-md-2 control-label">Tag:</label>
                    <div class="col-md-5 ">
                        <select class="form-control" id="tag" name="tag">
                            <option>PASTAS</option>
                            <option>HAMBURGUESAS</option>
                            <option>MARINO</option>
                            <option>CRIOLLO</option>
                            <option>LIGHT</option>
                        </select>
                    </div>
                </div> 
                <div style="margin-top: auto"class="form-group">
                    <div  class="col-md-12">
                        <input style="width: 50%; margin-left: 25%;margin-right: 25%;" type="submit" class="btn btn-success" id="ingresar"  value="Publicar"/>

                    </div>
                </div>

            </form>
        </div>
        <script type="text/javascript">
            document.getElementById("upload_widget_opener").addEventListener("click", function () {

                cloudinary.openUploadWidget({cloud_name: 'jamacomida', upload_preset: 'jrve2f6q'},
                        function (error, result) {
                            console.log(error, result);
                            console.log(result[0].secure_url);
                            $("#imagen").val(result[0].secure_url);
                        });

            }, false);
        </script>
    </body>
</html>
