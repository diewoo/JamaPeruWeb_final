/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.servlets;

import com.sw2.bean.Platillo;
import com.sw2.bean.Usuario;
import com.sw2.dao.PlatilloDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author cvalencia
 */
public class IngresarPlatilloServlet extends HttpServlet {

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
        
        Usuario user = (Usuario) request.getSession().getAttribute("usuarioSes");
        String nombre = request.getParameter("nombre");
        String descrip = request.getParameter("descrip");
        String imagen = request.getParameter("imagen");
        String tag = request.getParameter("tag");
        RequestDispatcher dispatcher;
        if(nombre!=null &&
                descrip!=null &&
                    imagen!=null &&
                        tag!=null){
            
            PlatilloDAO dao = new PlatilloDAO();
            Platillo plat = new Platillo();
            plat.setNombre(nombre);
            plat.setDescripcion(descrip);
            plat.setImagen(imagen);
            plat.setTag(tag);
            dao.ingresarPlatillo(plat);
            int pkPlatillo = dao.lasInsertIdPlatillo();
            dao.ingresarUsuarioxPlatillo(pkPlatillo, user.getIdusuarios());
            dispatcher = request.getRequestDispatcher("ListarPlatillosServlet");
        }else{
            dispatcher = request.getRequestDispatcher("Error.jsp");
        }
         dispatcher.forward(request, response);
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
