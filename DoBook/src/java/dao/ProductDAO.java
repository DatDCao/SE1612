/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;
import model.Product;

/**
 *
 * @author docao
 */
public class ProductDAO {

    public List<Product> getAllProducts() {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [DOBOOK].[dbo].[Product]";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
//                Category category = Category.builder().build().(rs.getInt(1), rs.getString(2));
                Product product = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .quantity(rs.getInt(3))
                        .price(rs.getDouble(4))
                        .description(rs.getString(5))
                        .imageUrl(rs.getString(6))
                        .createDate(rs.getString(7))
                        .categoryId(rs.getInt(8))
                        .build();
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Product> getProductsByCategoryID(int categoryId) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [DOBOOK].[dbo].[Product] where category_id = ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .quantity(rs.getInt(3))
                        .price(rs.getDouble(4))
                        .description(rs.getString(5))
                        .imageUrl(rs.getString(6))
                        .createDate(rs.getString(7))
                        .categoryId(rs.getInt(8))
                        .build();
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public int getTatalProduc(){
        List<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT count(id) FROM [DOBOOK].[dbo].[Product] ";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
}
