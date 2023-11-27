/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import DAO.metodosSQL;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gendo
 */
public class ServletAñadirEmpleado extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            metodosSQL metodos = new metodosSQL();
            String nombreEmpleado = request.getParameter("nombreEmpleado");
            String apellidoEmpleado = request.getParameter("apellidoEmpleado");
            String sueldoEmpleado = request.getParameter("sueldoEmpleado");
            String horasTrabajadas = request.getParameter("horasTrabajadas");
            String puestoEmpleado = request.getParameter("puestoEmpleado");
            String idDepartamento = request.getParameter("idDepartamento");
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");out.println("<script type=\"text/javascript\">");
            
            boolean empleadoCreado = metodos.ingresarEmpleado(nombreEmpleado, apellidoEmpleado, sueldoEmpleado, horasTrabajadas, puestoEmpleado, idDepartamento);
                if(empleadoCreado == true){
                out.println("alert('Has añadido al empleado "+nombreEmpleado+apellidoEmpleado+".')");
                out.println("location = 'añadirEmpleadoAdmin.jsp'");
            }
            else{
                out.println("alert('Pe causa :(.')");
                out.println("location = 'index.jsp'");
            }
            out.println("</script>");
            out.println("<body>");
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ServletAñadirEmpleado.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ServletAñadirEmpleado.class.getName()).log(Level.SEVERE, null, ex);
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
