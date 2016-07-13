/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {


    var emailReg = /^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i;
//    var numero = /^\+?(0|[1-9]\d*)$/;
    var nombrereg = /^([a-z ñáéíóú]{2,60})$/i;
    
     
    $("#ingresar").click(function () {

       
        if ($("#nombre").val() === "") {


            swal("Campo de nombre vacio");
            return false;
        } else if (!(nombrereg.test($("#nombre").val()))) {
            swal("Solo letras en el nombre!");
            return false;
        } else if ($("#descrip").val() === "") {
            swal("Campo decripcion  vacio");
            return false;
        }else if ($("#imagen").val() === ""){
            swal("No hay imagen ");
        }else if (!(nombrereg.test($("#descrip").val()))) {
            swal("Solo letras en la descripcion!");
            return false;
        }

    });
    $("#nombre").keyup(function () {
        if ($(this).val() !== "" && nombrereg.test($(this.val()))) {

            return false;
        }

    });
     $("#descrip").keyup(function () {
        if ($(this).val() !== "" && nombrereg.test($(this.val()))) {

            return false;
        }

    });
   
   

    $('#form').each(function () {
        this.reset();
    });

});     