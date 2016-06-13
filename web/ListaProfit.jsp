<%-- 
    Document   : ListaProfit
    Created on : 4/06/2016, 03:51:23 PM
    Author     : Diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="com.sw2.bean.Venta"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="css/animate.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">
        <title>JSP Page</title>
    </head>

    <%
        List<Venta> ventas = (List<Venta>) request.getAttribute("ventas");
        double gana = 1.0;
    %>

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
                        <li><a href="Rank.jsp">Ranking</a></li>
                        <li  class="active"><a href="ListaProfitServlet">Profit</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Cerrar sesion</a></li>
                    </ul>
                </div>
            </div>
        <div class="container" style="margin-top: 100px;">
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>#Venta</th>
                                <th>Platillo</th>
                                <th>Monto Generado</th>
                                <th>Profit Generado</th>
                                <th>Fecha</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (Venta vent : ventas) {
                                    gana += vent.getProfit();
                            %>
                            <tr>
                                <th scope="row"><%=vent.getIdventa()%></th>
                                <td><%=vent.getCarta().getPlatillo().getNombre()%></td>
                                <td><%=vent.getMonto()%></td>
                                <td><%=vent.getProfit()%></td>
                                <td><%=vent.getFecha()%></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
                        
                    <div class="col-md-4">
                        <label>
                            GANANCIA TOTAL
                        </label>
                    </div>
                <div class="col-md-8">
                    
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Profit total</th>
                            </tr>
                        </thead>
                        <tbody>

                            <tr>
                                <td><%=gana%></td>
                            </tr>

                        </tbody> 
                    </table>
                </div>
            </div>
        </div>    
    </body>
</html>
