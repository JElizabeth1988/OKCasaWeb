<%-- 
    Document   : solicitarInspeccion
    Created on : 01-05-2020, 21:21:41
    Author     : chida
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon.png">
    </head>
    <body>
        <!-- Back to top button -->
        <a id="button"></a>

        <div class="bg-top navbar-light">
            <div class="container">
                <div class="row no-gutters d-flex align-items-center align-items-stretch">
                    <div class="col-md-4 d-flex align-items-center py-4">
                        <a class="navbar-brand" href="index.jsp"><img src="images/logo.jpg" alt="logo"></a>
                    </div>
                    <div class="col-lg-8 d-block">
                        <div class="row d-flex">
                            <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
                                <div class="icon d-flex justify-content-center align-items-center"><span
                                        class="icon-paper-plane"></span></div>
                                <div class="text d-flex align-items-center">
                                    <span>OKCasa_chile@gmail.com</span>
                                </div>
                            </div>
                            <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
                                <div class="icon d-flex justify-content-center align-items-center"><span
                                        class="icon-phone2"></span></div>
                                <div class="text d-flex align-items-center">
                                    <span>LLámanos: +22002200</span>
                                </div>
                            </div>
                            <div class="col-md topper d-flex align-items-center align-items-stretch">
                                <p class="mb-0 d-flex d-block">
                                    <a href="login.jsp" class="btn btn-primary d-flex align-items-center justify-content-center">
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
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-center justify-content-center">
                <div class="col-md-9 ftco-animate text-center">
                    <h1 class="mb-2 bread">Agendar</h1>
                    <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Agendar <i class="ion-ios-arrow-forward"></i></span></p>
                </div>
            </div>
        </div>
    </section>

    <br>
    <br>


    <div class="container">

        <div class="row justify-content-center">   
            <div class="container">
                <h2 class="text-center" id="titl">Solicitar Inspección</h2>
                <p class="text-center">
                    <small id="passwordHelpInline" class="text-muted"></small>
                </p>
                <hr>
                <div class="row justify-content-center">
                    <div class="col-md-5">
                        <form role="form" method="POST" action="login.html">
                            <fieldset>
                                <label style="color: black">
                                    Selecciona los servicios
                                </label>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input">
                                        Verificación Instalaciones y terminaciones.
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input">
                                        Medición de metros cuadrados de la vivienda.
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input">
                                        Inspección de luz, instalaciones sanitarias y gas.
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input">
                                        Termografías.
                                    </label>
                                </div>

                                <br>
                                <br>
                                <label style="color: black">
                                    Selecciona Día y Hora
                                </label>
                                <br>
                                <br>


                                <div class="row">
                                    <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                        <label class="btn btn-outline-primary">
                                            <
                                        </label>
                                        <select id="cars" name="cars" style="margin-right: 182px; margin-left: 180px ">
                                            <option value="volvo">Mayo</option>
                                            <option value="saab">Junio</option>
                                            <option value="fiat">Julio</option>
                                            <option value="audi">Agosto</option>
                                        </select>
                                        <label class="btn btn-outline-primary justify-content-center">
                                            >
                                        </label>
                                    </div>
                                    <div class="table-responsive small">
                                        <table class="table table-striped table-bordered">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Hora</th>
                                                    <th scope="col"> Lunes <br> 04-05</th>
                                                    <th scope="col"> Martes <br> 05-05</th>
                                                    <th scope="col"> Miércoles<br> 06-05</th>
                                                    <th scope="col"> Jueves <br> 07-05</th>
                                                    <th scope="col"> Viernes <br> 08-05</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>10:00 - 12:00</td>
                                                    <td style="background-color: #EF3159">Ocupado</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>

                                                <tr>
                                                    <td>13:00 - 15:00</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td style="background-color: #EF3159">Ocupado</td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>

                                                <tr>
                                                    <td>15:00 - 17:00</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>

                                                <tr>
                                                    <td>17:00 - 19:00</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>


                                            </tbody>
                                        </table>
                                    </div>


                                </div>
                                </div>
                                </div>

                                <br>



                                </div>


                            </fieldset>
                        </form>


                        <br>
                        <br>
                        <div class="row">
                            <div class="container mr-8" >  
                                <h4>Pagar</h4>
                                <div class="card " style="width: 18rem;" >


                                    <br>
                                    <br>
                                    <div class="card-body">
                                        <label style="font-size:12px;">Subtotal:</label>
                                        <input type="text" value="${totalPagar}" readonly="" class="form-control">

                                        <label style="font-size:12px;">Descuento Banco:</label>
                                        <input type="text" readonly="" class="form-control">

                                        <label style="font-size:12px;">Total a pagar:</label>
                                        <input type="text" value="${totalPagar}" readonly="" class="form-control">

                                    </div>

                                </div>
                                <input type="submit" class="btn btn btn-primary" value="Pagar">
                            </div>                        

                        </div>  



                    </div>






                    <br>






                </div>
            </div>
            <br>

        </div>


        <br>
        <div class="container">
            <div class="row justify-content-center">
                <p><a href="#" class="btn btn-lg btn-primary">Agendar</a></p>
            </div>  
        </div>  

        <br>
        <br>



        <!-- Footer -->
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
                                        <div><a href="#"><span class="icon-calendar"></span> Desde Feb. 07, 1978</a></div>
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



        <!-- Icono carga -->
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


</body>
</html>
