/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.servlets;

import com.sw2.bean.Usuario;
import com.sw2.dao.UsuarioDAO;
import java.io.IOException;
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
public class loginfbservlet extends HttpServlet {

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
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");

        String delimitadores = "[ .,;?!¡¿\'\"\\[\\]]+";
        String nombrecompleto[] = nombre.split(delimitadores);

        System.out.println("aaaaa");
        System.out.println(nombrecompleto[0]);
        System.out.println(correo);

        UsuarioDAO usuariofb = new UsuarioDAO();
        Usuario user=usuariofb.obtenerUserXUsuarioxFb(correo);
        //List<Usuario> l1 = usuariofb.llamar();
        if(user!=null){
             String nombre_BD[] = user.getNombre().split(delimitadores);
            if(nombre_BD[0].equalsIgnoreCase(nombrecompleto[0].toLowerCase())){
                if(user.getCorreo().equalsIgnoreCase(correo)){
                    RequestDispatcher dispatcher = request.getRequestDispatcher("AddSessionServlet");
                    request.setAttribute("usuario", user);
                    dispatcher.forward(request, response);
                }else{
                    RequestDispatcher rd = request.getRequestDispatcher("indexfb");
                       rd.forward(request, response);
                }
            }else{
                RequestDispatcher rd = request.getRequestDispatcher("indexfb");
               rd.forward(request, response);
            }
            
        }else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request, response);
        }
//        for (Usuario u : l1) {
//            
//            String nombre_BD[] = u.getNombre().split(delimitadores);
//
//            if (nombre_BD[0].equalsIgnoreCase(nombrecompleto[0].toLowerCase())) {
//                if (u.getCorreo().equalsIgnoreCase(correo)) {
//
//                    System.out.println("ddddd");
//                    System.out.println(nombre_BD[0]);
//                    System.out.println(nombrecompleto[0].toLowerCase());
//                    
//                    
//                    request.setAttribute("usuario", user);
//                    ses.setAttribute("usuario", correo);
//                    ses.setAttribute(nombre, "nombre");
//                    ses.setAttribute(correo, "correo");
//                    RequestDispatcher rd = request.getRequestDispatcher("test.jsp");
//                    //System.out.println("ggggggggggggggg");
//                    rd.forward(request, response);
//
//                } else {
//                    RequestDispatcher rd = request.getRequestDispatcher("indexfb");
//                    rd.forward(request, response);
//                }
//
//            } else {
//                RequestDispatcher rd = request.getRequestDispatcher("indexfb");
//                rd.forward(request, response);
//            }
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
