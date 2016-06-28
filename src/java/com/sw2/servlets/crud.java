/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.servlets;

import com.sw2.bean.Platillo;
import com.sw2.dao.PlatilloDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author diegoalonso
 */
public class crud extends HttpServlet {

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
        PlatilloDAO td = new PlatilloDAO();
       
        
        
        String accion = request.getParameter("accion");
        
//        if ( accion.equalsIgnoreCase("grabar") ) {
//             PlatilloDAO tdvalida = new PlatilloDAO();
//           
//            List<Platillo> lvalidanombre=tvalida.llamar();
//           
//            String nombre=request.getParameter("nombre");
//            String atencion = request.getParameter("atencion");
//            String preciomartes = request.getParameter("preciomartes");
//            String dulceria = request.getParameter("dulceria");
//            String cumpleanios = request.getParameter("cumpleanios");
//            String calendario = request.getParameter("calendario");
//            String imagen = request.getParameter("imagen");
//        
//              boolean valida=false;
//            for (Tarjetas lvalidanombre1 : lvalidanombre) {
//                if(nombre.equalsIgnoreCase(lvalidanombre1.getNombre())){
//                     ses.setAttribute("error3", "tarjeta ya existente!!");
//                     valida=true;
//                RequestDispatcher rd = request.getRequestDispatcher("/agregartarjeta.jsp");
//               rd.forward(request, response); 
//              
//            }
//            }
//            if(valida==false){
//             Tarjetasdao t = new Tarjetasdao();
//           List<Tarjetas> l1 = t.llamar();
//           int id = l1.size() + 1;
//           td.agregar(id,nombre, atencion, preciomartes, dulceria, cumpleanios, calendario,imagen);
//            }
            
//        }
        if ( accion.equalsIgnoreCase("eliminar") ) {
            int id = Integer.parseInt(request.getParameter("id"));
            td.borrar(id);
            
        }        
          
        
//        if ( accion.equalsIgnoreCase("update")  ) {
//          
//            int id = Integer.parseInt(request.getParameter("id"));
//            
//            String nombre=request.getParameter("nombre");
//            String atencion = request.getParameter("atencion");
//            String preciomartes = request.getParameter("preciomartes");
//            String dulceria = request.getParameter("dulceria");
//            String cumpleanios = request.getParameter("cumpleanios");
//            String calendario = request.getParameter("calendario");
//            String imagen = request.getParameter("imagen");
//            
//            
//           
//              Tarjetas bean1=new Tarjetas(id, nombre, atencion, preciomartes, dulceria, cumpleanios, calendario, imagen);
//            td.update(bean1);
//          
//            
//        }
        
   
        
        
       
      PlatilloDAO t = new PlatilloDAO();
  List<Platillo> l = t.obtenerPlatillos();
//        
     ses.setAttribute("listado", l);
        RequestDispatcher rd = request.getRequestDispatcher("/gestionPlatillos.jsp");
        rd.forward(request, response);
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
