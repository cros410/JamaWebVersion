/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.test;

import com.sw2.bean.Usuario;
import com.sw2.bean.Venta;
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
        
        ProfitDAO test = new ProfitDAO();
        List<Venta> ventas =  test.getVentas(1);
        for (Venta venta : ventas) {
            System.out.println(venta);
        }
        
        
    }
    
}
