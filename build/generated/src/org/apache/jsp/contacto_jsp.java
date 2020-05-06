package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contacto_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Ok Casa</title>\n");
      out.write("\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/open-iconic-bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/animate.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.theme.default.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/magnific-popup.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/aos.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/ionicons.min.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap-datepicker.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/jquery.timepicker.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/flaticon.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/icomoon.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"icon\" type=\"image/png\" sizes=\"32x32\" href=\"images/favicon.png\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <!-- Back to top button -->\n");
      out.write("        <a id=\"button\"></a>\n");
      out.write("\n");
      out.write("        <div class=\"bg-top navbar-light\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row no-gutters d-flex align-items-center align-items-stretch\">\n");
      out.write("                    <div class=\"col-md-4 d-flex align-items-center py-4\">\n");
      out.write("                        <a class=\"navbar-brand\" href=\"index.jsp\"><img src=\"images/logo.jpg\" alt=\"logo\"></a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-8 d-block\">\n");
      out.write("                        <div class=\"row d-flex\">\n");
      out.write("                            <div class=\"col-md d-flex topper align-items-center align-items-stretch py-md-4\">\n");
      out.write("                                <div class=\"icon d-flex justify-content-center align-items-center\"><span\n");
      out.write("                                        class=\"icon-paper-plane\"></span></div>\n");
      out.write("                                <div class=\"text d-flex align-items-center\">\n");
      out.write("                                    <span>OKCasa_chile@gmail.com</span>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md d-flex topper align-items-center align-items-stretch py-md-4\">\n");
      out.write("                                <div class=\"icon d-flex justify-content-center align-items-center\"><span\n");
      out.write("                                        class=\"icon-phone2\"></span></div>\n");
      out.write("                                <div class=\"text d-flex align-items-center\">\n");
      out.write("                                    <span>LLámanos: +22002200</span>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md topper d-flex align-items-center align-items-stretch\">\n");
      out.write("                                <p class=\"mb-0 d-flex d-block\">\n");
      out.write("                                    <a href=\"login.jsp\" class=\"btn btn-primary d-flex align-items-center justify-content-center\">\n");
      out.write("                                        <span>Solicita una Inspección</span>\n");
      out.write("                                    </a>\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light sticky-top\" id=\"ftco-navbar\"\n");
      out.write("             style=\"position: -webkit-sticky;\">\n");
      out.write("            <div class=\"container d-flex align-items-center\">\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#ftco-nav\"\n");
      out.write("                        aria-controls=\"ftco-nav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"oi oi-menu\"></span> Menu\n");
      out.write("                </button>\n");
      out.write("\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"ftco-nav\">\n");
      out.write("                    <ul class=\"navbar-nav mr-auto\">\n");
      out.write("                        <li class=\"nav-item active\"><a href=\"index.jsp\" class=\"nav-link pl-0\">Home</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a href=\"nosotros.jsp\" class=\"nav-link\">Sobre Nosotros</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a href=\"servicios.jsp\" class=\"nav-link\">Servicios</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a href=\"MisInspecciones.jsp\" class=\"nav-link\">Mis Inspecciones <span\n");
      out.write("                                    class=\"icon-folder\"></span></a></li></a></li>\n");
      out.write("                        <form action=\"#\" class=\"searchform\" style=\"margin-top: 5px; margin-left: 200px; padding-left: 5px;\">\n");
      out.write("                            <div class=\"form-group d-flex\">\n");
      out.write("                                <input type=\"text\" class=\"form-control pl-1\" placeholder=\"Buscar\">\n");
      out.write("                                <button type=\"submit\" placeholder=\"\" class=\"form-control search\"><span\n");
      out.write("                                        class=\"ion-ios-search\"></span></button>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </ul>            \n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                        <li class=\"nav-item\"><a href=\"login.jsp\" class=\"nav-link\">Ingresar <span\n");
      out.write("                                    class=\"icon-user\"></span></a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("        </nav>\n");
      out.write("        <!-- END nav -->\n");
      out.write("\n");
      out.write("        <section class=\"hero-wrap hero-wrap-2\" style=\"background-image: url('images/bg_1.jpg');\" data-stellar-background-ratio=\"0.5\">\n");
      out.write("            <div class=\"overlay\"></div>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row no-gutters slider-text align-items-center justify-content-center\">\n");
      out.write("                    <div class=\"col-md-9 ftco-animate text-center\">\n");
      out.write("                        <h1 class=\"mb-2 bread\">Contáctanos</h1>\n");
      out.write("                        <p class=\"breadcrumbs\"><span class=\"mr-2\"><a href=\"index.jsp\">Home <i class=\"ion-ios-arrow-forward\"></i></a></span> <span>Contacto <i class=\"ion-ios-arrow-forward\"></i></span></p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <section class=\"ftco-section ftco-no-pt ftco-no-pb contact-section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row d-flex align-items-stretch no-gutters\">\n");
      out.write("                    <div class=\"col-md-6 p-4 p-md-5 order-md-last bg-light\">\n");
      out.write("                        <form method=\"POST\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <input type=\"text\" class=\"form-control\" placeholder=\"Tu Nombre\" title=\"Ingresa Nombre\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <input type=\"email\" class=\"form-control\" placeholder=\"Tu Correo\" title=\"Ingresa Correo\" required>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <input type=\"text\" class=\"form-control\" placeholder=\"Asunto\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <textarea name=\"\" id=\"\" cols=\"30\" rows=\"7\" class=\"form-control\" placeholder=\"Mensaje\"></textarea>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <input type=\"submit\" value=\"Enviar Mensaje\" class=\"btn btn-primary py-3 px-5\">\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6 d-flex align-items-stretch\">\n");
      out.write("                        <div id=\"map\"></div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <section class=\"ftco-section contact-section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row d-flex mb-5 contact-info\">\n");
      out.write("                    <div class=\"col-md-12 mb-4\">\n");
      out.write("                        <h2 class=\"h4\">Información de Contacto</h2>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"w-100\"></div>\n");
      out.write("                    <div class=\"col-md-3 d-flex\">\n");
      out.write("                        <div class=\"bg-light d-flex align-self-stretch box p-4\">\n");
      out.write("                            <p><span>Dirección:</span> \n");
      out.write("                                <br>\n");
      out.write("                                <a href=\"dirección\">Av. San Carlos 1340, Puente Alto, Región Metropolitana</p></a></p>   \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-3 d-flex\">\n");
      out.write("                        <div class=\"bg-light d-flex align-self-stretch box p-4\">\n");
      out.write("                            <p><span>Teléfono:</span>\n");
      out.write("                                <br>\n");
      out.write("                                <a href=\"telefono\">+22002200</a></p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-3 d-flex\">\n");
      out.write("                        <div class=\"bg-light d-flex align-self-stretch box p-4\">\n");
      out.write("                            <p><span>Correo:</span>\n");
      out.write("                                <br>\n");
      out.write("                                <a href=\"correo\">OKCasa_chile@gmail.com\n");
      out.write("                                </a></p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-3 d-flex\">\n");
      out.write("                        <div class=\"bg-light d-flex align-self-stretch box p-4\">\n");
      out.write("                            <p><span>Web:</span> \n");
      out.write("                                <br>\n");
      out.write("                                <a href=\"#\">www.OkCasa.cl</a></p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- Footer -->\n");
      out.write("        <footer class=\"ftco-footer ftco-bg-dark ftco-section\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row mb-5\">\n");
      out.write("                    <div class=\"col-md\">\n");
      out.write("                        <div class=\"ftco-footer-widget mb-5\">\n");
      out.write("                            <h2 class=\"ftco-heading-2 logo\"><span></span><img src=\"images/logo2.jpg\" alt=\"logo\"></h2>\n");
      out.write("                            <p>Preocupados por la calidad de tu hogar, para una experiencia única con tu familia.</p>\n");
      out.write("                            <ul class=\"ftco-footer-social list-unstyled float-md-left float-lft mt-3\">\n");
      out.write("                                <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-twitter\"></span></a></li>\n");
      out.write("                                <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-facebook\"></span></a></li>\n");
      out.write("                                <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-instagram\"></span></a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md\">\n");
      out.write("                        <div class=\"ftco-footer-widget mb-5 ml-md-4\">\n");
      out.write("                            <h2 class=\"ftco-heading-2\">Sobre nosotros</h2>\n");
      out.write("                            <ul class=\"list-unstyled\">\n");
      out.write("                                <li><a href=\"#\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>Conócenos</a></li>\n");
      out.write("                                <li><a href=\"#\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>Contáctanos</a></li>\n");
      out.write("                                <li><a href=\"#\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>Solicita servicios</a></li>\n");
      out.write("                                <li><a href=\"#\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>Conoce nuestro equipo</a></li>\n");
      out.write("                                <li><a href=\"#\"><span class=\"ion-ios-arrow-round-forward mr-2\"></span>Proyectos</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-5\">\n");
      out.write("                        <div class=\"ftco-footer-widget mb-5\">\n");
      out.write("                            <h2 class=\"ftco-heading-2\">Sedes</h2>\n");
      out.write("                            <div class=\"block-21 mb-4 d-flex\">\n");
      out.write("                                <a class=\"blog-img mr-4\" style=\"background-image: url(images/image_1.jpg);\"></a>\n");
      out.write("                                <div class=\"text\">\n");
      out.write("                                    <h3 class=\"heading\"><a href=\"#\">Brooklyn,NY EEUU</a></h3>\n");
      out.write("                                    <div class=\"meta\">\n");
      out.write("                                        <div><a href=\"#\"><span class=\"icon-calendar\"></span> Desde Feb. 07, 1978</a></div>\n");
      out.write("                                        <div><a href=\"#\"><span class=\"icon-person\"></span> 500 empleados</a></div>\n");
      out.write("                                        <div><a href=\"#\"><span class=\"icon-home\"></span> Sede Base</a></div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"block-21 mb-5 d-flex\">\n");
      out.write("                                <a class=\"blog-img mr-4\" style=\"background-image: url(images/image_2.jpg);\"></a>\n");
      out.write("                                <div class=\"text\">\n");
      out.write("                                    <h3 class=\"heading\"><a href=\"#\"> Santiago, Chile</a></h3>\n");
      out.write("                                    <div class=\"meta\">\n");
      out.write("                                        <div><a href=\"#\"><span class=\"icon-calendar\"></span> Feb. 07, 1990</a></div>\n");
      out.write("                                        <div><a href=\"#\"><span class=\"icon-person\"></span> 320 empleados</a></div>\n");
      out.write("                                        <div><a href=\"#\"><span class=\"icon-home\"></span> Segunda Sede</a></div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md\">\n");
      out.write("                        <div class=\"ftco-footer-widget mb-5\">\n");
      out.write("                            <h2 class=\"ftco-heading-2\">Boletín Informátivo</h2>\n");
      out.write("                            <form action=\"#\" class=\"subscribe-form\">\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control mb-2 text-center\" placeholder=\"Ingresa tu email\">\n");
      out.write("                                    <input type=\"submit\" value=\"Subscríbete\" class=\"form-control submit px-3\">\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12 text-center\">\n");
      out.write("\n");
      out.write("                        <p>\n");
      out.write("                            Copyright OKCasa &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados \n");
      out.write("                        </p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Icono carga -->\n");
      out.write("        <div id=\"ftco-loader\" class=\"show fullscreen\"><svg class=\"circular\" width=\"48px\" height=\"48px\"><circle class=\"path-bg\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke=\"#eeeeee\"/><circle class=\"path\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke-miterlimit=\"10\" stroke=\"#F96D00\"/></svg></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery-migrate-3.0.1.min.js\"></script>\n");
      out.write("        <script src=\"js/popper.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.easing.1.3.js\"></script>\n");
      out.write("        <script src=\"js/jquery.waypoints.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.stellar.min.js\"></script>\n");
      out.write("        <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("        <script src=\"js/aos.js\"></script>\n");
      out.write("        <script src=\"js/jquery.animateNumber.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap-datepicker.js\"></script>\n");
      out.write("        <script src=\"js/jquery.timepicker.min.js\"></script>\n");
      out.write("        <script src=\"js/scrollax.min.js\"></script>\n");
      out.write("        <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false\"></script>\n");
      out.write("        <script src=\"js/google-map.js\"></script>\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("        <script src=\"js/backtotop.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}