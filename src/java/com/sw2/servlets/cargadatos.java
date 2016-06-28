/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.servlets;

import com.sw2.bean.Platillo;
import com.sw2.dao.PlatilloDAO;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author diegoalonso
 */
public class cargadatos extends HttpServlet {

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
       HttpSession ses = request.getSession(true);
        PlatilloDAO regdao = new PlatilloDAO();
        List<Platillo> lista = regdao.obtenerPlatillos();
        
     
       
      
            for ( Platillo asd : lista) {
               
                    int id=asd.getId();
                    String nombre = asd.getNombre();
                     String descripcion = asd.getDescripcion();
                     String tag=asd.getTag();
                     String imagen=asd.getImagen();
                     
                    
                   
                    Map<String,String> m = new HashMap<>();
                    
                   
                    m.put("nombre", nombre);
                    m.put("descripcion", descripcion);
                    m.put("tag", tag);
                        m.put("imagen", imagen);
                      //  Gson gson = new Gson();
                     //String json = new Gson().toJson(m);
                    
                    //para iterar meter el mapa en un arreglo
                    
                    
                    response.setContentType("text/plain");
                    response.setCharacterEncoding("UTF-8");
                    //response.getWriter().write(json);
                  //  response.getWriter().close();
             
                    
             
                    
              
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
