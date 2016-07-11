/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.dao;

import com.sw2.bean.Usuario;
import java.util.List;

/**
 *
 * @author cvalencia
 */
public interface UsuarioDAOInterface {

    public Usuario obtenerUserXUsuario(String usu, String pass);

    public Usuario obtenerUserXUsuarioxFb(String usu);

    public String validarCorreo(String correo);

    public void crearUsuario(Usuario usuario);

    public void actualizarContra(String correo, String password);

    public List<Usuario> llamar();

    public void RegistrarUsuarioFacebook(String correo, String nombre);

}
