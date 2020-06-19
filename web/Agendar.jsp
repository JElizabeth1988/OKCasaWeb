<%-- 
    Document   : solicitarInspeccion
    Created on : 01-05-2020, 21:21:41
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
        <link rel="stylesheet" href="css/fontello-embedded.css">
        <link rel="stylesheet" href="css/flaticon.css">
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
                        <h1 class="mb-2 bread">Agendar</h1>
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Agendar <i class="ion-ios-arrow-forward"></i></span></p>
                    </div>
                </div>
            </div>
        </section>

        <br>

        <div class="container">

            <h2 class="text-center" id="titl">Solicita tu Inspección</h2>
            <p class="text-center">
                <small id="passwordHelpInline" class="text-muted"></small>
            </p>
            <hr>
            <c:if test="${msj!=null}">
                <div class="alert alert-success">${msj}</div>  
            </c:if>
            <c:if test="${err!=null}">
                <div class="alert alert-danger">${err}</div>  
            </c:if>  

            <div class="row justify-content-center">


                <div class="col-md-auto">

                    <form action="servletAgregarSol" method="POST">

                        <fieldset>

                            <div class="col-md-auto">
                                <%--  AGENDAR HORA------------------------------------------%>

                                <div class="row justify-content-center">

                                    <p style="font-weight: bold; font-size: 18px">
                                        PASO 1. Selecciona la Fecha
                                    </p>

                                    <hr id="line" style="width: 50%;">

                                    <div class="col-md-3" id="textbox">
                                        <div class="form-group"> <!-- Día -->
                                            <label style="color: #bd2130">*</label>
                                            <label for="fecha" class="control-label">Fecha</label>
                                            <input type="date" name="txtFecha" id="fecha" class="form-control input-lg"
                                                   checked>
                                        </div> 
                                    </div>

                                    <div class="col-md-2" id="textbox">
                                        <div class="form-group"> <!--HOra -->
                                            <label style="color: #bd2130">*</label>
                                            <label for="id_comuna" class="control-label">Hora</label>
                                            <select class="form-control" name="cboComuna">
                                                <option value="1">9:00</option>
                                                <option value="2">10:00</option>
                                                <option value="3">11:00</option>
                                                <option value="4">12:00</option>
                                                <option value="5">13:00</option>
                                                <option value="6">14:00</option>
                                                <option value="7">15:00</option>
                                                <option value="8">16:00</option>
                                                <option value="9">17:00</option>
                                                <option value="10">18:00</option>
                                                <option value="11">19:00</option>
                                            </select>                    
                                        </div>
                                    </div>

                                    <div class="col-md-4" id="textbox">
                                        <div class="form-group"> 
                                            <input type="submit" class="btn btn btn-primary" value=Consultar style="margin-top: 40px">
                                        </div>

                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                    </div>

                                    <%-- INGRESAR DATOS -----------------------------------------------------------------%>
                                    <p style="font-weight: bold; font-size: 18px">
                                        PASO 2. Ingresa los datos
                                    </p>

                                    <hr id="line" style="width: 52%;">


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

                                        <div class="col-md-3" style="padding-bottom: 120px;"></div>

                                    

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

                                        <div class="col-md-3" id="textbox">


                                            <br>
                                        </div>

                                        <%--<div>
                                            <input type="submit" class="btn btn btn-primary" value="Enviar" style="margin-left: 50px">
                                        </div>  --%>

                                    </div>
                                    <br>

                                    <%-- PAGO ---------------------------------------------------------------
                                    <p style="font-weight: bold; font-size: 18px;margin-left: 10px;">
                                        PASO 3. Efectuar Pago
                                    </p>
                                    <hr id="line" style="width: 55%;">

                                    <br>

                                    <br>
                                    <div class="col-md-5">

                                        <br>
                                        <br>
                                        <div class="row justify-content-center">
                                            <a href="ListarCliente.jsp"><span
                                                    style="font-size:18px;color:rgba(0, 0, 0, 0.5);background-color: #ffeeba;">   Dirijirse a Pagar    </span></a>
                                        </div>  

                                    </div>
                                    <%--<div>
                                        <input type="submit" class="btn btn btn-primary" value="Enviar" style="margin-left: 50px">
                                    </div>  --%>
                                </div>

                            </div> 
                            <div class="container">
                                <div class="row justify-content-center" style="margin-right: 150px;">
                                    <p><a href="#" class="btn btn-lg btn-primary">Agendar</a></p>
                                </div>  
                            </div>  


                    </form>

                </div>




            </div>
            <br>
            <br>

            <%--
            <div class="row justify-content-center">


                                <div class="table-responsive small">

                                    <label class="control-label" id="lb"> Selecciona Día y hora</label>
            <%--<table class="table table-striped table-bordered">
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

                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                    <tr>
                                                        <td>13:00 - 15:00</td>
                                                        <td></td>
                                                        <td></td>             
                                                        <td></td>
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

                                    <table class="table table-striped table-bordered" style="color:black;">
                                        <thead>
                                            <tr>
                                                <th scope="col">Día</th>
                                                <th scope="col">Hora</th>
                                                <th scope="col">Consultar Disponibilidad</th>


                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td> Sacar desde BD</td>

                                                <td>Sacar desde BD</td>
                                                <td><div style="margin-right:  20px">
                                                        <input type="submit" class="btn btn btn-primary" style=" font-size: 18px; margin-left: 50px;" value="&#x2b6f;"></span>
                                                    </div></span></td>


                                            </tr>

                                            <tr>
                                                <td>Sacar desde BD</td>
                                                <td>Sacar desde BD</td>
                                                <td><div style="margin-right:  20px">
                                                        <input type="submit" class="btn btn btn-primary" style="color: #2ecc71; font-size: 15px; margin-left: 50px;" value="&#x1f50e;"></span>
                                                    </div></td>
                                                </td>             


                                            </tr>

                                            <tr>
                                                <td>Sacar desde BD</td>
                                                <td>Sacar desde BD</td>
                                                <td><div style="margin-right: 20px">
                                                        <input type="submit" class="btn btn btn-primary" style="color: #2ecc71; font-size: 15px; margin-left: 50px;" value="&#x1f50e;"></span>
                                                    </div></td>

                                            </tr>

                                            <tr>
                                                <td>Sacar desde BD</td>
                                                <td>Sacar desde BD</td>
                                                <td><div style="margin-right: 20px">
                                                        <input type="submit" class="btn btn btn-primary" style="color: #2ecc71; font-size: 15px; margin-left: 50px;" value="&#x1f50e;"></span>
                                                    </div></td>

                                            </tr>


                                        </tbody>
                                    </table>
                                </div>


                            </div>--%>




            </fieldset>

      
            <%-- --%>



            <%-- <div class="cart-totals-wrapper">
                <div class="cart-totals">
                    <table id="shopping-cart-totals-table">
                        <colgroup><col>
                            <col width="1">
                        </colgroup><tfoot>
                            <tr>
                                <td style="" class="a-right" colspan="1">
                                    <strong>Total: </strong>
                                </td>
                                <td style="" class="a-right">
                                    <strong><span class="price"> $</span></strong>
                                </td>
                            </tr>
                        </tfoot>
                        <tbody>
                            <tr>
                                <td style="" class="a-right" colspan="1">
                                    Descuento:     </td>
                                <td style="" class="a-right">
                                    <span class="price"> $</span>    </td>
                            </tr>
                            <tr>
                                <td style="" class="a-right" colspan="1">
                                    Subtotal:     </td>
                                <td style="" class="a-right">
                                    <span class="price"> $</span>    </td>
                            </tr>
                        </tbody>
                    </table>
                    <br>

                                    <ul class="checkout-types bottom">
                                        <li class="method-checkout-cart-methods-onepage-bottom" style="list-style: none">    <button type="button" title="Proceed to Checkout" class="button btn-proceed-checkout btn-primary"><span><span>Proceda a Pagar</span></span></button>
                                        </li>
                                        <li class="method-checkout-cart-methods-multishipping" style="list-style: none"><a>Diferentes medios de pago.</a>
                                        </li>
                                    </ul>
                                </div>
                            </div> --%>



        </div>



    </div>






    <br>
    <br>
    <br>
    <br>






</div>
</div>

</div>



<!-- Footer -->
<%@include file="footer.jsp" %>  


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
<script src="js/datepicker.js"></script>


</body>
</html>
