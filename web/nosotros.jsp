<%-- 
    Document   : nosotros
    Created on : 25-04-2020, 23:33:23
    Author     : chida
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OkCasa</title>

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
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon.png">

    </head>

    <body>
        <!-- Back to top button -->
        <a id="button"></a>

        <%@include file="menu.jsp" %>
        <!-- END nav -->

        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-9 ftco-animate text-center">
                        <h1 class="mb-2 bread">Sobre Nosotros</h1>
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Sobre Nosotros <i class="ion-ios-arrow-forward"></i></span></p>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-counter img" id="section-counter" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 d-flex">
                            <div class="text d-flex align-items-center">
                                <strong class="number" data-number="30">0</strong>
                            </div>
                            <div class="text-2">
                                <span>Años de <br>Experiencia</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 d-flex">
                            <div class="text d-flex align-items-center">
                                <strong class="number" data-number="1500">0</strong>
                            </div>
                            <div class="text-2">
                                <span>Inspecciones <br>Exitosas</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 d-flex">
                            <div class="text d-flex align-items-center">
                                <strong class="number" data-number="100">0</strong>
                            </div>
                            <div class="text-2">
                                <span>Expertos <br>Profesionales</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 d-flex">
                            <div class="text d-flex align-items-center">
                                <strong class="number" data-number="300">0</strong>
                            </div>
                            <div class="text-2">
                                <span>Clientes <br>Felices</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row no-gutters">
                    <div class="col-md-5 p-md-5 img img-2 mt-5 mt-md-0" style="background-image: url(images/bg_2.jpg);">
                    </div>
                    <div class="col-md-7 wrap-about py-5 px-4 px-md-5 ftco-animate">
                        <div class="heading-section mb-5">
                            <h2 class="mb-4" style="text-align: center ;">Somos Una Empresa Altamente Recomendada</h2>
                        </div>
                        <div style="text-align: justify">
                            <p>LLevamos años dedicándonos a la inspección de propiedades nuevas, con el fin de garantizar que los
                                propietarios las reciban en perfectas condiciones y hagan valer las garantías asociadas a su compra.
                                Resguardando la seguridad de tu familia y el valor de la inversión.
                            </p>
                            <p> Poseemos una amplia experiencia, adquirida durante años de ejercicio profesional, lo que nos ha permitido brindar
                                un servicio de calidad, rápido y eficiente.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center mb-5 pb-2">
                    <div class="col-md-8 text-center heading-section ftco-animate">
                        <span class="subheading">Inspectores</span>
                        <h2 class="mb-4">Nuestro Equipo Técnico</h2>
                        <p>El equipo de expertos de OKCasa cuenta con una amplia experiencia, siendo un equipo capacitado e instruido.</p>
                    </div>
                </div>	
                <div class="row">
                    <div class="col-md-6 col-lg-3 ftco-animate">
                        <div class="staff">
                            <div class="img-wrap d-flex align-items-stretch">
                                <div class="img align-self-stretch" style="background-image: url(images/team-1.jpg);"></div>
                            </div>
                            <div class="text pt-3 text-center">
                                <h3>Santiago González</h3>
                                <span class="position mb-2">Inspector Senior</span>
                                <div class="faded">

                                    <ul class="ftco-social text-center">
                                        <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                        <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                        <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                                        <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 ftco-animate">
                        <div class="staff">
                            <div class="img-wrap d-flex align-items-stretch">
                                <div class="img align-self-stretch" style="background-image: url(images/team-2.jpg);"></div>
                            </div>
                            <div class="text pt-3 text-center">
                                <h3>Gustavo Henríquez</h3>
                                <span class="position mb-2">Ingeniero en Construcción</span>
                                <div class="faded">

                                    <ul class="ftco-social text-center">
                                        <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                        <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                        <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                                        <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 ftco-animate">
                        <div class="staff">
                            <div class="img-wrap d-flex align-items-stretch">
                                <div class="img align-self-stretch" style="background-image: url(images/team-3.jpg);"></div>
                            </div>
                            <div class="text pt-3 text-center">
                                <h3>Eva Donoso</h3>
                                <span class="position mb-2">Ingeniera, experta en Diseño</span>
                                <div class="faded">

                                    <ul class="ftco-social text-center">
                                        <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                        <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                        <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                                        <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 ftco-animate">
                        <div class="staff">
                            <div class="img-wrap d-flex align-items-stretch">
                                <div class="img align-self-stretch" style="background-image: url(images/team-4.jpg);"></div>
                            </div>
                            <div class="text pt-3 text-center">
                                <h3>Matías Valdivieso</h3>
                                <span class="position mb-2">Arquitecto</span>
                                <div class="faded">

                                    <ul class="ftco-social text-center">
                                        <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                        <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                        <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                                        <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section justify-content-center">
            <div class="container mr-4">
                <div class="heading-section mb-5">
                    <h1 class="mb-4" style="text-align: center ; font-weight: bold;">Nuestra Historia</h1>
                </div>
                <div class="row">
                    <div class="col-md-3 p-md-1 img mt-1" style="background-image: url(images/edificio2.jpg);">
                    </div>
                    <div class="col-md-6 wrap-about py-5 px-4 px-md-5 ftco-animate justify-content-center" style="text-align: justify;">
                        <div>
                            <p> Nuestra sede ubicada en la comuna de Puente Alto, fue inagurada en 1990 por
                                Don Jerónimo Casas. La empresa de OKCasa comenzó solo con 40 empleados
                                y al día de hoy somos más de 300 en la familia.
                            </p>
                            <p>Desde el año 1990 nos hemos comprometido en ser la empresa #1 de Inspección
                                de casas de todo Chile, fiscalizando la seguridad de la familia. </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section contact-section">
            <div class="container">
                <div class="row d-flex mb-5 contact-info">
                    <div class="col-md-12 mb-4">
                        <h2 class="h4">Información de Contacto</h2>
                    </div>
                    <div class="w-100"></div>
                    <div class="col-md-3 d-flex">
                        <div class="bg-light d-flex align-self-stretch box p-4">
                            <p><span>Dirección:</span> 
                                <br>
                                <a href="dirección">Av. San Carlos 1340, Puente Alto, Región Metropolitana</p></a></p>   
                        </div>
                    </div>
                    <div class="col-md-3 d-flex">
                        <div class="bg-light d-flex align-self-stretch box p-4">
                            <p><span>Teléfono:</span>
                                <br>
                                <a href="telefono">+22002200</a></p>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex">
                        <div class="bg-light d-flex align-self-stretch box p-4">
                            <p><span>Correo:</span>
                                <br>
                                <a href="correo">OKCasa_chile@gmail.com
                                </a></p>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex">
                        <div class="bg-light d-flex align-self-stretch box p-4">
                            <p><span>Web:</span> 
                                <br>
                                <a href="#">www.OkCasa.cl</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>


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
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>
        <script src="js/backtotop.js"></script>
    </body>
</html>
