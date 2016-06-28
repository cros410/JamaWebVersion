<%-- 
    Document   : index
    Created on : 4/06/2016, 09:14:46 AM
    Author     : Diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">


        <title>Yea!</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <script src="js/prefixfree.min.js"></script>
        <link href="css/animate.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>

    </head>



    <div id="fb-root"></div>

    
    <body >

        <div class="body "></div>
        <div class="grad"></div>
        <div class="header">
            <div class="animated zoomIn">Jama!<span>Login</span></div>
        </div>
        <br>
        <form method="POST" action="LoginServlet">
            <div class="login">
                <a class="btn btn-primary"   style="width: 100%;mar">Login con Facebook</a>
                <br>
                <br>

                <input type="text" placeholder="usuario" name="user" style="width: 100%;"><br>

                <input type="password" placeholder="password" name="password" style="width: 100%;"><br>
                <div class="container" style="margin-top: 15px;width: 100%">
                    <div class="row">

                        <button  type="submit"  class="btn btn-success col-sm-5" style="border-radius: 5px 5px 5px 5px;margin-right:0px"  >Login</button>
                        <div class="col-sm-2"></div>
                        <a href="Registro.jsp" class="btn btn-warning col-sm-5" style="margin-left: 0px;border-radius: 5px 5px 5px 5px" >Registrarse</a>

                        <a href="#" class=" col-sm-6" style="color: darkblue;font-size: 12px; margin-top:8%; padding: 0px; font-weight: bold;" >Olvidaste tu Password?</a>

                        <div class="col-sm-6"></div>

                    </div>
                </div>
            </div>
        </form>

        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>





    </body>
</html>
