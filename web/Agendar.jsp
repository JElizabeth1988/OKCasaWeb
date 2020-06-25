<%-- 
    Document   : Agendar
    Created on : 20-06-2020, 14:57:32
    Author     : chida
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
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
                        <h1 class="mb-2 bread">Inspección</h1>
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i
                                        class="ion-ios-arrow-forward"></i></a></span> <span>Agendar<i class="ion-ios-arrow-forward"></i></span>
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <br>
        <div class="container">
            <h2 class="text-center">Agenda tu Inspección</h2>
            <p class="text-center">
                <small id="passwordHelpInline" class="text-muted"></small>
            </p>
            <hr>

            <div class="col-md">
                <div class="row justify-content-center">

                    <!-- REGISTRO ------------------------------------------------------------------------------------------------->


                    <form action="servletAgregarSol" method="POST" style="width: 100%;">

                        <div class="container-fluid col-md-8">
                            <div class="row justify-content-center">

                                <p style="font-weight: bold; font-size: 18px">
                                    PASO 1. Selecciona la Fecha
                                </p>

                                <hr id="line" style="width: 60%;">

                                <div class="col-lg-12">


                                    <div class="card-body">
                                        <div class="outer">

                                            <table class="table table-hover bg-light">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">Fecha</th>
                                                        <th scope="col">Hora</th>
                                                        <th scope="col">Seleccionar</th>
                                                    </tr>
                                                </thead>
                                                <tbody>


                                                    <c:forEach var="agenda" items="${lista}">
                                                        <tr>
                                                            <td>${agenda.getDia()}</td>
                                                            <td>${agenda.getHora()}</td>                                         
                                                            <td>
                                                                <label>
                                                                    <input style="margin-left: 20px;" type="radio" checked="True" class="option-input radio" name="rb_agendar" value="${agenda.getIdAgenda()}">
                                                                    <link href="css/style.css" rel="stylesheet" type="text/css"/>
                                                                </label>
                                                            </td>

                                                        </tr>
                                                    </c:forEach>

                                                </tbody>
                                            </table>
                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <br>
                        <br>
                        <br>

                        <div class="container-fluid col-md-10">
                            <div class="row justify-content-center">

                                <%-- INGRESAR DATOS -----------------------------------------------------------------%>
                                <p style="font-weight: bold; font-size: 18px">
                                    PASO 2. Ingresa los datos
                                </p>

                                <hr id="line" style="width: 48%;">


                                <div class="row justify-content-center">
                                    <div class="col-md-4" id="textbox">
                                        <div class="form-group"> <!-- Direccion -->
                                            <label style="color: #bd2130">*</label>
                                            <label for="direccion" class="control-label">Dirección Vivienda</label>
                                            <input type="text" name="txtDireccion" id="direccion" class="form-control input-lg"
                                                   placeholder="Dirección y N°"  required minlength="4" maxlength="500">
                                        </div> 
                                    </div>


                                    <div class="col-md-2" id="textbox">
                                        <div class="form-group"> <!--Comuna -->
                                            <label style="color: #bd2130">*</label>
                                            <label for="id_comuna" class="control-label">Comuna</label>
                                            <select class="form-control" name="cboComuna">
                                                <option value="1">Santiago</option>
                                                <option value="2">Providencia</option>
                                                <option value="3">Ñuñoa</option>
                                                <option value="4">La Florida</option>
                                                <option value="5">Puente Alto</option>
                                                <option value="6">Maipú</option>
                                                <option value="7">San Joaquín</option>
                                            </select>                    
                                        </div>
                                    </div>

                                    <div class="col-md-3"></div>



                                    <div class="col-md-4" id="textbox" style="padding-left: 30px;">
                                        <div class="form-group"> <!-- Direccion -->
                                            <label style="color: #bd2130">*</label>
                                            <label for="direccion" class="control-label">Nombre Constructora</label>
                                            <input type="text" name="txtConstructora" id="direccion" class="form-control input-lg"
                                                   placeholder="Ingrese Nombre" required minlength="4" maxlength="500" >
                                        </div> 
                                    </div>
                                    <div class="col-md-4" id="textbox">
                                        <div class="form-group"> <!-- Servicio -->
                                            <label style="color: #bd2130">*</label>
                                            <label for="servicio" class="control-label">Selecciona el Servicio</label>
                                            <select class="form-control" name="cboServicio">                    
                                                <option value="1">Verificación Instalaciones y terminaciones</option>
                                                <option value="2">Medición de metros cuadrados de la vivienda</option>
                                                <option value="3">Inspección de luz, instalaciones sanitarias y gas</option>
                                                <option value="4">Termografías</option>

                                            </select>                    
                                        </div> 


                                        <br>

                                        <br>
                                    </div>
                                    <div class="col-md-1" id="textbox">

                                    </div>

                                    <div class="col-md-3" id="textbox"></div>

                                </div>
                                <br>

                                <div class="container-fluid col-md-10">
                                    <div class="row justify-content-center">



                                        <p style="font-weight: bold; font-size: 18px">
                                            PASO 3. Realizar Pago
                                        </p>

                                        <hr id="line" style="width: 61%;">

                                        <div class="card" style="width: 18rem;">
                                            <div class="card-header">
                                                Detalle Pago
                                            </div>

                                            <!-- No Hipotecario -->
                                            <c:if test="${tipo_cliente==0}">
                                                <ul class="list-group list-group-flush text-center">
                                                    <li class="list-group">Descuento: $0</li>
                                                    <li class="list-group">Subtotal: $0</li>
                                                    <li class="list-group">Total: $79.590</li>
                                                    Cliente No Hipotecario de Banco Estado
                                                </ul>
                                            </c:if> 

                                            <!--Hipotecario -->
                                            <c:if test="${tipo_cliente==1}">
                                                <ul class="list-group list-group-flush text-center">
                                                    <li class="list-group">Descuento: 20%</li>
                                                    <li class="list-group">Subtotal: $15.900</li>
                                                    <li class="list-group">Total: $63.600</li>
                                                    Cliente Hipotecario de Banco Estado
                                                </ul>
                                            </c:if> 



                                        </div>


                                        <div class="col-md-10">
                                            <br>
                                            <br>
                                            <div class="card text-center">
                                                <div class="card-header" style="background-color: white;">
                                                    <img src="images/webpago.png" alt="logo">
                                                </div>
                                                <div class="card-body justify-content-center">

                                                    <!-- No cliente hipotecario -->
                                                    <c:if test="${tipo_cliente==0}">
                                                        <input value="79500" name="txtTotal" hidden>
                                                        <label></label>
                                                    </c:if>     

                                                    <!-- Cliente hipotecario -->
                                                    <c:if test="${tipo_cliente==1}">
                                                        <input value="63600" name="txtTotal" hidden>
                                                        <label></label>
                                                    </c:if>


                                                    <div class="row justify-content-center"> 
                                                        <div class="col-md-6" id="textbox">
                                                            <!-- No Hipotecario -->
                                                            <c:if test="${tipo_cliente==0}">
                                                                <ul class="list-group list-group-flush text-center">
                                                                    <li class="list-group">Total a Pagar: $79.590</li>  
                                                                </ul>
                                                            </c:if> 

                                                            <!-- No Hipotecario -->
                                                            <c:if test="${tipo_cliente==1}">
                                                                <ul class="list-group list-group-flush text-center">
                                                                    <li class="list-group">Total a Pagar: $63.600</li>

                                                                </ul>
                                                            </c:if> 

                                                            <div class="form-group"> <!-- Pago -->
                                                                <label for="pago" class="control-label">Ingrese Monto</label>
                                                                <input type="text" name="txtPago" id="direccion" class="form-control input-lg"
                                                                       placeholder="$" required minlength="1">
                                                            </div> 
                                                        </div>

                                                    </div>  
                                                    <input type="submit" class="btn btn btn-secondary" name="btnPago" style="margin-left: 30px" value="Procesar Pago">
                                                    <br>
                                                    <br>
                                                </div>
                                                <div class="card-footer text-muted">
                                                    Transacción Respaldada
                                                </div>



                                            </div>
                                            <br>

                                        </div>



                                        <div class="col-md-10">
                                            <c:if test="${msj!=null}">
                                                <div class="alert alert-success">${msj}</div>   
                                            </c:if>
                                            <c:if test="${err!=null}">
                                                <div class="alert alert-danger">${err}</div>  
                                            </c:if>   

                                        </div>

                                        <div class="col-md-10"> 
                                            <!-- ERROR WS PAGO   -->    

                                            <c:if test="${msje!=null}">
                                                <div class="alert alert-success">${msje}</div>   

                                            </c:if>
                                            <c:if test="${erro!=null}">
                                                <div class="alert alert-danger">${erro}</div>  
                                            </c:if>  



                                        </div>


                                    </div>

                                </div>

                            </div>
                        </div>





                </div>
                <%-- ROW-----------------------------------------------------------------------------%>

                <br>
                <br>

                <br>
            </div>


        </div>
        <br>
        <br>
        <br>

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
