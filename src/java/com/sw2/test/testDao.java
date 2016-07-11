/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.test;

import com.sw2.bean.Platillo;
import com.sw2.bean.Usuario;
import com.sw2.bean.Venta;
import com.sw2.dao.PlatilloDAO;
import com.sw2.dao.ProfitDAO;
import java.util.List;

/**
 *
 * @author Diego
 */
public class testDao {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
     PlatilloDAO test = new PlatilloDAO();
//        List<Platillo> ventas =  test.obtenerPlatillos();
//        for (Platillo venta : ventas) {
//            System.out.println(venta);
//        }
        
     test.update(101, "12345_12133");
     
        
        
        
        
    }
    
}
