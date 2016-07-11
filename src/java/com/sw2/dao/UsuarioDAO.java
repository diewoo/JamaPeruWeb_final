/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.dao;

import com.sw2.bean.Platillo;
import com.sw2.bean.Usuario;
import com.sw2.conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Diego
 */
public class UsuarioDAO implements UsuarioDAOInterface{

    Conexion cone = new Conexion();

    /**
     *
     * @param usu
     * @param pass
     * @return
     */
    @Override
    public Usuario obtenerUserXUsuario(String usu , String pass) {

        Usuario usuario = null;
        ResultSet rs = null;

        Connection con = null;
        String sql = "SELECT * FROM usuarios WHERE correo=? and password=?";
        PreparedStatement stmt = null;
        System.out.println(sql);

        try {
            con = cone.getConnection();
            stmt = con.prepareStatement(sql);

            stmt.setString(1, usu);
            stmt.setString(2, pass);

            rs = stmt.executeQuery();

            while (rs.next()) {
                usuario = new Usuario();
                usuario.setIdusuarios(rs.getInt(1));
                usuario.setNombre(rs.getString(2));
                usuario.setApellido(rs.getString(3));
                usuario.setCorreo(rs.getString(4));
                usuario.setSexo(rs.getString(5));
                usuario.setTipo(rs.getString(6));
                usuario.setFecha_nac(rs.getString(7));
                usuario.setPassword(rs.getString(8));
            }

        } catch (SQLException ex) {
            System.out.println("Ocurrio un error SQL ");
            ex.printStackTrace();
        } finally {
            try {

                rs.close();
                stmt.close();
                con.close();
            } catch (SQLException ex) {

            }
        }

        return usuario;
    }

    /**
     *
     * @param usu
     * @return
     */
    @Override
    public Usuario obtenerUserXUsuarioxFb(String usu ) {

        Usuario usuario = null;
        int idusuario = 0;
        String nombre = "";
        String contra = "";
        String apellido = "";
        String correo = "";
        String sexo = "";
        String tipo = "";
        String fecha_nac = "";
        String password = "";
        ResultSet rs = null;

        Connection con = null;
        String sql = "SELECT * FROM usuarios WHERE correo=? ";
        PreparedStatement stmt = null;
        System.out.println(sql);

        try {
            con = cone.getConnection();
            stmt = con.prepareStatement(sql);

            stmt.setString(1, usu);
           

            rs = stmt.executeQuery();

            while (rs.next()) {
                usuario = new Usuario();
                idusuario = rs.getInt(1);
                usuario.setIdusuarios(idusuario);
                nombre = rs.getString(2);
                usuario.setNombre(nombre);
                apellido = rs.getString(3);
                usuario.setApellido(apellido);
                correo = rs.getString(4);
                usuario.setCorreo(correo);
                sexo = rs.getString(5);
                usuario.setSexo(sexo);
                tipo = rs.getString(6);
                usuario.setTipo(tipo);
                fecha_nac = rs.getString(7);
                usuario.setFecha_nac(fecha_nac);
                contra = rs.getString(8);
                usuario.setPassword(contra);
            }

        } catch (SQLException ex) {
            System.out.println("Ocurrio un error SQL ");
            ex.printStackTrace();
        } finally {
            try {

                rs.close();
                stmt.close();
                con.close();
            } catch (SQLException ex) {

            }
        }

        return usuario;
    }
    @Override
    public String validarCorreo(String correo) {

        
        String mail = "";
        Connection con = null;
        String sql = "SELECT correo FROM usuarios WHERE correo=?";
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            con = cone.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setString(1, correo);
            rs = stmt.executeQuery();
            while (rs.next()) {
               mail=rs.getString(1);
            }

        } catch (SQLException ex) {
            System.out.println("Ocurrio un error SQL ");
            ex.printStackTrace();
        } finally {
            try {

                rs.close();
                stmt.close();
                con.close();
            } catch (SQLException ex) {

            }
        }

