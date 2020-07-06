z<%-- 
    Document   : Registrar
    Created on : 02-05-2020, 18:34:14
    Author     : chida
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="es">
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

    <body style="background-color: #f2f2f2;">

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
                        <h1 class="mb-2 bread">Ingreso</h1>
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i
                                        class="ion-ios-arrow-forward"></i></a></span> <span>Registro <i class="ion-ios-arrow-forward"></i></span>
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <br>


        <div class="container">
            <h2 class="text-center" id="title">Regístrate para Agendar tu Inspección</h2>
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

                    <div class="wrap-contact100" id="wrapp">

                        <form action="servletAgregar" method="POST" style="margin-right: 35px">
                            <br>
                            <p class="text-uppercase pull-center" style="font-weight: bold;margin-left: 30px;"> <span
                                    class="icon-user-1" style="font-size: 35px;"></span>  Ingresa tus datos</p>
                            <hr id="line">

                            <%-- ROW-----------------------------------------------------------------------------%>
                            <div class="row justify-content-center">

                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!-- RUT -->
                                        <label style="color: #bd2130">*</label>
                                        <label for="rut_cliente" class="control-label">RUT</label>
                                        <input type="text" name="txtRut_cliente" required oninput="checkRut(this)" class="form-control input-lg" placeholder="Sin puntos ni guiones"
                                               title="Debe Ingresar su RUT" required minlength="8" maxlength="11" required>

                                    </div>   
                                </div>


                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!-- Primer Nombre -->
                                        <label style="color: #bd2130">*</label>
                                        <label for="primer_nombre" class="control-label" style="black">Primer Nombre</label>
                                        <input type="text" name="txtPrimer_nombre" class="form-control input-lg" placeholder="Ej: Juan"
                                               title="Debe Ingresar su Nombre"  required minlength="3" maxlength="20" >
                                    </div>  
                                </div>

                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!-- Segundo Nombre -->

                                        <label for="segundo_nombre" class="control-label">Segundo Nombre</label>
                                        <input type="text" name="txtSegundo_nombre"  class="form-control input-lg" placeholder="Ej: Pedro">
                                    </div>    
                                </div>

                            </div>
                            <%-- ROW-----------------------------------------------------------------------------%>
                            <div class="row justify-content-center" >

                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!-- Apellido Paterno -->
                                        <label style="color: #bd2130">*</label>
                                        <label for="ap_paterno" class="control-label">Apellido Paterno</label>
                                        <input type="text" name="txtAp_paterno"   class="form-control input-lg" placeholder="Apellido Paterno" required minlength="3" maxlength="20">
                                    </div>    
                                </div>


                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!-- Apellido Materno -->
                                        <label style="color: #bd2130">*</label>
                                        <label for="ap_materno" class="control-label">Apellido Materno</label>
                                        <input type="text" name="txtAp_materno"  class="form-control input-lg" placeholder="Apellido Materno" required minlength="3" maxlength="20">

                                    </div>  
                                </div>

                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!-- Telefono -->
                                        <label style="color: #bd2130">*</label>
                                        <label for="telefono" class="control-label">Telefono</label>
                                        <input type="tel" name="txtTelefono" value="0" class="form-control input-lg"
                                               placeholder="Ej: 912345678" id="miCampo2" minlength="9"  maxlength="10" pattern="[7-8-9]{1}[0-9]{8}">

                                    </div>   
                                </div>

                            </div>
                            <%-- ROW-----------------------------------------------------------------------------%>
                            <div class="row justify-content-center" >

                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!-- Direccion -->
                                        <label style="color: #bd2130">*</label>
                                        <label for="direccion" class="control-label">Dirección</label>
                                        <input type="text" name="txtDireccion" id="direccion" class="form-control input-lg"
                                               placeholder="Dirección y N°" required minlength="4" maxlength="50" >
                                    </div>      
                                </div>


                                <div class="col-md-3" id="textbox">
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
                                            <option value="27">Estación Central</option>
                                            <option value="28">Maipú</option>
                                            <option value="29">Cerro Navia</option>
                                            <option value="30">Lo prado</option>
                                            <option value="31">Pudahuel</option>
                                            <option value="32">Quinta Normal</option>

                                        </select>                    
                                    </div>
                                </div>

                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!-- Email -->
                                        <label style="color: #bd2130">*</label>
                                        <label for="email" class="control-label">Email</label>
                                        <input type="email" name="txtEmail"  class="form-control input-lg"
                                               placeholder="ejemplo@okcasa.cl" required="" minlength="4" maxlength="50">
                                    </div>   
                                </div>

                            </div>

                            <%-- ROW-----------------------------------------------------------------------------%>
                            <div class="row justify-content-center">

                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!-- Usuario -->
                                        <label style="color: #bd2130">*</label>
                                        <label for="usuario" class="control-label">Usuario</label>
                                        <input type="text" name="txtUsuario" id="usuario" class="form-control input-lg" placeholder="Usuario"
                                               title="Debe Ingresar Usuario" required minlength="3" maxlength="20">
                                    </div>   
                                </div>

                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!-- Contraseña 1 -->
                                        <label style="color: #bd2130">*</label>
                                        <label for="contrasenia" class="control-label">Contraseña</label>
                                        <input type="password" name="txtContrasenia" id="pass1" class="form-control input-lg"
                                               placeholder="Contraseña" title="Debe Ingresar su Contraseña" required minlength="7" maxlength="20">
                                    </div>  

                                </div>
                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!-- Contraseña 2 -->
                                        <label style="color: #bd2130">*</label>
                                        <label for="contrasenia2" class="control-label">Confirmar Contraseña</label>
                                        <input type="password" name="txtContrasenia2" id="pass2" class="form-control input-lg"
                                               placeholder="Contraseña" title="Ingrese nuevamente la contraseña" required minlength="7" maxlength="20">
                                        <!-- Error Text --> <div id="error2"></div>
                                    </div> 

                                </div>


                            </div>
                            <%-- ROW-----------------------------------------------------------------------------%>


                            <div class="row justify-content-center">
                                <div class="col-md">   

                                    <div class="form-check" style="text-align: center;">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" required min="1" checked="true">
                                            Acepto los Términos y Condiciones de OkCasa.
                                        </label>


                                        <div class="justify-content-center">
                                            <br>
                                            <input type="submit" class="btn btn-lg btn-primary" style="margin-right: 40px" value="Registrar">
                                        </div>
                                    </div>


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
                            <script src="js/validaciones.js"></script>

                            <!-- Métodos adicionales, validar solo números-->
                            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/additional-methods.js"></script>
                            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
                            <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>    
                            <script type="text/javascript" src="https://rawcdn.githack.com/franz1628/validacionKeyCampo/bce0e442ee71a4cf8e5954c27b44bc88ff0a8eeb/validCampoFranz.js"></script>
                            </body>
                            </html>
                    