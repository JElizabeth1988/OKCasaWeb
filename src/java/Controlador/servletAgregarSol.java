/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Clases.Solicitud;
import Dao.SolicitudDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author chida
 */
public class servletAgregarSol extends HttpServlet {

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
            out.println("<title>Servlet servletAgregarSol</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servletAgregarSol at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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

        //Capturar Info formulario
        int id_solicitud = 1;

        SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
        String xfecha = "13/06/2020";
         
        Date fecha;  
        
        java.util.Date nfecha;
        
        //fecha = new java.sql.Date(nfecha.getTime());

        
        Date fecha_solicitud = null;
        String hora_solicitud = "23:06";

        String direccion_vivienda = request.getParameter("txtDireccion");

        String costructora = request.getParameter("txtConstructora");

        String rut_cliente = "19385798-1";

        int id_agenda = 1;

        int id_pago = 2;

        int id_comuna = Integer.parseInt(request.getParameter("cboComuna"));

        int id_servicio = Integer.parseInt(request.getParameter("cboServicio"));

        Solicitud sol = new Solicitud(id_solicitud, fecha_solicitud, hora_solicitud, direccion_vivienda, costructora, rut_cliente, id_agenda, id_pago, id_comuna, id_servicio);
        SolicitudDAO dao = new SolicitudDAO();

        try {
            //Intentar Guardar
            if (dao.agregarSolicitud(sol)) {
                request.setAttribute("msj", "Agendado exitosamente");
                request.getRequestDispatcher("Agendar.jsp").forward(request, response);
            } else {
                request.setAttribute("err", "No Agendado :(");
                request.getRequestDispatcher("Agendar.jsp").forward(request, response);
            }
        } catch (SQLException ex) {
            request.setAttribute("err", "No Agendado :o" + ex.getMessage());
            request.getRequestDispatcher("Agendar.jsp").forward(request, response);
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
