<%-- 
    Document   : Rank
    Created on : 04-jun-2016, 14:15:42
    Author     : :b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rank</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <link href="css/animate.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">

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
                    <li><a href="ListarPlatillosServlet">Mis Platillos</a></li>
                    <li class="active"><a href="Rank.jsp">Ranking</a></li>
                    <li><a href="ListaProfitServlet">Profit</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">Cerrar sesion</a></li>
                </ul>
            </div>
        </div>
        <div class="container"style="margin-top: 100px;"> 
            <div class="row">
                <div class="col-md-12">
                    <h2>Lista chef</h2>
                </div>
                <div class="margen">
                    <table  class="table table-striped table-hover ">
                        <thead>
                            <tr>

                                <th>chef 1</th>
                                <th><img src="">foto</th>
                                <th><a href="link"></a>redirigir facebook</th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr>

                                <th>chef 2</th>
                                <th><img src="">foto</th>
                                <th><a href="link"></a>redirigir facebook</th>

                            </tr>
                            <tr>

                                <th>chef 3</th>
                                <th><img src="">foto</th>
                                <th><a href="link"></a>redirigir facebook</th>

                            </tr>
                            <tr>

                                <th>chef 4</th>
                                <th><img src="">foto</th>
                                <th><a href="link"></a>redirigir facebook</th>

                            </tr>
                        </tbody>
                    </table>
                </div> 
            </div>
        </div>
    </body>
</html>
