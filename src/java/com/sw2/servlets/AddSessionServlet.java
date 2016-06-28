/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.servlets;

import com.sw2.bean.Usuario;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author cvalencia
 */
public class AddSessionServlet extends HttpServlet {

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
         HttpSession session = request.getSession(true);
            
        int fail;
        String admin = "dgo250594@gmail.com";
        String passadmin="diego123";
        if(request.getAttribute("usuario")!=null){
            
            Usuario usuario = (Usuario) request.getAttribute("usuario");
           
         if (usuario.getCorreo().equalsIgnoreCase(admin)
                    && usuario.getPassword().equalsIgnoreCase(passadmin)) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("gestionPlatillo");
                request.setAttribute("usuario", usuario);
                dispatcher.forward(request, response);
            }else{
             session.setAttribute("usuarioSes", usuario);
           response.sendRedirect("Cuenta.jsp");
            //RequestDispatcher dispatcher = request.getRequestDispatcher("Cuenta.jsp");
            //request.setAttribute("usuarioSes", usuario);
            //dispatcher.forward(request, response);
            }   
        }else{
            fail = 1;
        }
        //session.setAttribute("usuarioSes", usuario);
         //  response.sendRedirect("Cuenta.jsp");
        
        
        
        
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
        processRequest(request, response);
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
