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
public class servletAgregar extends HttpServlet {

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
            out.println("<title>Servlet servletAgregar</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servletAgregar at " + request.getContextPath() + "</h1>");
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

        String pass = request.getParameter("txtContrasenia");
        String pass2 = request.getParameter("txtContrasenia2");
        String usuario = request.getParameter("txtUsuario");

        if (!pass.equals(pass2)) {

            request.setAttribute("err", "Contraseñas no coinciden, intente de nuevo.");
            request.getRequestDispatcher("Registrar.jsp").forward(request, response);

        } else {

            try {

                UsuarioDAO d = new UsuarioDAO();
                if (d.buscarUsuario(usuario)) {

                    request.setAttribute("err", "Usuario ya existente, intente con otro.");
                    request.getRequestDispatcher("Registrar.jsp").forward(request, response);

                } else {

                    //Capturar Info formulario
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
                        //Intentar Guardar
                        if (dao.agregarCliente(cli)) {
                            request.setAttribute("msj", "Registrado exitosamente");
                            request.getSession().setAttribute("rut", rut_cliente);
                            request.getRequestDispatcher("Registrar.jsp").forward(request, response);
                        } else {
                            request.setAttribute("err", "Cliente ya existente");
                            request.getRequestDispatcher("Registrar.jsp").forward(request, response);
                        }
                    } catch (SQLException ex) {
                        request.setAttribute("err", "No Registrado" + ex.getMessage());
                        request.getRequestDispatcher("Registrar.jsp").forward(request, response);
                    }

                    //USUARIO------------------------------------------------------------------
                    int codigo = 100;
                    String nombre_usuario = request.getParameter("txtUsuario");
                    String contrasenia = request.getParameter("txtContrasenia");
                    int id_tipo_usuario = 2;

                    Usuario us = new Usuario(codigo, nombre_usuario, contrasenia, rut_cliente, id_tipo_usuario);
                    UsuarioDAO daous = new UsuarioDAO();

                    try {
                        //Intentar Guardar
                        if (daous.agregarUsuario(us)) {

                            request.setAttribute("msje", "Usuario Registrado exitosamente");
                            request.getRequestDispatcher("Registrar.jsp").forward(request, response);
                        } else {

                            request.setAttribute("error", " Usuario No Registrado");
                            request.getRequestDispatcher("Registrar.jsp").forward(request, response);
                        }
                    } catch (SQLException ex) {
                        request.setAttribute("error", "Usuario No Registrado");
                        request.getRequestDispatcher("Registrar.jsp").forward(request, response);
                    }
                }

            } catch (SQLException ex) {
                Logger.getLogger(servletAgregar.class.getName()).log(Level.SEVERE, null, ex);
            }

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
