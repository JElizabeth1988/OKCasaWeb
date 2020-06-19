<%-- 
    Document   : PagoIngreso
    Created on : 17-06-2020, 16:31:54
    Author     : chida
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>

        <title>Web de Pago</title>
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900" rel="stylesheet">

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/fontello.css">
        <link rel="stylesheet" href="css/style.css">

        <link rel="stylesheet" href="css/style.css">
        <script src="jquery/jquery.min.js"></script>
        <!---- jquery link local dont forget to place this in first than other script or link or may not work ---->

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!---- boostrap.min link local ----->

        <link rel="stylesheet" href="css/style.css">
        <!---- boostrap.min link local ----->

        <script src="js/bootstrap.min.js"></script>
        <!---- Boostrap js link local ----->

        <link rel="icon" href="images/icon.png" type="image/x-icon" />
        <!---- Icon link local ----->

        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
        <!---- Font awesom link local ----->
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon.png">

    </head>

    <body style="background-color: white;">

        <!-- Back to top button -->
        <a id="button"></a>

        <div class="bg-top" style="background-color: white;">
            <div class="container">
                <div class="row no-gutters d-flex align-items-center align-items-stretch">
                    <div class="col-md-4 d-flex align-items-center py-4">
                        <a class="navbar-brand" href="index.jsp"><img src="images/webpago.png" width="80%" alt="logo"></a>
                    </div>
                </div>
                <hr>
            </div>
        </div> 
        <!-- END nav -->


        <div class="container">
            <p class="text-center">
            </p>

            <!-- INGRESO --------------------------------------------------------------------------------------------->
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <c:if test="${err!=null}">
                        <div class="alert alert-danger">${err}</div>  
                    </c:if> 

                    <div class="wrap-contact100">

                        <%-- Caambiar SERVLET! --%>
                        <form action="servletLogin" method="POST">
                            <fieldset>
                                <br> 
                                <div class="row justify-content-center">
                                    <label style="font-family: fantasy; font-size: 18px;color: black;">Bienvenido, Ingresa tus credenciales.</label>
                                </div>
                                <br>
                                <label for="usuario" class="control-label" id="lab" style="font-size: 15px;">Usuario</label>
                                <div class="input-group form-group" id="tx" style="margin-left: 50px; background-color: #34c0e7">
                                    <input class="form-control" type="text" name="txtUsuario" id="username"  placeholder=" Ingresa Usuario" class="form-control input-lg"
                                           title="Debe Ingresar su Usuario" required minlength="5">

                                </div>

                                <label for="contrasenia" class="control-label" id="lab" style="font-size: 15px;">Contraseña</label>
                                <div class="input-group form-group" id="tx" style="margin-left: 50px">

                                    <input type="password" name="txtContrasenia" id="password" placeholder="Ingresa tu contraseña" class="form-control input-lg"
                                           title="Debe Ingresar su Contraseña" required minlength="5">

                                </div>

                                <div class="justify-content-center">
                                    <p><a href="Pago.jsp" style="margin-left: 50px; width: 75%;" class="btn btn-danger">Ingresar</a></p>
                                </div>

                                <br>
                                <br>


                            </fieldset>
                        </form>



                    </div>    





                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>


                </div>
            </div>    
        </div>         
        <%--
        <form id="formulario">

            <input type="text" name="txtNombre" placeholder="Ingrese nombre">
            <br>
            <input type="email" name="txtCorreo" placeholder="Ingrese correo">
            <br>
            <input type="password" name="txtContrasenia" id="contra" placeholder="Ingrese contraseña">
            <br>
            <input type="password" name="txtContrasenia2"  placeholder="Ingrese contraseña">    
            <!-- submit es botón y desencadena click a diferencia button-->
            <input type="submit" value="Enviar"> 


        </form>--%>

        <!-- Icono Cargar-->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/jquery.timepicker.min.js"></script>
        <script src="js/scrollax.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>
        <script src="js/backtotop.js"></script>

        <!-- jquery -->

        <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>

        <!-- jquery validate -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>

        <!-- Nuestro script -->
        <script src="js/validaciones.js"></script>

        <!-- Métodos adicionales, validar solo letras -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/additional-methods.js"></script>


    </body>
</html>
