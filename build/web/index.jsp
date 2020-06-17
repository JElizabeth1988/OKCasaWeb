<%-- 
    Document   : index
    Created on : 25-04-2020, 20:17:44
    Author     : chida
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OKCasa</title>

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

        <link rel="stylesheet" href="css/fontello-embedded.css">
        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon.png">
    </head>

    <body>
        <!-- Back to top button -->
        <a id="button"></a>

        <%@include file="menu.jsp" %>   
        <!-- END nav -->
        <%--
        <c:if test="${tipo!=null}">
            <c:if test="${tipo==1}">
                <div style="background-color: #fdd49a; text-align: center; font-weight: bold;">Bienvenido Administrador ${username}</div>
            </c:if>
            <c:if test="${tipo==2}">
                <div style="background-color: #fdd49a; text-align: center; font-weight: bold;"> Bienvenido ${username}</div>
            </c:if>
        </c:if> --%>

        <section class="home-slider owl-carousel">
            <div class="slider-item" style="background-image:url(images/bg_1.jpg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row no-gutters slider-text align-items-center justify-content-end"
                         data-scrollax-parent="true">
                        <div class="col-md-6 text ftco-animate pl-md-5">
                            <h1 class="mb-4">Servicio de Inspección<span>
                                    <h3 style="font-weight: bold;">Haz valer tu garantía</h3>
                                </span></h1>
                            <h2 class="subheading" style="font-weight: bold;">Resguardando la seguridad de tu familia y el
                                valor de la inversión de tu nuevo hogar.</h2>
                            <p><a href="nosotros.jsp" class="btn btn-secondary px-4 py-3 mt-3">Ver más</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slider-item" style="background-image:url(images/BancoEstado1.jpg);"
                 data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row no-gutters slider-text align-items-center justify-content-end"
                         data-scrollax-parent="true">
                        <div class="col-md-6 text ftco-animate pl-md-5">
                            <h1 class="mb-4">Convenio<span>
                                    <h2 style="font-weight: bold;">Con uno de los Bancos más Reconocidos del País</h3>
                                </span></h1>
                            <h2 class="subheading" style="font-weight: bold;">Banco Estado y OKCasa se han unido para
                                ofrecer los mejores descuentos en Servicios de Inspección a sus Clientes Hipotecarios.</h2>
                            <p><a href="servicios.jsp" class="btn btn-secondary px-4 py-3 mt-3">Ver más</a></p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="slider-item" style="background-image:url(images/bg_2.jpg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row no-gutters slider-text align-items-center justify-content-end"
                         data-scrollax-parent="true">
                        <div class="col-md-6 text ftco-animate pl-md-5">
                            <h1 class="mb-4">Verificamos<span>
                                    <h2 style="font-weight: bold;">la calidad de tu hogar</h2>
                                </span></h1>
                            <h2 class="subheading" style="font-weight: bold;">Reconocidos en el mercado por nuestro
                                servicio, con años de experiencia en el rubro.</h2>
                            <p><a href="login.jsp" class="btn btn-secondary px-4 py-3 mt-3">Ver más</a></p>
                        </div>
                    </div>
                </div>
            </div>

        </section>


        <section class="ftco-section ftco-no-pt ftco-margin-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="request-quote">
                            <div class="bg-primary py-4">
                                <span class="subheading">Contrata nuestros servicios</span>
                                <h3>Solicita una Inspección</h3>
                            </div>
                            <form method="POST" class="request-form">
                                <div class="form-group">
                                    <label> Dirección </label>
                                    <input type="text" class="form-control" placeholder="Av. San Carlos 1340, Puente Alto" title="Debe ingresar Usuario" required minlength="5" disabled="true">
                                </div>
                                <div class="form-group">
                                    <label> Consultas </label>
                                    <input type="password" class="form-control" placeholder="+22002200" title="Debe ingresar Contraseña" required minlength="7" disabled="">
                                </div>
                                <c:if test="${tipo==null}">

                                    <div class="form-group">
                                        <p class="text-center">No tienes una cuenta? <a href="Registrar.jsp" id="signup">Regístrate aquí</a> </p>
                                    </div>
                                    <div class="form-group">
                                        <p class="text-center">Si ya posees cuenta <a href="login.jsp" id="signup">Ingresa aquí</a> </p>
                                    </div>

                                </c:if>

                            </form>
                        </div>
                    </div>
                    <div class="col-md-8 wrap-about py-5 ftco-animate">
                        <div class="heading-section mb-5">
                            <h2 class="mb-4">Somos un Servicio Ampliamente Recomendado</h2>
                        </div>
                        <div class="">
                            <p class="mb-5">LLevamos años entregando un servicio de calidad a todos nuestros clientes, lo
                                que nos ha posicionado en la cima del mercado,
                                siendo reconocidos como la empresa de inspección más confiable, preocupados de velar por la seguridad de tu familia.

                            </p>
                            <p><a href="nosotros.jsp" class="btn btn-secondary px-5 py-3">Leer más</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-services ftco-no-pt">
            <div class="container">
                <div class="row justify-content-center mb-5 pb-2">
                    <div class="col-md-8 text-center heading-section ftco-animate">
                        <span class="subheading">Servicios</span>
                        <h2 class="mb-4">Nuestros Servicios</h2>
                        <p>LLevamos años entregando un servicio íntegro para todos nuestros clientes.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
                        <div class="media block-6 d-block text-center">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="flaticon-hook"></span>
                            </div>
                            <div class="media-body p-2 mt-3">
                                <h3 class="heading">Verificar Instalaciones y Terminaciones</h3>
                                <p style="text-align: justify;">Nos encargamos de velar por una construcción agradable
                                    estéticamente, segura y cómoda para ti y tu familia.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
                        <div class="media block-6 d-block text-center">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="flaticon-skyline"></span>
                            </div>
                            <div class="media-body p-2 mt-3">
                                <h3 class="heading">Inspeccionar Servicios</h3>

                                <p style="text-align: justify;">Nos preocupamos de Inspeccionar servicios de Luz, Gas y de
                                    Instalaciones Sanitarias, para garantizar un funcionamiento seguro.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
                        <div class="media block-6 d-block text-center">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="flaticon-stairs"></span>
                            </div>
                            <div class="media-body p-2 mt-3">
                                <h3 class="heading">Termografías</h3>
                                <p style="text-align: justify;">Nos Comprometemos a realizar un análisis completo
                                    termográfico de la propiedad, para visualizar pérdidas térmicas y fugas de aire.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
                        <div class="media block-6 d-block text-center">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="flaticon-home"></span>
                            </div>
                            <div class="media-body p-2 mt-3">
                                <h3 class="heading">Mediciones exactas</h3>
                                <p style="text-align: justify;">Nuestro equipo de expertos realiza las mediciones de metros
                                    cuadrados utilizando el equipo y los instrumentos adecuados.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="ftco-intro" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-9 text-center">
                        <h2>Acepta tu Nuevo Hogar de Forma Segura</h2>
                        <p> Contamos con todas las herramientas para hacer cumplir tu sueño</p>
                        <p class="mb-0"><a href="servicios.jsp" class="btn btn-primary px-4 py-3">Conoce más sobre Nosotros</a></p>
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
                        <p>El equipo de expertos de OKCasa cuenta con una amplia experiencia, siendo un equipo capacitado e
                            instruido.</p>
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
                                    <!-- <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p> -->
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
                                    <!-- <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p> -->
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
                                    <!-- <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p> -->
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
                                    <!-- <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p> -->
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


    </section>
    <section class="ftco-counter img" id="section-counter" style="background-image: url(images/bg_3.jpg);"
             data-stellar-background-ratio="0.5">
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
                            <span>Profesionales <br>Expertos</span>
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

    <section class="ftco-section testimony-section">
        <div class="container">
            <div class="row ftco-animate">
                <div class="col-md-6 col-lg-6 col-xl-4">
                    <div class="heading-section ftco-animate">
                        <span class="subheading">Servicios</span>
                        <h2 class="mb-4">Experiencia en Entrega de Servicios de Calidad</h2>
                    </div>
                    <div class="services-flow">
                        <div class="services-2 p-4 d-flex ftco-animate">
                            <div class="icon">
                                <span class="flaticon-engineer"></span>
                            </div>
                            <div class="text">
                                <h3>Expertos y Profesionales</h3>
                                <p>Encargados de velar por la entrega de tu hogar.</p>
                            </div>
                        </div>
                        <div class="services-2 p-4 d-flex ftco-animate">
                            <div class="icon">
                                <span class="flaticon-engineer-1"></span>
                            </div>
                            <div class="text">
                                <h3>Trabajo de Alta embergadura </h3>
                                <p>Sabemos trabajar con todo tipo de hogares.</p>
                            </div>
                        </div>
                        <div class="services-2 p-4 d-flex ftco-animate">
                            <div class="icon">
                                <span class="flaticon-engineer-2"></span>
                            </div>
                            <div class="text">
                                <h3>Soporte de Ayuda</h3>
                                <p>Contamos con nuestras redes y canales listos para atenderte.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-1 d-xl-block d-none"></div>
                <div class="col-md-6 col-lg-6 col-xl-7">
                    <div class="heading-section ftco-animate mb-5">
                        <span class="subheading">Testimonios</span>
                        <h2 class="mb-4">Clientes Satisfechos</h2>
                        <p>Testimonios de nuestros clientes más frecuentes</p>
                    </div>
                    <div class="carousel-testimony owl-carousel">
                        <div class="item">
                            <div class="testimony-wrap">
                                <div class="text bg-light p-4">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                    <p> Uno de los mejores servicios, te sientes seguro al recibir tu casa y te
                                        mantienen informado del proceso.</p>
                                    <p class="name">David Mendoza</p>
                                    <span class="position">Oficinista</span>
                                </div>
                                <div class="user-img" style="background-image: url(images/person_1.jpg)">
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap">
                                <div class="text bg-light p-4">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                    <p> Por primera vez, estaba seguro de que al recibir mi casa no tendría ningún
                                        inconveniente.</p>
                                    <p class="name">William Lagos</p>
                                    <span class="position">CEO Empresa Telecomunicaciones</span>
                                </div>
                                <div class="user-img" style="background-image: url(images/person_2.jpg)">
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap">
                                <div class="text bg-light p-4">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                    <p>Recomiendo el servicio, es rápido y tiene un costo accesible según el mercado.
                                    </p>
                                    <p class="name">Jorge Sepulveda</p>
                                    <span class="position">Profesor</span>
                                </div>
                                <div class="user-img" style="background-image: url(images/person_3.jpg)">
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap">
                                <div class="text bg-light p-4">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                    <p>Una amiga me recomendó el servicio, debido a la seguridad y confianza que entrega
                                        la empresa.</p>
                                    <p class="name">Marcos Alarcón</p>
                                    <span class="position">Estudiante</span>
                                </div>
                                <div class="user-img" style="background-image: url(images/person_4.jpg)">
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap">
                                <div class="text bg-light p-4">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                    <p>Me agradó mucho el servicio, sobre todo por la transparencia y la posibilidad de
                                        ver el estado de la inspección por la página.</p>
                                    <p class="name">Julio Yamamoto</p>
                                    <span class="position">Manager</span>
                                </div>
                                <div class="user-img" style="background-image: url(images/person_5.jpg)">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <%@include file="footer.jsp" %>  

    <!-- loader -->
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
    <script src="js/backtotop.js"></script>

</body>
</html>
