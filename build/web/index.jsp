<%-- 
    Document   : index
    Created on : 25-04-2020, 20:17:44
    Author     : chida
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OK Casa</title>

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
                                <div class="icon d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
                                <div class="text d-flex align-items-center">
                                    <span>OKCasa_chile@gmail.com</span>
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
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container d-flex align-items-center">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>
                <form action="#" class="searchform order-lg-last">
                    <div class="form-group d-flex">
                        <input type="text" class="form-control pl-3" placeholder="Buscar">
                        <button type="submit" placeholder="" class="form-control search"><span class="ion-ios-search"></span></button>
                    </div>
                </form>
                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active"><a href="index.jsp" class="nav-link pl-0">Home</a></li>
                        <li class="nav-item"><a href="nosotros.jsp" class="nav-link">Sobre Nosotros</a></li>
                        <li class="nav-item"><a href="servicios.jsp" class="nav-link">Servicios</a></li>
                        <li class="nav-item"><a href="contacto.jsp" class="nav-link">Contacto</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->

        <section class="home-slider owl-carousel">
            <div class="slider-item" style="background-image:url(images/bg_1.jpg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
                        <div class="col-md-6 text ftco-animate pl-md-5">
                            <h1 class="mb-4">Servicio de Inspección<span> <h3 style="font-weight: bold;">Haz valer tu garantía</h3></span></h1>
                            <h2 class="subheading" style="font-weight: bold;">Resguardando la seguridad de tu familia y el valor de la inversión de tu nuevo hogar.</h2>
                            <p><a href="nosotros.jsp" class="btn btn-secondary px-4 py-3 mt-3">Ver más</a></p>
                        </div>
                    </div>
                </div>
            </div>


            <div class="slider-item" style="background-image:url(images/BancoEstado1.jpg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
                        <div class="col-md-6 text ftco-animate pl-md-5">
                            <h1 class="mb-4">Convenio<span> <h2 style="font-weight: bold;">Con uno de los Bancos más Reconocidos del País</h3> </span></h1>
                            <h2 class="subheading"style="font-weight: bold;">Banco Estado y OKCasa se han  unido para ofrecer los mejores descuentos en Servicios de Inspección a sus Clientes Hipotecarios.</h2>
                            <p><a href="servicios.jsp" class="btn btn-secondary px-4 py-3 mt-3">Ver más</a></p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="slider-item" style="background-image:url(images/bg_2.jpg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
                        <div class="col-md-6 text ftco-animate pl-md-5">
                            <h1 class="mb-4">Verificamos<span><h2 style="font-weight: bold;">la calidad de tu hogar</h2></span></h1>
                            <h2 class="subheading"style="font-weight: bold;">Reconocidos en el mercado por nuestro servicio, con años de experiencia en el rubro.</h2>
                            <p><a href="contacto.jsp" class="btn btn-secondary px-4 py-3 mt-3">Ver más</a></p>
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
                                <span class="subheading">Sé parte de nuestro negocio</span>
                                <h3>Solicita una Inspección</h3>
                            </div>
                            <form action="#" class="request-form">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Nombre">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Apellidos">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Correo">
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Teléfono">
                                </div>
                                <div class="form-group">
                                    <textarea name="" id="" cols="30" rows="4" class="form-control" placeholder="Mensaje"></textarea>
                                </div>
                                <div class="form-group">
                                    <input type="submit" value="Agendar" class="btn btn-primary py-3 px-4">
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-8 wrap-about py-5 ftco-animate">
                        <div class="heading-section mb-5">
                            <h2 class="mb-4">Somos un Servicio Ampliamente Recomendado</h2>
                        </div>
                        <div class="">
                            <p class="mb-5">LLevamos años entregando un servicio de calidad a todos nuestros clientes, lo que nos ha posicionado en la cima del mercado,
                                siendo reconocidos como la empresa de inspección más confiable por nuestros usuarios.

                            </p>
                            <p><a href="#" class="btn btn-secondary px-5 py-3">Leer más</a></p>
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
                                <p style="text-align: justify;">Nos encargamos de velar por una construcción agradable estéticamente, segura y cómoda para ti y tu familia.</p>
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

                                <p  style="text-align: justify;">Nos preocupamos de Inspeccionar servicios de Luz, Gas y de Instalaciones Sanitarias, para garantizar un funcionamiento seguro.</p>
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
                                <p  style="text-align: justify;">Nos Comprometemos a realizar un análisis completo termográfico de la propiedad, para visualizar pérdidas térmicas y fugas de aire.</p>
                            </div>
                        </div>      
                    </div>
                    <div class="col-md-3 d-flex services align-self-stretch p-4 ftco-animate">
                        <div class="media block-6 d-block text-center">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="flaticon-home"></span>
                            </div>
                            <div class="media-body p-2 mt-3">
                                <h3 class="heading">Mediciones Exactas</h3>
                                <p  style="text-align: justify;">Nuestro equipo de expertos realiza las mediciones de metros cuadrados utilizando el equipo y los instrumentos adecuados.</p>
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
                        <p> Contamos con todas las herramientas para hacer cumplir tu sueño.</p>
                        <p class="mb-0"><a href="nosotros.jsp" class="btn btn-primary px-4 py-3">Conoce más sobre Nosotros</a></p>
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


    </div>
</section>-->
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
                    <h2 class="mb-4">Experiencia en entrega de servicios de calidad</h2>
                </div>
                <div class="services-flow">
                    <div class="services-2 p-4 d-flex ftco-animate">
                        <div class="icon">
                            <span class="flaticon-engineer"></span>
                        </div>
                        <div class="text">
                            <h3>Expertos y Profesionales</h3>
                            <p>Encargados de velar por la entrega de tu hogar</p>
                        </div>
                    </div>
                    <div class="services-2 p-4 d-flex ftco-animate">
                        <div class="icon">
                            <span class="flaticon-engineer-1"></span>
                        </div>
                        <div class="text">
                            <h3>Trabajo de alta embergadura </h3>
                            <p>Sabemos trabajar con todo tipo de hogares</p>
                        </div>
                    </div>
                    <div class="services-2 p-4 d-flex ftco-animate">
                        <div class="icon">
                            <span class="flaticon-engineer-2"></span>
                        </div>
                        <div class="text">
                            <h3>Soporte de ayuda</h3>
                            <p>Contamos con nuestras redes y canales listos para atenderte</p>
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
                                <p> Uno de los mejores servicios, te sientes seguro al recibir tu casa y te mantienen informado del proceso.</p>
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
                                <p> Por primera vez, estaba seguro de que al recibir mi casa no tendría ningún inconveniente.</p>
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
                                <p>Recomiendo el servicio, es rápido y tiene un costo accesible según el mercado.</p>
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
                                <p>Una amiga me recomendó el servicio, debido a la seguridad y confianza que entrega la empresa.</p>
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
                                <p>Me agradó mucho el servicio, sobre todo por la transparencia y la posibilidad de ver el estado de la inspección por la página.</p>
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
                    Copyright OKCasa &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados 
                </p>
            </div>
        </div>
    </div>
</footer>



<!-- Iconi Carga -->
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


</body>
</html>
