<%-- 
    Document   : menu
    Created on : 07-06-2020, 19:59:44
    Author     : chida
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>

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
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/fontello-embedded.css">
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon.png">
    </head>
    <body>
        <div class="bg-top navbar-light">
            <div class="container">
                <div class="row no-gutters d-flex align-items-center align-items-stretch">
                    <div class="col-md-4 d-flex align-items-center py-4">
                        <a class="navbar-brand" href="index.jsp"><img src="images/logo.jpg" alt="logo"></a>
                    </div>
                    <div class="col-lg-8 d-block">
                        <div class="row d-flex">
                            <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
                                <div class="icon d-flex justify-content-center align-items-center">

                                    <span
                                        class="icon-paper-plane"> </span>
                                </div>
                                <div class="text d-flex align-items-center">
                                    <span>OKCasa_chile@gmail.com</span>
                                </div>
                            </div>
                            <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
                                <div class="icon d-flex justify-content-center align-items-center"><span
                                        class="icon-phone"></span></div>
                                <div class="text d-flex align-items-center">
                                    <span>LL�manos: +22002200</span>
                                </div>
                            </div>
                            <div class="col-md topper d-flex align-items-center align-items-stretch">
                                <p class="mb-0 d-flex d-block">
                                    <a href="login.jsp" class="btn btn-primary d-flex align-items-center justify-content-center">
                                        <span>Solicita una Inspecci�n</span>
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light sticky-top" id="ftco-navbar"
             style="position: -webkit-sticky;">
            <div class="container d-flex align-items-center">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                        aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active"><a href="index.jsp" class="nav-link pl-0">Home</a></li>

                        <li class="nav-item"><a href="nosotros.jsp" class="nav-link">Sobre Nosotros</a></li>
                        <li class="nav-item"><a href="servicios.jsp" class="nav-link">Servicios</a></li>
                            <c:if test="${tipo==2}">

                            <li class="nav-item"><a href="ListaUS" class="nav-link">Mis Inspecciones <span
                                        class="icon"></span></a></li></a></li>                      
                            <li class="nav-item"><a href="servletAgenda" class="nav-link">Agendar<span
                                        class="icon"></span></a></li></a></li>  

                        </c:if>

                        <c:if test="${tipo!=null}">
                            <c:if test="${tipo==1}">

                                <li class="nav-item"><a href="Listado" class="nav-link">Clientes</a></li>
                                <li class="nav-item"><a href="ListadoSol" class="nav-link">Solicitudes</a></li>
                                <li class="nav-item"><a href="AgregarCliente.jsp" class="nav-link">Agregar Cliente</a></li>
                                <li class="nav-item"><a href="EliminarCliente.jsp" class="nav-link">Eliminar</a></li>
                                <li class="nav-item"><a href="EnviarCorreo.jsp" class="nav-link">Correo</a></li>
 
                            </c:if> 
                        </c:if>

                        <c:if test="${tipo== null}">

                            <form action="#" class="searchform" style="margin-top: 5px; margin-left: 200px; padding-left: 5px;">
                                <div class="form-group d-flex">
                                    <input type="text" class="form-control pl-1" placeholder="Buscar">
                                    <button type="submit" class="form-control search"><span
                                            class="ion-ios-search"></span></button>
                                </div>
                            </form>

                        </c:if>


                    </ul>            
                    <ul class="nav navbar-nav navbar-right">
                        <c:if test="${tipo!=null}">
                            <li class="nav-item"><a style="color: #022d5d;" class="nav-link">Bienvenido ${username} <span
                                        class="icon-user"></span></a></li>
                            <li class="nav-item"><a href="servletLogin" class="nav-link">Cerrar Sesi�n <span
                                        class="icon-logout"></span></a></li>
                                </c:if>

                        <c:if test="${tipo==null}">
                            <li class="nav-item"><a href="login.jsp" class="nav-link">Registrar/Iniciar Sesi�n <span
                                        class="icon-user" style="font-size: 17px;"></span></a></li>
                                </c:if>

                    </ul>
                </div>


            </div>
        </div>
    </nav>
</body>
</html>
