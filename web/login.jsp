<%-- 
    Document   : login
    Created on : 02-05-2020, 18:34:14
    Author     : chida
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <link rel="stylesheet" href="css/icomoon.css">
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
    <body>

        <div class="bg-top navbar-light">
            <div class="container">
                <div class="row no-gutters d-flex align-items-center align-items-stretch">
                    <div class="col-md-4 d-flex align-items-center py-4">
                        <a class="navbar-brand" href="index.jsp"><img src="images/logo.jpg" alt="logo"></a>
                    </div>
                    <div class="col-lg-8 d-block">
                        <div class="row d-flex">
                            <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
                                <div class="icon d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span>
                                </div>
                                <div class="text d-flex align-items-center">
                                    <span>OKCasa_contacto@gmail.com</span>
                                </div>
                            </div>
                            <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
                                <div class="icon d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
                                <div class="text d-flex align-items-center">
                                    <span>LLámanos: +22002200</span>
                                </div>
                            </div>
                            <div class="col-md topper d-flex align-items-center align-items-stretch">
                                <p class="mb-0 d-flex d-block">
                                    <a href="#" class="btn btn-primary d-flex align-items-center justify-content-center">
                                        <span>Solicita una Inspección</span>
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light sticky-top" id="ftco-navbar"
             style="position: -webkit-sticky;">
            <div class="container d-flex align-items-center">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                        aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active"><a href="index.jsp" class="nav-link pl-0">Home</a></li>
                        <li class="nav-item"><a href="nosotros.jsp" class="nav-link">Sobre Nosotros</a></li>
                        <li class="nav-item"><a href="servicios.jsp" class="nav-link">Servicios</a></li>
                        <li class="nav-item"><a href="MisInspecciones.jsp" class="nav-link">Mis Inspecciones <span
                                    class="icon"></span></a></li></a></li>
                        <form action="#" class="searchform" style="margin-top: 5px; margin-left: 200px; padding-left: 5px;">
                            <div class="form-group d-flex">
                                <input type="text" class="form-control pl-1" placeholder="Buscar">
                                <button type="submit" placeholder="" class="form-control search"><span
                                        class="ion-ios-search"></span></button>
                            </div>
                        </form>
                    </ul>            
                    <ul class="nav navbar-nav navbar-right">
                        <li class="nav-item"><a href="login.jsp" class="nav-link">Ingresar <span
                                    class="icon-user"></span></a></li>
                    </ul>
                </div>


            </div>
        </div>
    </nav>
    <!-- END nav -->



    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');"
             data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-center justify-content-center">
                <div class="col-md-9 ftco-animate text-center">
                    <h1 class="mb-2 bread">Ingreso</h1>
                    <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i
                                    class="ion-ios-arrow-forward"></i></a></span> <span>Login <i class="ion-ios-arrow-forward"></i></span>
                    </p>
                </div>
            </div>
        </div>
    </section>

    <br>
    <br>
    <div class="container-fluid">
        <div class="container">
            <h2 class="text-center" id="title">Regístrate para Agendar tu Inspección</h2>
            <p class="text-center">
                <small id="passwordHelpInline" class="text-muted"></small>
            </p>
            <hr>
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <form role="form">
                        <fieldset>
                            <p class="text-uppercase" style="font-weight: bold;margin-left: 30px;">Ingresa con tu Cuenta</p>
                            <br>
                            <div class="row justify-content-center">
                                <img src="images/icono-usuario_6091-78.jpg" alt="imagen" width="150px" height="120px"
                                     style="left: 80px; margin-right: 30px">
                            </div>
                            <br>

                            <div class="form-group" id="textbox">
                                <input type="text" name="username" id="username" class="form-control input-lg" placeholder="Usuario"
                                       title="Debe Ingresar su Usuario" required minlength="5">
                            </div>
                            <div class="form-group" id="textbox">
                                <input type="password" name="password" id="password" class="form-control input-lg"
                                       placeholder="Contraseña" title="Debe Ingresar su Contraseña" required minlength="7">
                            </div>
                            <div>
                                <input type="submit" class="btn btn btn-primary" value="Ingresar" style="margin-left: 30px">
                            </div>
                            <br>
                            <br>

                        </fieldset>
                    </form>
                </div>
                <div class="col-md-5">
                    <form>
                        <p class="text-uppercase pull-center" style="font-weight: bold;margin-left: 30px;"> Regístrate</p>
                        <div class="form-group"  id="textbox"> <!-- RUT -->
                            <label style="color: #bd2130">*</label>
                            <label for="rut" class="control-label">RUT</label>
                            <input type="text" name="rut" id="username" class="form-control input-lg" placeholder="Ej: 11.111.111-1"
                                   title="Debe Ingresar su RUT" required minlength="9">
                        </div>    


                        <div class="row" style="width: 90%">

                            <div class="col-md-5" id="textbox">
                                <div class="form-group"> <!-- Primer Nombre -->
                                    <label style="color: #bd2130">*</label>
                                    <label for="primer_nombre" class="control-label" style="black">Primer Nombre</label>
                                    <input type="text" name="primer_nombre" id="username" class="form-control input-lg" placeholder="Ej: Juan"
                                           title="Debe Ingresar su Nombre" required minlength="3">
                                </div>  
                            </div>

                            <div class="col-md-5" id="textbox">
                                <div class="form-group"> <!-- Segundo Nombre -->

                                    <label for="segundo_nombre" class="control-label">Segundo Nombre</label>
                                    <input type="text" name="segundo_nombre" id="username" class="form-control input-lg" placeholder="Ej: Pedro">
                                </div>    
                            </div>

                        </div>
                        <div class="row ">
                            <div class="col-md-12 pad-adjust">

                                <div class="form-group" id="textbox"> <!-- Apellido Paterno -->
                                    <label style="color: #bd2130">*</label>
                                    <label for="ap_paterno" class="control-label">Apellido Paterno</label>
                                    <input type="text" name="ap_paterno" id="username" class="form-control input-lg" placeholder="Apellido Paterno"
                                           >
                                </div>    
                                <div class="form-group" id="textbox"> <!-- Apellido Materno -->
                                    <label style="color: #bd2130">*</label>
                                    <label for="ap_materno" class="control-label">Apellido Materno</label>
                                    <input type="text" name="ap_materno" id="username" class="form-control input-lg" placeholder="Apellido Materno"
                                           >
                                </div>    
                                <div class="form-group" id="textbox"> <!-- Direccion -->
                                    <label style="color: #bd2130">*</label>
                                    <label for="direccion" class="control-label">Dirección</label>
                                    <input type="text" name="direccion" id="direccion" class="form-control input-lg"
                                           placeholder="Dirección y N°">
                                </div>    


                                <div class="form-group" id="textbox"> <!--Comuna -->
                                    <label style="color: #bd2130">*</label>
                                    <label for="id_comuna" class="control-label">Comuna</label>
                                    <select class="form-control" id="id_comuna" >
                                        <option value="1">Santiago</option>
                                        <option value="2">Providencia</option>
                                        <option value="3">Ñuñoa</option>
                                        <option value="4">La Florida</option>
                                        <option value="5">Puente Alto</option>
                                        <option value="6">Maipú</option>
                                        <option value="7">San Joaquín</option>
                                    </select>                    
                                </div>

                                <div class="form-group" id="textbox"> <!-- Telefono -->
                                    <label style="color: #bd2130">*</label>
                                    <label for="telefono" class="control-label">Telefono</label>
                                    <input type="number" name="telefono" id="telefono" class="form-control input-lg"
                                           placeholder="teléfono">
                                </div>    
                                <div class="form-group" id="textbox"> <!-- Email -->
                                    <label style="color: #bd2130">*</label>
                                    <label for="email" class="control-label">Email</label>
                                    <input type="email" name="email" id="telefono" class="form-control input-lg"
                                           placeholder="ejemplo@okcasa.cl">
                                </div>    
                                <div class="form-group" id="textbox"> <!-- Usuario -->
                                    <label style="color: #bd2130">*</label>
                                    <label for="usuario" class="control-label">Usuario</label>
                                    <input type="text" name="usuario" id="usuario" class="form-control input-lg" placeholder="Usuario"
                                           title="Debe Ingresar Usuario" required minlength="5">
                                </div>    
                                <div class="form-group" id="textbox"> <!-- Contraseña 1 -->
                                    <label style="color: #bd2130">*</label>
                                    <label for="contrasenia" class="control-label">Contraseña</label>
                                    <input type="password" name="password" id="pass1" class="form-control input-lg"
                                           placeholder="Contraseña" title="Debe Ingresar su Contraseña" required minlength="7">
                                </div>    
                                <div class="form-group" id="textbox"> <!-- Contraseña 2 -->
                                    <label style="color: #bd2130">*</label>
                                    <label for="contrasenia2" class="control-label">Vuelva a introducir Contraseña</label>
                                    <input type="password" name="password2" id="pass2" class="form-control input-lg"
                                           placeholder="Contraseña" title="Ingrese nuevamente la contraseña" required minlength="7">
                                    <!-- Error Text --> <div id="error2"></div>
                                </div>    

                                <div class="form-check" style="margin-left: 30px">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" required min="1" checked="true">
                                        Al registrarte estás aceptando nuestras <br> políticas y términos.
                                    </label>
                                </div>
                                
                                <br>
                               
                                <div>
                                <input type="submit" class="btn btn btn-primary" value="Registrar" style="margin-left: 30px">
                            </div>
                                
                                <br>
                                <br>
                                
                                </form>
                            </div>




                        </div>
                </div>
                <br>
                <br>
                <br>
                <br>
            </div>





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
                                            <div><a href="#"><span class="icon-calendar"></span> Desde Feb. 07, 1990</a></div>
                                            <div><a href="#"><span class="icon-person"></span> 40 empleados</a></div>
                                            <div><a href="#"><span class="icon-home"></span> Sede Base</a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="block-21 mb-5 d-flex">
                                    <a class="blog-img mr-4" style="background-image: url(images/image_2.jpg);"></a>
                                    <div class="text">
                                        <h3 class="heading"><a href="#"> Santiago, Chile</a></h3>
                                        <div class="meta">
                                            <div><a href="#"><span class="icon-calendar"></span> Feb. 07, 2018</a></div>
                                            <div><a href="#"><span class="icon-person"></span> 60 empleados</a></div>
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
                                Copyright OKCasa &copy;
                                <script>document.write(new Date().getFullYear());</script> Todos los derechos reservados
                            </p>
                        </div>
                    </div>
                </div>
            </footer>



            <!-- Icono Cargar-->
            <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
                <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
                <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                        stroke="#F96D00" /></svg></div>


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
            <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
            <script src="js/backtotop.js"></script>

            </body>
            </html>
