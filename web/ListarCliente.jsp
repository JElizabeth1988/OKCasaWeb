<%-- 
    Document   : ListarCliente
    Created on : 14-06-2020, 18:17:04
    Author     : chida
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:if test="${tipo!=null}">
    <c:if test="${tipo==1}">
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


                <link rel="stylesheet" href="css/flaticon.css">
                <link rel="stylesheet" href="css/fontello-embedded.css">
                <link rel="stylesheet" href="css/style.css">
                <link rel="icon" type="image/png" sizes="32x32" href="images/favicon.png">

            </head>
            <body>

                <!-- Back to top button -->
                <a id="button"></a>

                <%@include file="menu.jsp" %>
                <!-- END nav -->





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
    </c:if>
</c:if>