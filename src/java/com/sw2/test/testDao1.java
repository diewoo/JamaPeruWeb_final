/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.test;

import com.sw2.bean.SendMail;
import com.sw2.bean.Usuario;
import com.sw2.dao.UsuarioDAO;
import java.util.List;

/**
 *
 * @author Diego
 */
public class testDao1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
//        ProfitDAO test = new ProfitDAO();
//        UsuarioDAO test2= new UsuarioDAO();
//        PlatilloDAO platillo=new PlatilloDAO();
//        List <Platillo> td=platillo.obtenerPlatillos();
//        platillo.borrar(101);
//        Usuario usua=test2.obtenerUserXUsuario("cros410@gmail.com", "diego123");
//        System.out.println(usua);
//        for (Platillo td1 : td) {
//            System.out.println(td1);
//        }
        
        SendMail send=new SendMail();
       send.SendMail2();
        
//        UsuarioDAO u=new UsuarioDAO();
//        
//     Usuario u1=u.obtenerUserXUsuarioxFb("dgo250594@gmail.com");
//        System.out.println(u1);
//        
//        UsuarioDAO test=new UsuarioDAO();
//              List<Usuario> ventas =  test.llamar();
//for (Usuario venta : ventas) {
//         System.out.println(venta);
//      }
//        
//        
//    }
    
    }}
