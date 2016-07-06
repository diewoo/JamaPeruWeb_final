/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function(){
    
      
    
    $("#ingresar").click(function(){
        
        
        if($("#corrreo").val() === ""){
           
           
            swal("Campo de correo vacio");
            return false;
        }else if($("#nombre").val() === ""){
            swal("Campo nombre  vacio");
            return false;
        }else if($("#sexo").val() === ""){
            swal("Campo de sexo vacio");
            return false;
        }else if($("#apellido").val() === ""){
            swal("Campo de apellido vacio");
            return false;
        }else if($("#password").val() === ""){
            swal("Campo de password vacio");
            return false;
        }else if($("#conpassword").val() === ""){
            swal("Campo de password vacio");
        }else if($("#datepicker").val() === ""){
            swal("Campo de fecha vacio");
        }
       
        
            });
            
            $('#form').each(function () {
        this.reset();
    }); 
           
            });     