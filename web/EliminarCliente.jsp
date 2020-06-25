<%-- 
    Document   : EliminarCliente
    Created on : 02-05-2020, 18:34:14
    Author     : chida
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<c:if test="${tipo!=null}">
    <c:if test="${tipo==1}">
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
                                <h1 class="mb-2 bread">Eliminar</h1>
                                <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i
                                                class="ion-ios-arrow-forward"></i></a></span> <span>Eliminar Datos<i class="ion-ios-arrow-forward"></i></span>
                                </p>
                            </div>
                        </div>
                    </div>
                </section>

                <br>


                <div class="container">
                    <h2 class="text-center" id="title">Eliminar Datos</h2>
                    <p class="text-center">
                        <small id="passwordHelpInline" class="text-muted"></small>
                    </p>
                    <hr>

                    <!-- INGRESO --------------------------------------------------------------------------------------------->
                    <div class="row justify-content-center">


                        <!-- REGISTRO ------------------------------------------------------------------------------------------------->
                        <div class="col-md-10">

                            <c:if test="${msj!=null}">
                                <div class="alert alert-success">${msj}</div>  
                            </c:if>
                            <c:if test="${err!=null}">
                                <div class="alert alert-danger">${err}</div>  
                            </c:if> 


                            <div class="col" style="background-color: red;" ></div>

                            <div class="wrap-contact100" id="wrapp">

                                <form action="servletEliminar" method="POST" style="margin-right: 35px">

                                    <p class="text-uppercase pull-center" style="font-weight: bold;margin-left: 30px;"> <span
                                            class="icon-cancel" style="font-size: 35px;"></span>Eliminar Cliente
                                        <a href="AgregarCliente.jsp"><span
                                                class="icon-plus" style="font-size:16px;margin-left: 420px;color:rgba(0, 0, 0, 0.5);background-color: #ffeeba;">Ir Agregar</span></a>
                                        <a href="Listado"><span
                                                class="icon-book-alt" style="font-size:16px;margin-left: 10px;color:rgba(0, 0, 0, 0.5);background-color: #ffeeba;">Ir Listar</span></a>
                                    </p>
                                    <hr id="line" style=" border-top: .1875rem solid #fcf8e3">
                                    <br>
                                    <br>
                                    <%-- ROW-----------------------------------------------------------------------------%>
                                    <div class="row justify-content-center">

                                        <div class="col-md-3" id="textbox">
                                            <div class="form-group"> <!-- RUT -->
                                                <label style="color: #bd2130">*</label>
                                                <label for="rut_cliente" class="control-label">RUT</label>
                                                <input type="text" name="txtRut" required oninput="checkRut(this)" class="form-control input-lg" placeholder="Sin puntos ni guiones"
                                                       title="Debe Ingresar su RUT" required minlength="9" maxlength="10">

                                            </div>   
                                        </div>
                                    </div>

                                    <%-- ROW-----------------------------------------------------------------------------%>


                                    <div class="row justify-content-center">
                                        <div class="col-md">   

                                            <div class="form-check" style="text-align: center;">



                                                <div class="justify-content-center">

                                                    <input type="submit" class="btn btn btn-primary" name="btnEliminar" style="margin-right: 40px" value="Eliminar Cliente">
                                                </div>
                                            </div>


                                            <br>
                                            <br>
                                            <br>
                                            <br>



                                            </form>

                                        </div>

                                    </div>

                                    <c:if test="${msje!=null}">
                                        <div class="alert alert-success">${msje}</div>   
                                    </c:if>
                                    <c:if test="${erro!=null}">
                                        <div class="alert alert-danger">${erro}</div>  
                                    </c:if> 

                                    <%-- ELIMINAR SOLICITUD----------------------------------------------%>

                                    <form action="servletEliminarSol" method="POST" style="margin-right: 35px">

                                        <p class="text-uppercase pull-center" style="font-weight: bold;margin-left: 30px;"> <span
                                                class="icon-cancel" style="font-size: 35px;"></span>Eliminar Solicitud
                                            <a href="AgregarCliente.jsp"><span
                                                    class="icon-plus" style="font-size:16px;margin-left: 420px;color:rgba(0, 0, 0, 0.5);background-color: #ffeeba;">Ir Agregar</span></a>
                                            <a href="ListadoSol"><span
                                                    class="icon-book-alt" style="font-size:16px;margin-left: 10px;color:rgba(0, 0, 0, 0.5);background-color: #ffeeba;">Ir Listar</span></a>
                                        </p>
                                        <hr id="line" style=" border-top: .1875rem solid #fcf8e3">
                                        <br>
                                        <br>
                                        <%-- ROW-----------------------------------------------------------------------------%>
                                        <div class="row justify-content-center">

                                            <div class="col-md-3" id="textbox">
                                                <div class="form-group"> <!-- CODIGO -->
                                                    <label style="color: #bd2130">*</label>
                                                    <label for="codigo" class="control-label">Código</label>
                                                    <input type="text" name="txtCodigo" class="form-control input-lg" placeholder="Nº"
                                                           title="Debe Ingresar Código" required minlength="1">

                                                </div>   
                                            </div>
                                        </div>

                                        <%-- ROW-----------------------------------------------------------------------------%>


                                        <div class="row justify-content-center"> 
                                            <div class="col-md">   

                                                <div class="form-check" style="text-align: center;">



                                                    <div class="justify-content-center">

                                                        <input type="submit" class="btn btn btn-primary" name="btnEliminar" style="margin-right: 40px" value="Eliminar Solicitud">
                                                    </div>
                                                </div>


                                                <br>
                                                <br>
                                                <br>



                                                </form>
                                            </div>
                                        </div>

                                        <br>
                                        <br>







                                        </div>
                                        </div>
                                        <br>
                                        </div>


                                        </div>
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
                                    </c:if>
                                </c:if>