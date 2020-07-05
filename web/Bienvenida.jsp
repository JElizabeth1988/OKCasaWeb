<%-- 
    Document   : EnviarCorreo
    Created on : 25-06-2020, 19:57:23
    Author     : chida
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
    <head>

        <title>OKCASA</title>
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
        <link rel="stylesheet" href="css/fontello-embedded.css">
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

        <%@include file="menu.jsp" %>
        <!-- END nav -->

        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');"
                 data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-9 ftco-animate text-center">
                        <h1 class="mb-2 bread">Gestión</h1>
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i
                                        class="ion-ios-arrow-forward"></i></a></span> <span>Bienvenida<i class="ion-ios-arrow-forward"></i></span>
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <br>


        <div class="container">
            <h3 class="text-center" id="title">Hola, ${username} </h3>
            <p class="text-center">
                <small id="passwordHelpInline" class="text-muted"></small>
            </p>
            <hr>

            <div class="container">

                <div class="row justify-content-center">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <div class="wrap-contact100" id="wrapp">
                            <br>
                            <div class="row justify-content-center"> 

                                <h5>Verifica tus Inspecciones</h5>
                                <hr id="line" style="width:110%;border-style: dotted">
                            </div>


                            <table class="table justify-content-center text-center" style="width: 60%;margin-left: 150px;">
                                <tr>

                                    <td>

                                        <form action="ListaUS" method="POST">
                                            <input value="${rut}" name="txtRut" hidden>
                                            <input type="submit" name="btnEnviar" value="Mis Inspecciones" class="btn">
                                        </form>
                                       <hr>
                                       
                                    <td> 

                                </tr>
                                <tr>

                                    <td>
                                        <form action="ListaInforme" method="POST">
                                            <input type="hidden" name="txtRut" id="txtId" value="${rut}">
                                            <input type="submit" class="btn" value="Ver Mis Resultados">
                                        </form>     
                                          <hr>
                                    </td>
                                </tr>
                                <tr>

                                    <td> <input  class="btn" value="Agendar"></td>
                                    
                                </tr>
                                <tr>



                                </tr>
                            </table>
                            <br>
                            <br>
                        </div>
                        <br>
                        <br>
                        </form>   
                        <br>
                        <br>

                    </div>
                    <div class="col-sm-2"></div>

                </div>

            </div>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>

        </div>


        <!--Footer  -->
        <%@include file="footer.jsp" %>  


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
        <script src="js/validarRut.js"></script>

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