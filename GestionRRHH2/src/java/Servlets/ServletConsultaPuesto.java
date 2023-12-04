/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import DAO.metodosSQL;
import clases.empleado;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gendo
 */
public class ServletConsultaPuesto extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String puesto = request.getParameter("puesto");

        metodosSQL metodos = new metodosSQL();
        List<empleado> listaEmpleados = null;
        try {
            listaEmpleados = (List<empleado>) metodos.filtrarPorPuesto(puesto);
        } catch (SQLException ex) {
            Logger.getLogger(ServletConsultaPuesto.class.getName()).log(Level.SEVERE, null, ex);
        }

        request.setAttribute("listaEmpleados", listaEmpleados);
        RequestDispatcher dispatcher = request.getRequestDispatcher("mostrarResultados.jsp");
        dispatcher.forward(request, response);
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
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */

