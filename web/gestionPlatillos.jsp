<%-- 
    Document   : gestiontarjetas
    Created on : 03-oct-2015, 19:18:14
    Author     : Diego
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>


<html>
    <head>
        <title>Platillos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script> 
        <link href="css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="js/sweetalert.min.js" type="text/javascript"></script>

    </head>
    <script>
        var accessToken;
        window.fbAsyncInit = function () {
            FB.init({
                appId: '589600291202468',
                status: true,
                cookie: true,
                oauth: true,
                xfbml: true
            });
            FB.getLoginStatus(function (response) {
                if (response.status == 'connected') {
                    accessToken = response.authResponse.accessToken;
                    doSomething();
                } else {
                    FB.login(function (response) {
                        if (response.status == 'connected') {
                            accessToken = response.authResponse.accessToken;
                            doSomething();
                        } else {
                            alert("Bye.");
                        }
                    }, {scope: 'publish_stream,user_photos,friends_photos,user_photo_video_tags,friends_photo_video_tags'});
                }
            });
        };

        // UPLOAD A LOCAL IMAGE FILE, BUT THIS CAN NOT BE DONE WITHOUT USER'S MANUAL OPERATION BECAUSE OF SECURITY REASONS
        function fileUpload() {
            FB.api('/me/albums', function (response) {
                var album = response.data[0]; // Now, upload the image to first found album for easiness.
                var action_url = 'https://graph.facebook.com/' + album.id + '/photos?access_token=' + accessToken;
                var form = document.getElementById('upload-photo-form');
                form.setAttribute('action', action_url);

                // This does not work because of security reasons. Choose the local file manually.
                // var file = document.getElementById('upload-photo-form-file');
                // file.setAttribute('value', "/Users/nseo/Desktop/test_title_03.gif")

                form.submit();
            });
        }
        // POST A IMAGE WITH DIALOG using FB.api
        function postImage1() {
            var wallPost = {
                message: "Test to post a photo",
                picture: "http://www.photographyblogger.net/wp-content/uploads/2010/05/flower29.jpg"
            };
            FB.api('/me/feed', 'post', wallPost, function (response) {
                if (!response || response.error) {
                    alert('Failure! ' + response.status + ' You may logout once and try again');
                } else {
                    alert('Success! Post ID: ' + response);
                }
            });
        }



        // POST A FEED WITH DIALOG using FB.ui
        function postFeed2(x2, descripcion, pk_id) {
            FB.ui(
                    {
                        method: 'feed',
                        name: 'Facebook Dialogs',
                        link: 'http://developers.facebook.com/docs/reference/dialogs/',
                        picture: x2,
                        caption: 'Reference Documentation',
                        description: descripcion
                    },
            function (response) {
                if (response && response.post_id) {
                   swal('Succeeded to post');
                    location.href = 'postearServlet?idpost=' + response.post_id + '&pk_id=' + pk_id
                    console.log(response.post_id);

                } else {
                    swal('Failed to post');
                    console.log(response.post_id);
                }
            }
            );
        }
        function obtenerlikes() {
            FB.api(
                    '/me',
                    'GET',
                    {"fields": "feed{likes.limit(100)}"},
            function (response) {
                // Insert your code here
                JSON.stringify(response); 
                console.log(JSON.stringify(response));
            }
            );
        }

        function displayLikes(iLikes) {
            swal("Total de likes del post: " + iLikes);
        }
        function queryLikes(sResourceID, oCallback) {

            var oCounter = {likes: 0};

            // Consulta o número de likes do recurso
            FB.api("/" + sResourceID + "/likes?limit=5000",
                    function (oResponse) {
                        outputLikers(oResponse.data);
                        queryResponse(oCounter, oResponse.data.length, oResponse.paging.next, oCallback);
                    }
            );
        }
        function queryResponse(oCounter, iLikes, sNext, oCallback) {
            oCounter.likes += iLikes;

            if (sNext != null) {
                FB.api(sNext,
                        function (oResponse) {
                            outputLikers(oResponse.data);
                            queryResponse(oCounter, oResponse.data.length, oResponse.paging.next, oCallback);
                        }
                );
            }
            else
                oCallback(oCounter.likes);
        }
        function outputLikers(aData) {
            for (var i = 0; i < aData.length; ++i) {
                var oUser = aData[i];
                console.log(oUser.name + "(" + oUser.id + ")");
            }
        }

        <%--     $(document).ready(function () {
            $('#tabla1').stacktable();
        });--%>

    </script>



    <script>
        $(window).bind("load", function () {
            // Cargar imagenes
            $(".imgPreload").each(function () {
                $(this).attr("src", $(this).attr("srcPre"));
            });
        });
    </script>

    <body style="background:  url('img/jama.jpg') no-repeat center center fixed;">
        <div id="data"></div>
        <div id="fb-root"></div>
        <nav class="navbar navbar-default navbar-static-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".botoncito" >
                        <span class="sr-only">Menu</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button> 
                    <img src="img/Captura.JPG" alt=""  style="width: 100px;height: 62px;border-radius: 5px;   "/>
                </div>

                <!-- el menu del navbar   -->

                <div class="collapse navbar-collapse navbar-right botoncito " >
                    <ul class="nav navbar-nav" >

                        <li class="active"><a style="background-color: #808000" href="gestionPlatillo"><p style="color: white;"><strong>Gestionar Platillos</strong></p></a></li> 

                        <li ><a href="gestionPlatillosPosteados" >Platillos posteados  </a></li>
                        <li ><a href="LoginServlet" >Cerrar sesion</a></li>
                    </ul>
                </div>

            </div>              
        </nav>



        <section class="main clase-general">
            <div class="container-fluid" style=" margin-right: 10px;
                 margin-left: 10px;">

                <c:forEach var="x" items="${sessionScope.listado}" >

                    <div class="row"><br>

                        <ul class="list-inline ">
                            <li class="col-md-4 col-xs-12">
                                <div >
                                    <p><img src="${x.imagen}" alt="" class="img-responsive " style=" border-radius: 20px;width: 100%;border:5px solid #666;" id="image"/></p>                                             
                                </div> 
                            </li>
                            <li class="col-md-8 col-xs-12">

                                <table class="table stacktable" style="width: 100%" id="tabla1" >
                                    <thead>
                                        <tr>
                                    <div  style="color: white;background-color: grey;padding-left: 10px;width: 100%;"><strong><p style="padding-left: 20%">Atributos</p></strong></div>

                                    </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td  style="color: #000000" style="width: 50%;text-align: right"><strong>Nombre</strong></td>
                                            <td style="width: 50%;text-align: justify;text-align: center"> <strong>${x.nombre}</strong> </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #000000" style="width: 50%;text-align: center"><strong>Descripcion</strong></td>
                                            <td style="width: 50%;text-align: center">  <strong> ${x.descripcion}</strong> </td>
                                        </tr>
                                        <tr>
                                            <td style="color: #000000" style="width: 50%;text-align: center"><strong style="text-align: center">Tag </strong></td>
                                            <td style="width: 50%;text-align: center"> 
                                                <strong> ${x.tag}</strong> </td>
                                    
                                        </tr>
                                        <tr>


                                            <td style="text-align: center"><p> <a    id="foto "style="color: blue" onclick="javascript:postFeed2('${x.imagen}', '${x.descripcion}', '${x.id}')" /><strong>Postear facebook</strong></a></p>  </td>
                                         <!-- <td style="text-align: center"> <p style="color: red"> <a  style="color: red"href="crud?accion=eliminar&id=<%--<c:out value="${x.id}" />">--%><strong>Eliminar</strong></a></p></td> -->

                                        </tr>
                                   <!--     <tr>
                                            <td style="text-align: center"><p> <a    id="foto "style="color: yellow" onclick="javascript:obtenerlikes()" /><strong>Contar likes</strong></a></p>  </td>
                                            <td> <button onclick="queryLikes('', displayLikes);">Consultar likes del post</button></td>
                                        </tr> -->


                                    </tbody>
                                </table>

                            </li>                                    


                    </div><!--  class row  -->



                </c:forEach>              
                <!-- fin del ul   -->

            </div> 
        </section>

        <footer class="foot" style="background: #A5DC86">
            <div  class='triangulitos  ' style="border:5px solid #666;">
                <span style='visibility: hidden'>asd</span> 
            </div>       
            <div class="foot  col-xs-12">
                <div class="container">
                    <div class="row">

                        <ul class="list-inline ulf">
                            <li class="col-md-5 col-xs-12">

                            </li>
                            <li class="col-md-7 col-xs-12">
                                <div >
                                    <h5 id="idh6" style="text-align: center">
                                        <br ><p style="color: #000000;"><strong >Integrantes:</strong></p> <br >   <p style="color: #000000;"><strong >- Miguel De La Torre  - Christian Valencia  - Miguel Bernedo - Diego Renteria</strong></p><br >
                                        <p style="color: #000000;">  <br><strong>- Diego Renteria - Diego Rojas - Marco Payano - Jordi Apaclla</strong></p><br>
                                        <p style="color: #000000;"> <br ><strong>- Marco Luna -Steve Rivera</strong></p>
                                    </h5>                                             
                                </div>  
                            </li>

                        </ul>

                    </div>
                </div>
            </div>

        </footer>


        <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>        
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/sweetalert.min.js" type="text/javascript"></script>
        <script src='http://connect.facebook.net/en_US/all.js'></script>
    </body>
</html>
