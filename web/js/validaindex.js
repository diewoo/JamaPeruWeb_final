/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {



    $("#ingresar").click(function () {


        if ($("#usuario").val() === "") {


            swal("Campo de usuario vacio!");
            return false;
        } else if ($("#password").val() === "") {
            swal("Campo de password vacio!");
            return false;
        }




    });

    $('#form').each(function () {
        this.reset();
    });

});   