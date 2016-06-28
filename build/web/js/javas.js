   $(function() {
              $( "#txtfechan" ).datepicker();
            });
            
            $('.selectpicker').selectpicker();
            
             $('.selectpicker').selectpicker({
                style: 'btn-info',
                size: 4
            });
            function soloNumeros(e){
                var key = window.Event ? e.which : e.keyCode
                return (key >= 48 && key <= 57)
            }
            
            
    function validacion() {
        
        valor = document.getElementById("txtnombre").value;
        valor2 = document.getElementById("txtapaterno").value;
        valor3 = document.getElementById("txtamaterno").value;
        valor5 = document.getElementById("txtfechan").value;
        valor6 = document.getElementById("comboNacionalidad").selectedIndex;
        valor7 = document.getElementById("txtdni").value;
        valor8 = document.getElementById("comboDepartamento").selectedIndex;
        valor9 = document.getElementById("txtdireccion").value;
        valor10= document.getElementById("comboDistrito").selectedIndex;
        valor11 = document.getElementById("txttfijo").value;
        valor12 = document.getElementById("txttcelular").value;
        valor13 = document.getElementById("txtcontraseña").value;
        valor14 = document.getElementById("txtrcontraseña").value;
        
            
  if ( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
   
   swal("falta nombre");
      return  false;
   
  }else if ( valor2 == null || valor2.length == 0 || /^\s+$/.test(valor) ) {
   
     swal("falta apellido paterno");
      return  false;
  }else if(valor3 == null || valor3.length == 0 || /^\s+$/.test(valor)){
          
     swal("falta apellido materno");
      return  false;
  }else if(document.getElementById('radiohombre').checked==false && document.getElementById('radiomujer').checked==false){
          
      swal("falta sexo");
      return  false;
  }else if(valor5 == null || valor5.length == 0 || /^\s+$/.test(valor)){
          
    swal("falta fecha de nacimiento");
      return  false;
  }else if(valor6==0){
          
       swal("falta seleccionar nacionalidad");
      return  false;
  }else if(valor7 == null || valor7.length == 0 || /^\s+$/.test(valor)){
          
    swal("falta apellido dni");
      return  false;
  }else if(valor8==0){
          
      swal("falta seleccionar departamento");
      return  false;
  }else if(valor9 == null || valor9.length == 0 || /^\s+$/.test(valor)){
          
     swal("falta direccion");
      return  false;
  }else if(valor10==0){
          
       swal("falta seleccionar distrito");
      return  false;
  }else if(valor11 == null || valor11.length == 0 || /^\s+$/.test(valor)){
          
     swal("falta telefono fijo");
      return  false;
  }else if(valor12 == null || valor12.length == 0 || /^\s+$/.test(valor)){
          
     swal("falta celular");
      return  false;
  }else if(valor13 == null || valor13.length == 0 || /^\s+$/.test(valor)){
          
     swal("falta contrasenia");
      return  false;
  }else if(valor14 == null || valor14.length == 0 || /^\s+$/.test(valor)){
          
     swal("falta repetir contrasenia");
      return  false;
  }else if(valor13!=valor14){
          
      swal("contrasenias no coinciden");
      return  false;
  }
  
  
  
var accessToken;
window.fbAsyncInit = function(){
  FB.init({
    appId: 'PUT YOUR APPID HERE',
    status: true,
    cookie: true,
    oauth: true,
    xfbml: true
  });
  FB.getLoginStatus(function(response){
   if (response.status == 'connected') {
     accessToken = response.authResponse.accessToken;
     doSomething();
   }
   else {
     FB.login(function(response){
       if (response.status == 'connected') {
         accessToken = response.authResponse.accessToken;
         doSomething();
       }
       else {
         alert("Bye.");
       }
     }, {scope:'publish_stream,user_photos,friends_photos,user_photo_video_tags,friends_photo_video_tags'});
   }
  });
};
// CHOOSE WHAT YOU WANT TO DO. THIS FUNCTION IS CALLED AUTOMATICALLY ON PAGE LOADING
function doSomething() {
//  postImage1();
//  postFeed();
//  showFriends();
}
// UPLOAD A LOCAL IMAGE FILE, BUT THIS CAN NOT BE DONE WITHOUT USER'S MANUAL OPERATION BECAUSE OF SECURITY REASONS
function fileUpload() {
  FB.api('/me/albums', function(response) {
    var album = response.data[0]; // Now, upload the image to first found album for easiness.
    var action_url = 'https://graph.facebook.com/' + album.id + '/photos?access_token=' +  accessToken;
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
  FB.api('/me/feed', 'post', wallPost , function(response) {
    if (!response || response.error) {
      alert('Failure! ' + response.status + ' You may logout once and try again');
    } else {
      alert('Success! Post ID: ' + response);
    }
  });
}
// POST A FEED WITH DIALOG using FB.ui
function postFeed() {
   FB.ui(
    {
      method: 'feed',
      name: 'Facebook Dialogs',
      link: 'http://developers.facebook.com/docs/reference/dialogs/',
      picture: 'http://fbrell.com/f8.jpg',
      caption: 'Reference Documentation',
      description: 'Dialogs provide a simple, consistent interface for applications to interface with users.'
    },
    function(response) {
      if (response && response.post_id) {
        alert('Succeeded to post');
      }
      else {
        alert('Failed to post');
      }
    }
  );
}
// GET MY FRIEND LIST using FB.api (Just a copy from somewhere)
function showFriends() {
  FB.api('/me/friends', function(response){
    var ul = document.createElement('ul');
    for (var i = 0; i < response.data.length; i++) {
      var li = document.createElement('li');
      response.data[i].img = function() {
        return '<img src="http://graph.facebook.com/' + this.id + '/picture" />'
      }
      li.innerHTML = response.data[i].img() + response.data[i].name;
      ul.appendChild(li);
    }
    document.getElementById('fb-content').appendChild(ul);
  });
}
(function(){
var e = document.createElement('script');
e.src = document.location.protocol + '//connect.facebook.net/en_US/all.js';
e.async = true;
document.getElementById('fb-root').appendChild(e);
}());

}        
    