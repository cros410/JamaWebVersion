/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sw2.dao;

import com.sw2.bean.Venta;
import com.sw2.conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Diego
 */
public class ProfitDAO {

    Conexion conn = new Conexion();

    public List<Venta> getVentas(int pk_usuario) {

        Venta venta;
        List<Venta> ventas = new ArrayList();

        ResultSet rs = null;

        Connection con = null;
        String sql = "SELECT v.idventa , v.monto , v.profit , p.nombre , v.fecha FROM jamadatabase.venta v \n"
                + "inner join jamadatabase.carta c on v.idcarta = c.idcarta\n"
                + "inner join jamadatabase.platillo p on c.idplatillo = p.idplatillo\n"
                + "inner join jamadatabase.usuarioxplatillo up on up.idplatillo= c.idplatillo\n"
                + "where up.idusuarios = ?";
        PreparedStatement stmt = null;
        System.out.println(sql);

        try {
            con = conn.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, pk_usuario);
            rs = stmt.executeQuery();
            while (rs.next()) {
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                venta = new Venta();
                venta.setIdventa(rs.getInt(1));
                venta.setMonto(rs.getFloat(2));
                venta.setProfit(rs.getFloat(3));
                venta.getCarta().getPlatillo().setNombre(rs.getString(4));
                venta.setFecha(dateFormat.format(rs.getDate(5)));
                ventas.add(venta);

            }

        } catch (SQLException ex) {
            System.out.println("Ocurrio un error SQL ");
            ex.printStackTrace();
        } finally {
            try {
                // NO OLVIDAR QUE
                rs.close();
                stmt.close();
                con.close();
            } catch (SQLException ex) {

            }
        }

        return ventas;
    }

}
