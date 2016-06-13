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
  
  
  
}        
    