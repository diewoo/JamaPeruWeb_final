/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.servlets;

import com.sw2.bean.SendMail;
import com.sw2.bean.Usuario;
import com.sw2.dao.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author cvalencia
 */
public class RestorePassServlet extends HttpServlet {

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
        SendMail mail = new SendMail();
        String correo = request.getParameter("correo");
        UsuarioDAO dao = new UsuarioDAO();
        String carreoBack = dao.validarCorreo(correo);
        if(!carreoBack.equalsIgnoreCase("")){
            try {
                    mail.setMensage("Ingrese al siguiente link para cambiar su contraseña."+"\n"+
                            "http://localhost:8080/JamaPeruWeb_final/ConfirmarCambioCon.jsp?correo="+correo);
                    mail.setSubject("Cambio de contraseña - JamaPeru");
                    mail.setTo(correo);
                    mail.SendMail();
                } catch (Exception e) {
                    response.sendRedirect("ErrorCorreo.jsp");
                }
            response.sendRedirect("CambioPassword.jsp");
        }else {
            
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