        return mail;
    }
    @Override
    public void crearUsuario(Usuario usuario) {
        Connection con = cone.getConnection();
        PreparedStatement stmt1 = null;

        String sql1 = "INSERT INTO usuarios ( nombre, apellido , correo ,sexo , tipo, fecha_nac, password "
               + " ) VALUES (?,?,?,?,?,?,?)";

        // Obtener la conexion
        try {

            stmt1 = con.prepareStatement(sql1);
            stmt1.setString(1, usuario.getNombre());
            stmt1.setString(2, usuario.getApellido());
            stmt1.setString(3, usuario.getCorreo());
            stmt1.setString(4, usuario.getSexo());
            stmt1.setString(5, usuario.getTipo());
            stmt1.setString(6, usuario.getFecha_nac());
            stmt1.setString(7, usuario.getPassword());
            int rc1 = stmt1.executeUpdate();
            
            } catch (SQLException ex) {
            System.out.println("Ocurrio un error SQL ");
            ex.printStackTrace();
            try {
                con.rollback();
            } catch (SQLException ex1) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex1);
            }
            } finally {
            try {
                stmt1.close();

                con.close();
            } catch (SQLException ex) {

            }
        }

    }
    @Override
    public void actualizarContra(String correo , String password){
          // 5.1 Interface Connection
         Connection con = cone.getConnection();
         // 5.2 Sentencia SQL
         String sql="UPDATE  usuarios SET password = ? WHERE correo = ?";
        PreparedStatement pstmt=null;
         try {
             //5.3 Precompilamos la sentencia sql
             pstmt=con.prepareStatement(sql);
            // 5.4 Colocar los valores en las ????
             pstmt.setString(1,password);
             pstmt.setString(2, correo);
             // 5.5 Ejecutar
             int cont = pstmt.executeUpdate();
            
                      
        } catch (Exception e) {
            System.out.println(e.toString());
        }finally {
              try {
                   // 5.6 Liberar recursos
                   //puede lanzar excepciones SQLException
                pstmt.close();
                con.close();
              } catch (SQLException ex) {
               
         }
     }
    }
    @Override
    public List<Usuario> llamar() {
         List<Usuario> lista = new ArrayList<>();
         PreparedStatement stmt = null;
         ResultSet rs = null;
         
         String sql = "SELECT * FROM usuarios ";
         Connection con = cone.getConnection();
        try {
            
            stmt = con.prepareStatement(sql);
            rs = stmt.executeQuery();
            while(rs.next()){               
               Usuario u = new Usuario(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)
                       ,rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
               lista.add(u);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{            
             try {
                 con.close();
                 stmt.close();
             } catch (SQLException ex) {
                 Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
             }
        }
       return lista;  
    }
    @Override
    public void RegistrarUsuarioFacebook(String correo, String nombre){
        Connection con = cone.getConnection();
        PreparedStatement stmt1 = null;

        String sql1 = "INSERT INTO usuarios ( nombre, apellido , correo ,sexo , tipo, fecha_nac, password"
               + " ) VALUES (?,?,?,?,?,?,?)";
        try {

            stmt1 = con.prepareStatement(sql1);
            stmt1.setString(1, nombre);
            stmt1.setString(2, "");
            stmt1.setString(3, correo);
            stmt1.setString(4, "M");
            stmt1.setString(5, "F");
            stmt1.setString(6, "01/09/1995");
            stmt1.setString(7, "");
            
            int rc1 = stmt1.executeUpdate();
            
            } catch (SQLException ex) {
            System.out.println("Ocurrio un error SQL ");
            ex.printStackTrace();
            try {
                con.rollback();
            } catch (SQLException ex1) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex1);
            }
            } finally {
            try {
                stmt1.close();

                con.close();
            } catch (SQLException ex) {

            }
        }
    }
    
   
}
