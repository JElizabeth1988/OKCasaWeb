<%-- 
    Document   : MisInspecciones
    Created on : 01-05-2020, 22:58:24
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
        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/fontello-embedded.css">
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
                        <h1 class="mb-2 bread">Mis Inspecciones</h1>
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Mis Inspecciones <i class="ion-ios-arrow-forward"></i></span></p>
                    </div>
                </div>
            </div>
        </section>

        <br>
        <br>
        <div>
            <form action="ListaInforme" method="POST">
                <input type="hidden" name="txtRut" id="txtId" value="${rut}">
                <input type="submit" class="btn btn btn-primary" style="margin-left: 1000px" value="Ver Mis Resultados">
            </form>  
        </div>


        <div class="container">
            <h3>Mis Inspecciones</h3>

            <div class="row justify-content-center">
                <div class="col-md-auto">
                    <div class="card-body">
                        <div class="out"> 
                            <form action="ListaUS" method="POST" style="margin-right: 35px">
                                <!-- RUT CLIENTE -->
                                <input type="hidden" value="${rut}" name="txtRut">
                                <input type="submit" class="btn btn btn-primary" style="margin-right: 40px" value="ACTUALIZAR">

                            </form> 
                            <table class="table table-responsive-sm text-center text-uppercase">
                                <thead>
                                    <tr>
                                        <th scope="col">CÓDIGO SOLICITUD</th>
                                        <th scope="col">FECHA SOLICITUD</th>
                                        <th scope="col">DIRECCION VIVIENDA</th>
                                        <th scope="col">NOMBRE CONSTRUCTORA</th>
                                        <th scope="col">SERVICIO ESCOGIDO</th>
                                        <th scope="col">MONTO PAGO</th>
                                        <th scope="col">DESCUENTO APLICADO</th>
                                        <th scope="col">FECHA INSPECCION</th>
                                        <th scope="col">RUT_CLIENTE</th>


                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="sol" items="${listac}">
                                        <tr>
                                            <td>${sol.getId_solicitud()}</td>
                                            <td>${sol.getFecha_solicitud()}</td>
                                            <td>${sol.getDireccion_vivienda()} ${sol.getNombre_comuna()}</td>
                                            <td>${sol.getConstructora()}</td>
                                            <td>${sol.getNombre_servicio()}</td>                                                                                                  
                                            <td>${sol.getPago()}</td>                                                      
                                            <td>${sol.getDescuento()}</td>
                                            <td>${sol.getDia()} ${sol.getHora()}</td>
                                            <td>${sol.getRut_cliente()}</td>      


                                        </tr>


                                    </c:forEach>
                                </tbody>
                            </table>



                        </div>
                    </div>        
                </div>


            </div>

            <br>
            <br>
            <br>

            <br>
            <br>
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

    </body>
</html>
