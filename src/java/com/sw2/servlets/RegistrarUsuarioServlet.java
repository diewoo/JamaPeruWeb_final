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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author cvalencia
 */
public class RegistrarUsuarioServlet extends HttpServlet {

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
        SendMail mail = new SendMail();
        Usuario user = new Usuario();
        UsuarioDAO dao = new UsuarioDAO();
        String correo = request.getParameter("correo");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String password = request.getParameter("password");
        String fecha = request.getParameter("fecha");
        String sexo = request.getParameter("sexo");
        if (!correo.equalsIgnoreCase("")
                && !nombre.equalsIgnoreCase("")
                && !apellido.equalsIgnoreCase("")
                && !password.equalsIgnoreCase("")
                && !fecha.equalsIgnoreCase("")
                && !sexo.equalsIgnoreCase("")) {
            if (dao.validarCorreo(correo).equals("")) {
                user.setApellido(request.getParameter("apellido"));
                user.setCorreo(request.getParameter("correo"));
                user.setNombre(request.getParameter("nombre"));
                user.setPassword(request.getParameter("password"));
                user.setFecha_nac(request.getParameter("fecha"));
                user.setSexo(request.getParameter("sexo"));
                user.setTipo("F");
                dao.crearUsuario(user);

                try {
                    
                    mail.setMensage("Te Acabas de registrar en JamaPeru app , disfrute la experiencia.");
                    mail.setSubject("Registro - JamaPeru");
                    mail.setTo(correo);//PP
                    mail.SendMail();
                } catch (Exception e) {
                    response.sendRedirect("ErrorCorreo.jsp");
                }

                response.sendRedirect("index.jsp");
            }

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
