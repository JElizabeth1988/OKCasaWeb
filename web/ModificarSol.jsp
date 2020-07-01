<%-- 
    Document   : ModificarSol
    Created on : 30-06-2020, 4:19:45
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
        <link rel="stylesheet" href="css/fontello-embedded.css">
        <link rel="stylesheet" href="css/style.css">

        <link rel="stylesheet" href="css/style.css">
        <script src="jquery/jquery.min.js"></script>
        <!---- jquery link local dont forget to place this in first than other script or link or may not work ---->

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!---- boostrap.min link local ----->

        <link rel="stylesheet" href="css/style.css">
        <!---- boostrap.min link local ----->

        <script src="js/calculos.js"></script>
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
                                        class="ion-ios-arrow-forward"></i></a></span> <span>Modificar<i class="ion-ios-arrow-forward"></i></span>
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <br>
        <div class="container">
            <h2 class="text-center">Modificar</h2>
            <p class="text-center">
                <small id="passwordHelpInline" class="text-muted"></small>
            </p>
            <hr>

            <div class="col-md">
                <div class="row justify-content-center">

                    <!-- REGISTRO ------------------------------------------------------------------------------------------------->


                    <form action="servletActualizarSol" method="POST" style="width: 100%;">

                        <div class="container-fluid col-md-8">
                            <div class="row justify-content-center">

                                <p style="font-weight: bold; font-size: 18px">
                                    DATOS
                                </p>

                                <hr id="line" style="width: 80%;">

                                <div class="col-lg-12">

                                    <div class="row">
                                        <c:forEach var="sol" items="${listas}"> 
                                            <div class="col-md-3" id="textbox">
                                                <div class="form-group"> <!-- código -->

                                                    <label for="codigo" class="control-label">Código Solicitud</label>
                                                    <input type="text" name="txtId" value="${sol.getId_solicitud()}" class="form-control input-lg"
                                                           placeholder="Código"  style="color: #9e9e9e;" >
                                                </div>
                                            </div>

                                            <div class="col-md-3" id="textbox">
                                                <div class="form-group"> <!--Fecha -->

                                                    <label for="codigo" class="control-label">Fecha Solicitud</label>
                                                    <input  type="text" name="txtFecha"  class="form-control input-lg"
                                                            placeholder="Código" style="color: #9e9e9e;"  value="${sol.getFecha_solicitud()}">
                                                </div>
                                            </div>



                                            <!-- RUT CLIENTE -->

                                            <div class="col-md-3" id="textbox" style="padding-left: 30px;">
                                                <div class="form-group"> <!-- Cliente -->
                                                    <label for="pago" class="control-label">Rut cliente</label>
                                                    <input type="text" name="txtRut"  class="form-control input-lg"
                                                           placeholder="Ingrese Nombre" required minlength="4" maxlength="500" 
                                                           value="${sol.getRut_cliente()}" style="color: #9e9e9e;" >
                                                </div> 
                                            </div>
                                        </div>



                                        <div class="card-body">
                                            <div class="outer">
                                                <label for="codigo" class="control-label">Fechas Disponibles</label>
                                                <table class="table table-hover bg-light">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Fecha</th>
                                                            <th scope="col">Hora</th>
                                                            <th scope="col">Código</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>


                                                        <c:forEach var="agenda" items="${listaws}">
                                                            <tr>
                                                                <td>${agenda.getDia()}</td>
                                                                <td>${agenda.getHora()}</td>                                         
                                                                <td>
                                                                    <label style="margin-left: 20px;" name="rb_agendar" value="${agenda.getIdAgenda()}">${agenda.getIdAgenda()}</label>
                                                                </td>

                                                            </tr>
                                                        </c:forEach>

                                                    </tbody>
                                                </table>
                                            </div>

                                        </div>

                                    </div>

                                </div>
                                <br>
                            </div>
                            <div class="row justify-content-center">


                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!-- agenda -->
                                        <br>
                                        <label for="codigo" class="control-label">Código Agenda</label>
                                        <input type="number" name="txtAgenda"  class="form-control input-lg"
                                               placeholder="Código" value="${sol.getId_agenda()}">
                                    </div> 
                                </div>
                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!-- agenda -->
                                        <br>
                                        <label for="codigo" class="control-label">Estado</label>
                                        <input type="text" name="txtEstado"  class="form-control input-lg"
                                               placeholder="Estado" value="${sol.getEstado()}">
                                    </div> 
                                </div>

                            </div>

                            <br>
                            <br>
                            <br>

                            <div class="container-fluid col-md-8">
                                <div class="row justify-content-center">

                                    <%-- INGRESAR DATOS -----------------------------------------------------------------%>


                                    <div class="row justify-content-center">
                                        <div class="col-md-4" id="textbox">
                                            <div class="form-group"> <!-- Direccion -->
                                                <label style="color: #bd2130">*</label>
                                                <label for="direccion" class="control-label">Dirección Vivienda</label>
                                                <input type="text" name="txtDireccion" class="form-control input-lg"
                                                       placeholder="Dirección y N°"  required minlength="4" maxlength="500"
                                                       value="${sol.getDireccion_vivienda()}">
                                            </div> 
                                        </div>


                                        <div class="col-md-2" id="textbox">
                                            <div class="form-group"> <!--Comuna -->
                                                <label style="color: #bd2130">*</label>
                                                <label for="id_comuna" class="control-label">Comuna</label>

                                                <select class="form-control" name="cboComuna">
                                                    <option value="${sol.getId_comuna()}">Santiago</option>
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
                                            <div class="form-group"> <!-- Constructora -->
                                                <label style="color: #bd2130">*</label>
                                                <label for="direccion" class="control-label">Nombre Constructora</label>
                                                <input type="text" name="txtConstructora" class="form-control input-lg"
                                                       placeholder="Ingrese Nombre" required minlength="4" maxlength="500" 
                                                       value="${sol.getConstructora()}">
                                            </div> 
                                        </div>
                                        <div class="col-md-4" id="textbox">
                                            <div class="form-group"> <!-- Servicio -->
                                                <label style="color: #bd2130">*</label>
                                                <label for="servicio" id="cboServicio" class="control-label">Selecciona el Servicio</label>
                                                <select class="form-control" name="cboServicio">                    
                                                    <option value="${sol.getId_servicio()}">Verificación Instalaciones y terminaciones</option>
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
                                    <!-- PAGO ------------------------------------------------------->
                                    <div class="col-md-10">
                                        <br>

                                        <div class="row">

                                            <div class="col-md-3" id="textbox" style="padding-left: 30px;">
                                                <div class="form-group"> <!-- Constructora -->
                                                    <label style="color: #bd2130">*</label>
                                                    <label for="pago" class="control-label">TipoPago</label>
                                                    <input type="text" name="txtTipoPago"  class="form-control input-lg"
                                                           placeholder="Ingrese Nombre" required minlength="4" maxlength="500" 
                                                           value="${sol.getTipo_pago()}" style="color: #9e9e9e;" >
                                                </div> 
                                            </div>
                                            <div class="col-md-3" id="textbox" style="padding-left: 30px;">
                                                <div class="form-group"> <!-- Constructora -->
                                                    <label style="color: #bd2130">*</label>
                                                    <label for="pago" class="control-label">Pago</label>
                                                    <input type="text" name="txtPago" class="form-control input-lg"
                                                           placeholder="Ingrese Nombre" required minlength="4" maxlength="500" 
                                                           value="${sol.getPago()}" style="color: #9e9e9e;" >
                                                </div> 
                                            </div>
                                            <div class="col-md-3" id="textbox" style="padding-left: 30px;">
                                                <div class="form-group"> <!-- Constructora -->
                                                    <label style="color: #bd2130">*</label>
                                                    <label for="pago" class="control-label">Descuento</label>
                                                    <input type="text" name="txtDescuento"  class="form-control input-lg"
                                                           placeholder="Ingrese Nombre" required minlength="4" maxlength="500" 
                                                           value="${sol.getDescuento()}" style="color: #9e9e9e;"  >
                                                </div> 
                                                <br>
                                                <br>
                                            </div>
                                            <br>
                                        </div>
                                        <div class="row justify-content-center">
                                            <br>
                                            <input type="submit" class="btn btn btn-secondary" name="btnPago"  value="Modificar">  
                                        </div>


                                        <!-- Cliente hipotecario -->

                                    </c:forEach>
                                </div>  

                                <br>
                                <br>
                            </div>
                    </form>
                    <div class="row justify-content-center">
                         <c:if test="${msj!=null}">
                             <div class="alert alert-success">${msj}</div>   
                    </c:if>
                    <c:if test="${err!=null}">
                        <div class="alert alert-danger">${err}</div>  
                    </c:if>   

                </div>
                <br>
                <br>
            </div>


        </div>
        <br>

    </div>


    <div class="col-md-10"> 

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
