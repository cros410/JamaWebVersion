/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Diego
 */
public class Conexion {

    private final String url = "jdbc:mysql://eu-cdbr-azure-north-e.cloudapp.net:3306/jamadatabase?user=b9844b5e4a4b8a&password=c31670ad";

    public Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url);
        } catch (ClassNotFoundException ex) {
            System.out.println("Revisa si cargaste la libreria en elproyecto !!");
            ex.printStackTrace();
        } catch (SQLException ex) {
            System.out.println("Revisa que tu URL de conexion este bien escrito");
            ex.printStackTrace();
        }
        return con;
    }

}
