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
                        <h1 class="mb-2 bread">Inspecci�n</h1>
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i
                                        class="ion-ios-arrow-forward"></i></a></span> <span>Modificar<i class="ion-ios-arrow-forward"></i></span>
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <br>
        <div class="container">
            <h2 class="text-center" id="title">Modificar Solicitud</h2>
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
                        <!-- REGISTRO ------------------------------------------------------------------------------------------------->


                        <form action="servletActualizarSol" method="POST" style="width: 100%;">
                            <p class="text-uppercase pull-center" style="font-weight: bold;margin-left: 30px;"> <span
                                    class="icon-edit" style="font-size: 35px;"></span>  Ingrese los datos 
                                <a href="ListadoSol"><span
                                        class="icon-book-alt" style="font-size:16px;margin-left: 420px;color:rgba(0, 0, 0, 0.5);background-color: #ffeeba;">Ir Listar</span></a>
                                <a href="EliminarCliente.jsp"><span
                                        class="icon-cancel" style="font-size:16px;margin-left: 10px;color:rgba(0, 0, 0, 0.5);background-color: #ffeeba;">Ir eliminar</span></a>
                            </p>
                            <hr id="line" style=" border-top: .1875rem solid #fcf8e3">
                            <div class="container-fluid col-md-8">
                                <div class="row justify-content-center">



                                    <div class="col-lg-12">

                                        <div class="row">
                                            <c:forEach var="sol" items="${listas}"> 
                                                <div class="col-md-3" id="textbox">
                                                    <div class="form-group"> <!-- c�digo -->

                                                        <label for="codigo" class="control-label">C�digo Solicitud</label>
                                                        <input type="text" name="txtId" readonly value="${sol.getId_solicitud()}" class="form-control input-lg"
                                                               placeholder="C�digo"  style="color: #9e9e9e;" >
                                                    </div>
                                                </div>

                                                <div class="col-md-3" id="textbox">
                                                    <div class="form-group"> <!--Fecha -->

                                                        <label for="codigo" class="control-label">Fecha Solicitud</label>
                                                        <input  type="text" name="txtFecha" readonly  class="form-control input-lg"
                                                                placeholder="C�digo" style="color: #9e9e9e;"  value="${sol.getFecha_solicitud()}">
                                                    </div>
                                                </div>



                                                <!-- RUT CLIENTE -->

                                                <div class="col-md-3" id="textbox" style="padding-left: 30px;">
                                                    <div class="form-group"> <!-- Cliente -->
                                                        <label for="pago" class="control-label">Rut cliente</label>
                                                        <input type="text" name="txtRut" readonly class="form-control input-lg"
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
                                                                <th scope="col">C�digo</th>
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

                                </div>



                                <br>

                                <div class="container-fluid col-md-8">
                                    <div class="row justify-content-center">

                                        <%-- INGRESAR DATOS -----------------------------------------------------------------%>
                                        <p style="font-weight: bold; font-size: 18px">
                                            DATOS
                                        </p>

                                        <hr id="line" style="width: 70%;">

                                        <div class="row justify-content-center">
                                            <div class="col-md-5" id="textbox">
                                                <div class="form-group"> <!-- Estado -->
                                                    <br>
                                                    <label for="estado" class="control-label">Estado</label>
                                                    <input type="text" name="txtEstado"  class="form-control input-lg"
                                                           placeholder="Estado" value="${sol.getEstado()}">
                                                </div> 
                                            </div>

                                            <div class="col-md-3" id="textbox">
                                                <div class="form-group"> <!--C�digo Agenda -->
                                                    <br>
                                                    <label for="codigo" class="control-label">C�digo Agenda</label>
                                                    <input type="number" name="txtAgenda"  class="form-control input-lg"
                                                           placeholder="C�digo" value="${sol.getId_agenda()}">
                                                </div> 
                                            </div>

                                            <!-- Comparar C�digos -->
                                            <input type="hidden" name="Id_agenda"  class="form-control input-lg"
                                                   placeholder="C�digo" value="${sol.getId_agenda()}">
                                            <!----------------------->
                                            <div class="col-md-2"></div>

                                            <div class="col-md-5" id="textbox">
                                                <div class="form-group"> <!-- Direccion -->

                                                    <label for="direccion" class="control-label">Direcci�n Vivienda</label>
                                                    <input type="text" name="txtDireccion" class="form-control input-lg"
                                                           placeholder="Direcci�n y N�"  required minlength="4" maxlength="500"
                                                           value="${sol.getDireccion_vivienda()}">
                                                </div> 
                                            </div>


                                            <div class="col-md-4" id="textbox">
                                                <div class="form-group"> <!--Comuna -->

                                                    <label for="id_comuna" class="control-label">Comuna</label>

                                                    <select class="form-control" name="cboComuna" >
                                                        <option selected value="${sol.getId_comuna()}" hidden>${sol.getNombre_comuna()}</option>
                                                        <option value="1">Santiago</option>
                                                        <option value="2">Conchal�</option>
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
                                                        <option value="14">�u�oa</option>
                                                        <option value="15">Pe�alolen</option>
                                                        <option value="16">La Florida</option>
                                                        <option value="17">La Granja</option>
                                                        <option value="18">El Bosque</option>
                                                        <option value="19">La Cisterna</option>
                                                        <option value="20">La Pintana</option>
                                                        <option value="21">San Ram�n</option>
                                                        <option value="22">Lo Espejo</option>
                                                        <option value="23">Pedro Aguirre Cerda</option>                                           
                                                        <option value="24">San Joaqu�n</option>                                           
                                                        <option value="25">San Miguel</option>
                                                        <option value="26">Cerrilos</option>
                                                        <option value="27">Estaci�n Centrak</option>
                                                        <option value="28">Maip�</option>
                                                        <option value="29">Cerro Navia</option>
                                                        <option value="30">Lo prado</option>
                                                        <option value="31">Pudahuel</option>
                                                        <option value="32">Quinta Normal</option>
                                                        <option value="33">Puente Alto</option>
                                                    </select>                    
                                                </div>
                                            </div>

                                            <div class="col-md-1"></div>

                                            <div class="col-md-5" id="textbox" >
                                                <div class="form-group"> <!-- Constructora -->

                                                    <label for="direccion" class="control-label">Nombre Constructora</label>
                                                    <input type="text" name="txtConstructora" class="form-control input-lg"
                                                           placeholder="Ingrese Nombre" required minlength="4" maxlength="500" 
                                                           value="${sol.getConstructora()}">
                                                </div> 
                                            </div>
                                            <div class="col-md-4" id="textbox">
                                                <div class="form-group"> <!-- Servicio -->

                                                    <label for="servicio" id="cboServicio" class="control-label">Servicio</label>
                                                    <select class="form-control" name="cboServicio">  
                                                        <option selected value="${sol.getId_servicio()}" hidden>${sol.getNombre_servicio()}</option>
                                                        <option value="1">Verificaci�n Instalaciones y terminaciones</option>
                                                        <option value="2">Medici�n de metros cuadrados de la vivienda</option>
                                                        <option value="3">Inspecci�n de luz, instalaciones sanitarias y gas</option>
                                                        <option value="4">Termograf�as</option>

                                                    </select>                    
                                                </div> 


                                                <br>

                                                <br>
                                            </div>

                                            <div class="col-md-1"></div>         


                                        </div>
                                        <br>
                                        <p style="font-weight: bold; font-size: 18px">
                                            PAGO
                                        </p>

                                        <hr id="line" style="width: 70%;">
                                        <!-- PAGO ------------------------------------------------------->
                                        <div class="col-md-10">

                                            <div class="row">


                                                <div class="col-md-3" id="textbox" style="padding-left: 30px;">
                                                    <div class="form-group"> <!-- Tipo Pago -->

                                                        <label for="pago" class="control-label">TipoPago</label>
                                                        <input type="text" name="txtTipoPago" readonly  class="form-control input-lg"
                                                               placeholder="Ingrese Nombre" required minlength="4" maxlength="500" 
                                                               value="${sol.getTipo_pago()}" style="color: #9e9e9e;" >
                                                    </div> 
                                                </div>
                                                <div class="col-md-3" id="textbox" style="padding-left: 30px;">
                                                    <div class="form-group"> <!-- Pago -->

                                                        <label for="pago" class="control-label">Pago</label>
                                                        <input type="text" name="txtPago" readonly class="form-control input-lg"
                                                               placeholder="Ingrese Nombre" required minlength="4" maxlength="500" 
                                                               value="${sol.getPago()}" style="color: #9e9e9e;" >
                                                    </div> 
                                                </div>
                                                <div class="col-md-3" id="textbox" style="padding-left: 30px;">
                                                    <div class="form-group"> <!-- Descuento -->

                                                        <label for="pago" class="control-label">Descuento</label>
                                                        <input type="text" name="txtDescuento" readonly class="form-control input-lg"
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
                                                <input type="submit" class="btn btn-primary" name="btnModificar"  value="Modificar">  
                                            </div>




                                        </c:forEach>
                                    </div>  

                                    <br>
                                    <br>
                                </div>
                        </form>

                        <br>
                        <br>
                    </div>
                </div>            

            </div>
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
