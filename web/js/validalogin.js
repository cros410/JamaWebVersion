/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function(){
    
      
    
    $("#ingresar").click(function(){
        
        
        if($("#usuario").val() === ""){
           
           
            swal("Campo de usuario vacio");
            return false;
        }else if($("#nombreapellido").val() === ""){
            swal("Campo nombre y apellido vacio");
            return false;
        }else if($("#inputEmail").val() === ""){
            swal("Campo de email vacio");
            return false;
        }else if($("#inputConfirmarEmail").val() === ""){
            swal("Campo de email vacio");
            return false;
        }else if($("#datepicker").val() === ""){
            swal("Campo de Fecha vacio");
            return false;
        }
        
       
        
            });
            
            $('#form').each(function () {
        this.reset();
    }); 
           
            });     