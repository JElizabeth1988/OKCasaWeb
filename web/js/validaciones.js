$(function(){

   $("#formulario").validate({
        rules:{
            txtNombre:{
                required:true, //campo requerido
                lettersonly:true
            },
            txtCorreo:{
                required:true,
                email:true

            },
            txtContrasenia:{
                required:true
            },
            txtContrasenia2:{
                required:true,
                equalTo: "#contra" //comparar con la primera contraseña
            }




        },
        messages:{
            txtNombre:{
                required:"Campo obligatorio",
                lettersonly:"Solo letras"
            },
            txtCorreo:{
                required: "Campo obligatorio",
                email:"Ingrese un mail valido"


            },
            txtContrasenia:{
                required:"Campo obligatorio"
            },
            txtContrasenia2:{
                required:"Campo obligatorio",
                equalTo:"Las contrase&ntilde;as no coinciden"
            }
        }

   });

});