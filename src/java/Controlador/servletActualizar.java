/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Clases.Cliente;
import Clases.Comuna;
import Clases.Usuario;
import Dao.ClienteDao;
import Dao.ComunaDAO;
import Dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
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
public class servletActualizar extends HttpServlet {

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
            out.println("<title>Servlet servletActualizar</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servletActualizar at " + request.getContextPath() + "</h1>");
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
        String rut_cliente = request.getParameter("txtRut_cliente");
        String primer_nombre = request.getParameter("txtPrimer_nombre");
        String segundo_nombre = request.getParameter("txtSegundo_nombre");
        String ap_paterno = request.getParameter("txtAp_paterno");
        String ap_materno = request.getParameter("txtAp_materno");
        String direccion = request.getParameter("txtDireccion");
        int telefono = Integer.parseInt(request.getParameter("txtTelefono"));
        String email = request.getParameter("txtEmail");
        int id_comuna = Integer.parseInt(request.getParameter("cboComuna"));

        Cliente cli = new Cliente(rut_cliente, primer_nombre, segundo_nombre, ap_paterno, ap_materno, direccion, telefono, email, id_comuna);
        ClienteDao dao = new ClienteDao();

        try {

            if (dao.ModificarCliente(cli)) {
                request.setAttribute("msj", "Modificado exitosamente");
                request.getRequestDispatcher("Modificar.jsp").forward(request, response);
            } else {
                request.setAttribute("err", "No Modificado");
                request.getRequestDispatcher("Modificar.jsp").forward(request, response);
            }
        } catch (SQLException ex) {
            request.setAttribute("err", "No Modificado" + ex.getMessage());
            request.getRequestDispatcher("Modificar.jsp").forward(request, response);
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
