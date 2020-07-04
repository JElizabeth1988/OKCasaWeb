/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Clases.Solicitud;
import Clases.fecha;
import Dao.AgendaDao;
import Dao.SolicitudDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ws.WSPAGO;
import ws.WSPAGO_Service;

/**
 *
 * @author chida
 */
public class servletActualizarSol extends HttpServlet {

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
            out.println("<title>Servlet servletActualizarSol</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servletActualizarSol at " + request.getContextPath() + "</h1>");
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

        //DATOS PARA GUARDAR SOLICITUD----------------------------------
        int codigo = Integer.parseInt(request.getParameter("txtId"));

        Date fecha_solicitud = Date.valueOf(request.getParameter("txtFecha"));
        String direccion_vivienda = request.getParameter("txtDireccion");

        String costructora = request.getParameter("txtConstructora");

        String rut_cliente = request.getParameter("txtRut");

        String tipo_pago = request.getParameter("txtTipoPago");
        int pago = Integer.parseInt(request.getParameter("txtPago"));
        double descuento = Double.parseDouble(request.getParameter("txtDescuento"));
        String estado = request.getParameter("txtEstado");
        int id_agenda = Integer.parseInt(request.getParameter("txtAgenda"));

        //id anterior
        int id_ag_cli = Integer.parseInt(request.getParameter("Id_agenda"));

        int id_comuna = Integer.parseInt(request.getParameter("cboComuna"));

        int id_servicio = Integer.parseInt(request.getParameter("cboServicio"));

        Solicitud sol = new Solicitud(codigo, fecha_solicitud, direccion_vivienda, costructora, rut_cliente, tipo_pago, pago, descuento, estado, id_agenda, id_comuna, id_servicio);
        SolicitudDAO dao = new SolicitudDAO();

        try {

            AgendaDao daoag = new AgendaDao();

            //SIN SON DIFERENTES 
            if (id_ag_cli != id_agenda) {
                //VERIFICAR DISPONIBILIDAD 
                if (daoag.buscarAgenda(id_agenda)) {

                    if (dao.modificarSolicitud(sol)) {

                        //PASAR id_agenda nueva A NO DISPONIBLE
                        daoag.modificarAgenda(id_agenda);

                        //PASAR id_agenda antigua a DISPONIBLE
                        daoag.modificarAgendaAdmin(id_ag_cli);

                        request.setAttribute("msj", "Inspección Modificada");
                        request.getRequestDispatcher("ModificarSol.jsp").forward(request, response);

                    }

                    request.setAttribute("msj", "Inspección Modificada");
                    request.getRequestDispatcher("ModificarSol.jsp").forward(request, response);

                } else {
                    request.setAttribute("err", "Fecha y hora seleccionadas No Disponibles. Intente de Nuevo.");
                    request.getRequestDispatcher("ModificarSol.jsp").forward(request, response);

                }

            }else{
                if (dao.modificarSolicitud(sol)) {
                        request.setAttribute("msj", "Inspección Modificada");
                        request.getRequestDispatcher("ModificarSol.jsp").forward(request, response);

                    }
            }
            

        } catch (SQLException ex) {
            request.setAttribute("err", "No Modificado" + ex.getMessage());
            request.getRequestDispatcher("ModificarSol.jsp").forward(request, response);
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
