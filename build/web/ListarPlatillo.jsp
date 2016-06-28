<%@page import="com.sw2.bean.Platillo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="css/animate.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <style>
            body {
                position: relative;
            }
            ul.nav-pills {
                top: 20px;
                position: fixed;
            }
            div.col-sm-9 div {
                height: 800px;
                font-size: 28px;
            }
            .section {color: #000000; background-color: #E6E6E6; margin-bottom: 50px; border-radius: 10px;}
           
        </style>
        <%
            int cont = 1;
            List<Platillo> platillos = (List<Platillo>) request.getAttribute("platillos");
        %>
    </head>
    <body data-spy="scroll" data-target="#myScrollspy" data-offset="20">

       
            <div class="navbar navbar-default navbar-fixed-top" >
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
                        <li ><a href="Cuenta.jsp">Cuenta</a></li>
                        <li class="active"><a href="ListarPlatillosServlet">Mis Platillos</a></li>
                        <li><a href="Rank.jsp">Ranking</a></li>
                        <li><a href="ListaProfitServlet">Profit</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Cerrar sesion</a></li>
                    </ul>
                </div>
            </div>
            
        <div class="container" style="margin-top: 70px;">
            
            <div class="row"  >
                <nav class="col-sm-3" id="myScrollspy">
                    <ul class="nav nav-pills nav-stacked"style="margin-top: 70px;">

                        <%
                            for (int i = 1; i <= platillos.size(); i++) {
                        %>
                        <li><a <% if (i == 1) {%>class="active"<% }%> href="#section<%=i%>"><%=platillos.get(i-1).getNombre()%></a></li>
                            <%
                                }
                            %>
                        <li  style="border-radius:100px; " ><a class="btn btn-success" href="AgregarPlatillo.jsp" >+</a></li>
                       
                    </ul>
                    <ul></ul>
                </nav>
                <div class="col-sm-9">

                    <%
                        for (Platillo plats : platillos) {
                    %>
                    <div id="section<%=cont%>" class="section" style="padding-top: 1px;">    
                        <h1 style="margin-top: 70px;"><%=plats.getNombre()%></h1>
                        <img src="<%=plats.getImagen()%>"  height="50%" width="100%" style="padding-right: 10%; padding-left: 10%;">
                        <p><%=plats.getDescripcion()%></p>
                    </div>
                    <%
                            cont++;
                        }
                    %>
                    <div></div>
                </div>
                    <div></div>
            </div>
        </div>

    </body>
</html>

