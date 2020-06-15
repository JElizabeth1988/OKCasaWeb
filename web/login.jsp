<%-- 
    Document   : login
    Created on : 02-05-2020, 18:34:14
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

    <body style="background-color: #f2f2f2;">

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
                        <h1 class="mb-2 bread">Ingreso</h1>
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i
                                        class="ion-ios-arrow-forward"></i></a></span> <span>Registro <i class="ion-ios-arrow-forward"></i></span>
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <br>

        <div class="container">
            <h2 class="text-center" id="title">Ingresa para Agendar tu Inspección</h2>
            <p class="text-center">
                <small id="passwordHelpInline" class="text-muted"></small>
            </p>
            <hr>
            <!-- INGRESO --------------------------------------------------------------------------------------------->
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <c:if test="${err!=null}">
                        <div class="alert alert-danger">${err}</div>  
                    </c:if> 

                        <div class="wrap-contact100" id="wrapp">
                            <form action="servletLogin" method="POST">
                                <fieldset>
                                    <br>
                                    <p class="text-uppercase" style="font-weight: bold;margin-left: 30px;">Ingresa con tu Cuenta</p>
                                    <br>
                                    <div class="row justify-content-center">
                                        <img src="images/avatar.png" alt="imagen" width="120px" height="120px"
                                             style="left: 70px;">
                                    </div>

                                    <label for="usuario" class="control-label" id="lab">Usuario</label>
                                    <div class="input-group form-group" id="tx" style="margin-left: 50px">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-user-outline"></i></span>
                                        </div>
                                        <input class="form-control" type="text" name="txtUsuario" id="username"  placeholder=" Ingresa Usuario" class="form-control input-lg"
                                               title="Debe Ingresar su Usuario" required minlength="5">

                                    </div>

                                    <label for="contrasenia" class="control-label" id="lab">Contraseña</label>
                                    <div class="input-group form-group" id="tx" style="margin-left: 50px">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="icon-lock-1"></i></span>
                                        </div>
                                        <input type="password" name="txtContrasenia" id="password" placeholder="Ingresa tu contraseña" class="form-control input-lg"
                                               title="Debe Ingresar su Contraseña" required minlength="5">

                                    </div>

                                    <div>
                                        <input type="submit" class="btn btn btn-primary" value="Ingresar" style="margin-left: 50px; width: 75%;">
                                    </div>
                                    <br>
                                    <div class="form-group">
                                        <p class="text-center">No tienes una cuenta? <a href="Registrar.jsp" id="signup">Regístrate aquí</a> </p>
                                    </div>
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



        <!--Footer  -->
        <footer class="ftco-footer ftco-bg-dark ftco-section">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-5">
                            <h2 class="ftco-heading-2 logo"><span></span><img src="images/logo2.jpg" alt="logo"></h2>
                            <p>Preocupados por la calidad de tu hogar, para una experiencia única con tu familia.</p>
                            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                            </ul>
                        </div>

                    </div>
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-5 ml-md-4">
                            <h2 class="ftco-heading-2">Sobre nosotros</h2>
                            <ul class="list-unstyled">
                                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Conócenos</a></li>
                                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Contáctanos</a></li>
                                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Solicita servicios</a></li>
                                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Conoce nuestro equipo</a></li>
                                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Proyectos</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="ftco-footer-widget mb-5">
                            <h2 class="ftco-heading-2">Sedes</h2>
                            <div class="block-21 mb-4 d-flex">
                                <a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
                                <div class="text">
                                    <h3 class="heading"><a href="#">Brooklyn,NY EEUU</a></h3>
                                    <div class="meta">
                                        <div><a href="#"><span class="icon-calendar"></span> Desde Feb. 07, 1979</a></div>
                                        <div><a href="#"><span class="icon-person"></span> 500 empleados</a></div>
                                        <div><a href="#"><span class="icon-home"></span> Sede Base</a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="block-21 mb-5 d-flex">
                                <a class="blog-img mr-4" style="background-image: url(images/image_2.jpg);"></a>
                                <div class="text">
                                    <h3 class="heading"><a href="#"> Santiago, Chile</a></h3>
                                    <div class="meta">
                                        <div><a href="#"><span class="icon-calendar"></span> Feb. 07, 1990</a></div>
                                        <div><a href="#"><span class="icon-person"></span> 320 empleados</a></div>
                                        <div><a href="#"><span class="icon-home"></span> Segunda Sede</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-5">
                            <h2 class="ftco-heading-2">Boletín Informátivo</h2>
                            <form action="#" class="subscribe-form">
                                <div class="form-group">
                                    <input type="text" class="form-control mb-2 text-center" placeholder="Ingresa tu email">
                                    <input type="submit" value="Subscríbete" class="form-control submit px-3">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">

                        <p>
                            Copyright OKCasa &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados 
                        </p>
                    </div>
                </div>
            </div>
        </footer>



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
