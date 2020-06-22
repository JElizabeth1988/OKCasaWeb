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
                        <h1 class="mb-2 bread">Ingreso</h1>
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
                <c:if test="${msj!=null}">
                    <div class="alert alert-success">${msj}</div>   
                </c:if>
                <c:if test="${err!=null}">
                    <div class="alert alert-danger">${err}</div>  
                </c:if> 


                <div class="row justify-content-center">

                    <!-- REGISTRO ------------------------------------------------------------------------------------------------->


                    <form action="servletAgenda" method="POST" style="width: 100%;">

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
                                                                    <input style="margin-left: 20px;" type="radio" class="option-input radio" checked name="rb_agendar" value="${agenda.getIdAgenda()}">
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

                    </form>      

                    <form action="servletAgregarSol" method="POST">
                        <div class="container-fluid col-md-10">
                            <div class="row justify-content-center">

                                <%-- INGRESAR DATOS -----------------------------------------------------------------%>
                                <p style="font-weight: bold; font-size: 18px">
                                    PASO 2. Ingresa los datos
                                </p>

                                <hr id="line" style="width: 45%;">


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

                                        <hr id="line" style="width: 60%;">

                                        <div class="col-md-6">
                                            <table class="table-bordered">
                                                <colgroup><col>
                                                    <col width="1">
                                                </colgroup><tfoot>
                                                    <tr>
                                                        <td style="" class="a-right" colspan="1">
                                                            <strong>Total:  $  </strong>
                                                        </td>

                                                    </tr>
                                                </tfoot>
                                                <tbody>
                                                    <tr>
                                                        <td style="" class="a-right" colspan="1">
                                                            Descuento:  $    </td>

                                                    </tr>
                                                    <tr>
                                                        <td style="" class="a-right" colspan="1">
                                                            Subtotal:   $    </td>

                                                    </tr>
                                                </tbody>
                                            </table>
                                            <br>
                                            <br>
                                        </div>


                                        <div class="col-md-10">
                                            <div class="card text-center">
                                                <div class="card-header">
                                                    SISTEMA DE PAGO
                                                </div>
                                                <div class="card-body">

                                                    <!--<div class="form-group"> <!-- ValorTotal 
                                                       <input id="prodId" name="txtTotal" type="hidden" value="70990">
                                                    </div>-->

                                                    <div class="form-group"> <!-- Valor Total -->
                                                        <label for="direccion" class="control-label">Total</label>
                                                        <input id="prodId" name="txtTotal" value="56792" disabled>
                                                    </div> 

                                                    <div class="form-group"> <!-- Direccion -->
                                                        <label for="direccion" class="control-label">Ingrese Monto a pagar</label>
                                                        <input type="text" name="txtPago" id="direccion"
                                                               required minlength="1" maxlength="500">
                                                    </div> 

                                                    <input type="submit" class="btn btn btn-primary" style="margin-right: 40px" value="Procesar Pago">
                                                </div>
                                                <div class="card-footer text-muted">
                                                    Sitio Seguro
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


                <div class="row justify-content-center">
                    <div class="col-md">   

                        <div class="form-check" style="text-align: center;">

                            <br>
                            <br>
                            <br>

                            <div class="justify-content-center">

                                <input type="submit" class="btn btn btn-primary" style="margin-right: 40px" value="Agendar">
                            </div>
                        </div>


                        <br>

                        </form>

                    </div>

                </div>


                <br>
                <br>

                <br>
            </div>


        </div>
        <br>
        <br>
        <br>


    </body>
</html>
