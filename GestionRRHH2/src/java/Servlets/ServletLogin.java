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

public class ServletLogin extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out;
        out = response.getWriter();
            
            metodosSQL metodos = new metodosSQL();
            String nombre = request.getParameter("usuario");
            String contraseña = request.getParameter("contrasena");

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<script type=\"text/javascript\">");
            
            boolean logueado = metodos.loginAdmin(nombre, contraseña);
            if(logueado == true){
                out.println("alert('Bienvenido admnistrador "+nombre+".')");
                out.println("location = 'menuAdmin.jsp'");
            }
            else{
                logueado = metodos.loginUser(nombre, contraseña);
                if (logueado == true){
                out.println("alert('Bienvenido usuario "+nombre+".')");
                out.println("location = 'menu.jsp'");
                }
                else{
                    out.println("alert('No pudiste loguearte, "+nombre+".')");
                    out.println("location = 'registro.jsp'");
                }
            }
            
            out.println("</script>");
            out.println("<body>");
            out.println("</body>");
            out.println("</html>");
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
            Logger.getLogger(ServletLogin.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ServletLogin.class.getName()).log(Level.SEVERE, null, ex);
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
