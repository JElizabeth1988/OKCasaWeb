<%-- 
    Document   : Agendar
    Created on : 20-06-2020, 14:57:32
    Author     : chida
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
    <head>
        <title>OKCASA</title>
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900" rel="stylesheet">

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

        <script src="jquery/jquery.min.js"></script>
        <!---- jquery link local dont forget to place this in first than other script or link or may not work ---->

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!---- boostrap.min link local ----->

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
            <h3 class="text-center">Agenda tu Inspección</h3>
          
            <hr>

            <div class="col-md">
                <div class="row justify-content-center">

                    <!-- REGISTRO ------------------------------------------------------------------------------------------------->


                    <form action="servletAgregarSol" method="POST" style="width: 100%;">

                        <div class="container-fluid col-md-8">

                            <div class="row justify-content-center">
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


                                                    <c:forEach var="agenda" items="${listaws}">
                                                        <tr>
                                                            <td>${agenda.getDia()}</td>
                                                            <td>${agenda.getHora()}</td>                                         
                                                            <td>

                                                                <label>
                                                                    <input style="margin-left: 20px;"  type="radio" checked class="option-input radio" name="rb_agendar" value="${agenda.getIdAgenda()}" >
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
                                                <option value="2">Conchalí</option>
                                                <option value="3">Huechuraba</option>
                                                <option value="4">Independencia</option>
                                                <option value="5">Quilicura</option>
                                                <option value="6">Recoleta</option>
                                                <option value="7">Renca</option>
                                                <option value="8">Las Condes</option>
                                                <option value="9">Lo Barnechea</option>
                                                <option value="10">Providencia</option>
                                                <option value="11">Vitacura</option>
                                                <option value="12">La Reina</option>
                                                <option value="13">Macul</option>
                                                <option value="14">Ñuñoa</option>
                                                <option value="15">Peñalolen</option>
                                                <option value="16">La Florida</option>
                                                <option value="17">La Granja</option>
                                                <option value="18">El Bosque</option>
                                                <option value="19">La Cisterna</option>
                                                <option value="20">La Pintana</option>
                                                <option value="21">San Ramón</option>
                                                <option value="22">Lo Espejo</option>
                                                <option value="23">Pedro Aguirre Cerda</option>                                           
                                                <option value="24">San Joaquín</option>                                           
                                                <option value="25">San Miguel</option>
                                                <option value="26">Cerrilos</option>
                                                <option value="27">Estación Centrak</option>
                                                <option value="28">Maipú</option>
                                                <option value="29">Cerro Navia</option>
                                                <option value="30">Lo prado</option>
                                                <option value="31">Pudahuel</option>
                                                <option value="32">Quinta Normal</option>

                                            </select>                    
                                        </div>
                                    </div>

                                    <div class="col-md-3"></div>



                                    <div class="col-md-4" id="textbox" style="padding-left: 30px;">
                                        <div class="form-group"> <!-- Constructora -->
                                            <label style="color: #bd2130">*</label>
                                            <label for="direccion" class="control-label">Nombre Constructora</label>
                                            <input type="text" name="txtConstructora" id="direccion" class="form-control input-lg"
                                                   placeholder="Ingrese Nombre" required minlength="4" maxlength="500" >
                                        </div> 
                                    </div>
                                    <div class="col-md-4" id="textbox">
                                        <div class="form-group"> <!-- Servicio -->
                                            <label style="color: #bd2130">*</label>
                                            <label for="servicio" id="cboServicio" class="control-label">Selecciona el Servicio</label>
                                            <select class="form-control" name="cboServicio" onchange="ddlselect();">                    
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
                                                <table class="table" style="font-size: 14px;">
                                                    <tr>
                                                        <td>Descuento: $0</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Subtotal: $0</td>     
                                                    </tr>
                                                    <tr>
                                                        <td>Total: $79.590</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="font-size: 12px;">No se encontraron descuentos asociados a este Rut.</td>
                                                    </tr>

                                                </table>

                                            </c:if> 

                                            <!--Hipotecario -->
                                            <c:if test="${tipo_cliente==1}">
                                                <table class="table" style="font-size: 14px;">
                                                    <tr>
                                                        <td>Descuento: 20%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Subtotal: $15.900</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Total: $63.600</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="font-size: 12px;">Descuento Cliente Hipotecario de Banco Estado.</td>
                                                    </tr>
                                                </table>

                                            </c:if> 



                                        </div>

                                        <!-- PAGO ------------------------------------------------------->
                                        <div class="col-md-10">
                                            <br>
                                            <br>
                                            <div class="card text-center" style="color: #000;">
                                                <div class="card-header" style="background-color: white;">
                                                    <img src="images/webpago.png" alt="logo">
                                                </div>
                                                <div class="card-body justify-content-center">
                                                    <!-- No Hipotecario -->
                                                    <c:if test="${tipo_cliente==0}">
                                                        <ul class="list-group list-group-flush text-center">
                                                            <li style="font-size: 17px; color: #007bff;list-style: none;" class="list-group">Total a Pagar: $79.590</li>  
                                                        </ul>
                                                    </c:if> 

                                                    <!--Hipotecario -->
                                                    <c:if test="${tipo_cliente==1}">
                                                        <ul class="list-group list-group-flush text-center">
                                                            <li style="font-size: 17px; color: #007bff;list-style: none;">Total a Pagar: $63.600</li>

                                                        </ul>
                                                    </c:if> 
                                                    <br>
                                                    <p> Seleccione Tipo de Pago </p>
                                                    <div class="row">

                                                        <div class="col-md-3">

                                                        </div>
                                                        <div class="col-md-3 text-center">
                                                            <input type="radio" name="rbTipoPago" value="Crédito" checked>
                                                            <img src="images/card-a.png" width="55%">
                                                            <a>Crédito</a>

                                                        </div>
                                                        <div class="col-md-3">
                                                            <input type="radio" name="rbTipoPago" value="Débito">
                                                            <img src="images/card-b.png" width="53%">
                                                            <a>Débito</a>
                                                        </div>
                                                        <div class="col-md-3">

                                                        </div>

                                                    </div>


                                                    <!-----WS CLIENTE HIPOTECARIO ------------------>
                                                    <!-- No cliente hipotecario -->
                                                    <c:if test="${tipo_cliente==0}">
                                                        <input value="79500" name="txtTotal" hidden>
                                                        <input value="0" name="txtDescuento" hidden>

                                                    </c:if>     
                                                    <!-- Cliente hipotecario -->
                                                    <c:if test="${tipo_cliente==1}">
                                                        <input value="63600" name="txtTotal" hidden>
                                                        <input value="0.2" name="txtDescuento" hidden> 
                                                    </c:if>
                                                    <div class="row justify-content-center"> 

                                                        <div class="col-md-6" id="textbox">

                                                            <!-- RUT CLIENTE -->
                                                            <input value="${rut}" name="txtRut" hidden>

                                                            <div class="form-group"> <!-- Pago -->
                                                                <label for="pago" class="control-label">Ingrese Monto</label>
                                                                <input type="text" name="txtPago" id="direccion" class="form-control input-lg"
                                                                       placeholder="$" required minlength="1">
                                                            </div> 
                                                            <div class="form-group"> <!-- Clave wsPago -->
                                                                <label for="pago" class="control-label">Ingrese clave secreta</label>
                                                                <input type="password" name="txtClave" id="direccion" class="form-control input-lg"
                                                                       placeholder="****" required minlength="1" style="width: 60%;margin-left: 50px;">
                                                            </div> 
                                                        </div>

                                                    </div>  
                                                    <input type="submit" class="btn btn btn-secondary" name="btnPago"  value="Procesar Pago">
                                                    <br>
                                                    <br>
                                                </div>
                                                <div class="card-footer text-muted">
                                                    Transacción Respaldada
                                                </div>



                                            </div>
                                            <br>

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
