<%-- 
    Document   : login
    Created on : 02-05-2020, 18:34:14
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
            <h2 class="text-center" id="title">Reg�strate para Agendar tu Inspecci�n</h2>
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

                            <form action="servletAgregar" method="POST" style="margin-right: 45px">
                            <p class="text-uppercase pull-center" style="font-weight: bold;margin-left: 30px;"> <span
                                    class="icon-user-1" style="font-size: 35px;"></span>  Ingresa tus datos</p>
                            <hr id="line">

                            <%-- ROW-----------------------------------------------------------------------------%>
                            <div class="row justify-content-center">

                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!-- RUT -->
                                        <label style="color: #bd2130">*</label>
                                        <label for="rut_cliente" class="control-label">RUT</label>
                                        <input type="text" name="txtRut_cliente"  class="form-control input-lg" placeholder="Ej: 11111111-1"
                                               title="Debe Ingresar su RUT" required minlength="9" maxlength="10">

                                    </div>   
                                </div>


                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!-- Primer Nombre -->
                                        <label style="color: #bd2130">*</label>
                                        <label for="primer_nombre" class="control-label" style="black">Primer Nombre</label>
                                        <input type="text" name="txtPrimer_nombre" class="form-control input-lg" placeholder="Ej: Juan"
                                               title="Debe Ingresar su Nombre" required minlength="3" maxlength="20">
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
                                        <input type="text" name="txtAp_paterno"  class="form-control input-lg" placeholder="Apellido Paterno" required minlength="3" maxlength="20">
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
                                        <input type="text" name="txtTelefono" class="form-control input-lg"
                                               placeholder="tel�fono" minlength="9" maxlength="10">
                                    </div>   
                                </div>

                            </div>
                            <%-- ROW-----------------------------------------------------------------------------%>
                            <div class="row justify-content-center" >

                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!-- Direccion -->
                                        <label style="color: #bd2130">*</label>
                                        <label for="direccion" class="control-label">Direcci�n</label>
                                        <input type="text" name="txtDireccion" id="direccion" class="form-control input-lg"
                                               placeholder="Direcci�n y N�" required minlength="4" maxlength="50" >
                                    </div>      
                                </div>


                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!--Comuna -->
                                        <label style="color: #bd2130">*</label>
                                        <label for="comuna" class="control-label">Comuna</label>
                                        <select class="form-control" name="cboComuna">                    
                                            <option value="1">Santiago</option>
                                            <option value="2">Providencia</option>
                                            <option value="3">�u�oa</option>
                                            <option value="4">La Florida</option>
                                            <option value="5">Puente Alto</option>
                                            <option value="6">Maip�</option>
                                            <option value="7">San Joaqu�n</option>
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
                                    <div class="form-group"> <!-- Contrase�a 1 -->
                                        <label style="color: #bd2130">*</label>
                                        <label for="contrasenia" class="control-label">Contrase�a</label>
                                        <input type="password" name="txtContrasenia" id="pass1" class="form-control input-lg"
                                               placeholder="Contrase�a" title="Debe Ingresar su Contrase�a" required minlength="7" maxlength="20">
                                    </div>  

                                </div>
                                <div class="col-md-3" id="textbox">
                                    <div class="form-group"> <!-- Contrase�a 2 -->
                                        <label style="color: #bd2130">*</label>
                                        <label for="contrasenia2" class="control-label">Confirmar Contrase�a</label>
                                        <input type="password" name="txtPassword2" id="pass2" class="form-control input-lg"
                                               placeholder="Contrase�a" title="Ingrese nuevamente la contrase�a" required minlength="7" maxlength="20">
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
                                            Al registrarte est�s aceptando nuestras pol�ticas y t�rminos.
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
                            <%--
                            <form id="formulario">

            <input type="text" name="txtNombre" placeholder="Ingrese nombre">
            <br>
            <input type="email" name="txtCorreo" placeholder="Ingrese correo">
            <br>
            <input type="password" name="txtContrasenia" id="contra" placeholder="Ingrese contrase�a">
            <br>
            <input type="password" name="txtContrasenia2"  placeholder="Ingrese contrase�a">    
            <!-- submit es bot�n y desencadena click a diferencia button-->
            <input type="submit" value="Enviar"> 


        </form>--%>



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

                            <!-- jquery -->

                            <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>

                            <!-- jquery validate -->
                            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>

                            <!-- Nuestro script -->
                            <script src="js/validaciones.js"></script>

                            <!-- M�todos adicionales, validar solo letras -->
                            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/additional-methods.js"></script>


                            </body>
                            </html>
