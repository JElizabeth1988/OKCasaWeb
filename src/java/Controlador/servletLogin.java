/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ws.WSBANCO;
import ws.WSBANCO_Service;
import ws.WSLOGIN;
import ws.WSLOGIN_Service;

/**
 *
 * @author chida
 */
public class servletLogin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet servletLogin</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servletLogin at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Cerrar Sesión
        request.getSession().invalidate();
        // Solo redirije, no envía variables
        response.sendRedirect("index.jsp");
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Capturar Credenciales
        String user = request.getParameter("txtUsuario");
        String pass = request.getParameter("txtContrasenia");

        //Creamos el cliente al WS
        WSLOGIN_Service servicio = new WSLOGIN_Service();
        WSLOGIN cliente = servicio.getWSLOGINPort();


        //Validar las credenciales
        int tipo = cliente.login(user, pass);

        if (tipo > 0) {

            //SACAR CLIENTE HIPOTECARIO
            WSBANCO_Service serv = new WSBANCO_Service();
            WSBANCO cli = serv.getWSBANCOPort();
            
            String rut = cliente.rutCliente(user, pass);
            int tipo_cliente = cli.tipoCliente(rut);

            request.getSession().setAttribute("tipo", tipo);
            request.getSession().setAttribute("username", user);
            request.getSession().setAttribute("tipo_cliente", tipo_cliente);
            request.getSession().setAttribute("rut", rut);
            request.getRequestDispatcher("index.jsp").forward(request, response);

        } else {
            request.setAttribute("err", "Credenciales Incorrectas");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
