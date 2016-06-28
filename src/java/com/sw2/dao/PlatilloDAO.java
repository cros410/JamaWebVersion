/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.dao;

import com.sw2.bean.Platillo;
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
public class PlatilloDAO {
    
    Conexion conn = new Conexion();

    public List<Platillo> obtenerPlatillo(int  pk_usu) {
        List<Platillo> platillos = new ArrayList();;
        Platillo platillo = null;

        ResultSet rs = null;

        Connection con = null;
        String sql = "select p.idplatillo , p.nombre , p.descripcion, p.imagen ,p.tipo , p.tag \n"
                + "from jamadatabase.usuarioxplatillo u inner join jamadatabase.platillo p on u.idplatillo =p.idplatillo\n"
                + "where u.idusuarios = ?";
        PreparedStatement stmt = null;
        System.out.println(sql);

        try {
            con = conn.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, pk_usu);
            rs = stmt.executeQuery();

            while (rs.next()) {
                
                platillo = new Platillo();
                platillo.setId(rs.getInt(1));
                platillo.setNombre(rs.getString(2));
                platillo.setDescripcion(rs.getString(3));
                platillo.setImagen(rs.getString(4));
                platillo.setTipo(rs.getString(5));
                platillo.setTag(rs.getString(6));
                platillos.add(platillo);
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
        return platillos;
    }
    
    public void ingresarPlatillo(Platillo platillo){
        Connection con = conn.getConnection();
        PreparedStatement stmt1 = null;

        String sql1 = "INSERT INTO platillo  ( nombre, descripcion , imagen ,tipo , tag"
               + " ) VALUES (?,?,?,?,?)";
        
        
        // Obtener la conexion
        try {

            stmt1 = con.prepareStatement(sql1);
            stmt1.setString(1, platillo.getNombre());
            stmt1.setString(2, platillo.getDescripcion());
            stmt1.setString(3, platillo.getImagen());
            stmt1.setString(4, "U");
            stmt1.setString(5, platillo.getTag());
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
    
    public int lasInsertIdPlatillo(){
        int pk=0;
         ResultSet rs = null;

        Connection con = null;
        String sql = "SELECT max(idplatillo) FROM jamadatabase.platillo";
        PreparedStatement stmt = null;
        System.out.println(sql);

        try {
            con = conn.getConnection();
            stmt = con.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                pk=rs.getInt(1);
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
        return pk;
    }
    
     public void ingresarUsuarioxPlatillo(int pkPlatillo , int pkusuario){
        Connection con = conn.getConnection();
        PreparedStatement stmt1 = null;

        String sql1 = "INSERT INTO usuarioxplatillo  ( idusuarios, idplatillo"
               + " ) VALUES (?,?)";
        
        
        // Obtener la conexion
        try {

            stmt1 = con.prepareStatement(sql1);
            stmt1.setInt(1,pkusuario);
            stmt1.setInt(2, pkPlatillo);
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
public List<Platillo> obtenerPlatillos() {
        List<Platillo> platillos = new ArrayList();;
        Platillo platillo = null;

        ResultSet rs = null;

        Connection con = null;
        String sql = "select  distinct p.idplatillo , p.nombre , p.descripcion, p.imagen ,p.tipo , p.tag \n"
                + "from jamadatabase.usuarioxplatillo u inner join jamadatabase.platillo p on u.idplatillo =p.idplatillo\n"
              ;
        PreparedStatement stmt = null;
        System.out.println(sql);

        try {
            con = conn.getConnection();
            stmt = con.prepareStatement(sql);
            //stmt.setInt(1, pk_usu);
            rs = stmt.executeQuery();

            while (rs.next()) {
                
                platillo = new Platillo();
                platillo.setId(rs.getInt(1));
                platillo.setNombre(rs.getString(2));
                platillo.setDescripcion(rs.getString(3));
                platillo.setImagen(rs.getString(4));
                platillo.setTipo(rs.getString(5));
                platillo.setTag(rs.getString(6));
                platillos.add(platillo);
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
        return platillos;
    }
 public void borrar(int id) {
        
            Connection con = null;
            String sql = "DELETE FROM platillo WHERE idplatillo = ?  ";
            PreparedStatement stmt = null;
            
            
         
        try {
            con = conn.getConnection();
            stmt = con.prepareStatement(sql);
       
            stmt.setInt(1, id);
        
            stmt.executeUpdate();
            
        } catch (SQLException ex) {
            System.out.println("Ocurrio un error SQL ");
            ex.printStackTrace();
        } finally {
                try {
                
                    stmt.close();
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(PlatilloDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
        }
    
    }
}


