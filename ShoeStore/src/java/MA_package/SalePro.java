/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MA_package;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Asus
 */
public class SalePro {
   private Connection conn;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;


	public List<SaleProduct> getAllProducts() {
      DBConnection db = new DBConnection();
      db.connectToDB();
      this.conn = db.getConnection(); 
        List<SaleProduct> products = new ArrayList<>();
        try {

            query = "select * from sale_products";
            pst = this.conn.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	SaleProduct row = new SaleProduct();
                row.setId(rs.getString("id"));
                row.setName(rs.getString("name"));
                row.setCategory(rs.getString("category"));
                row.setDescription(rs.getString("description"));
                  row.setPrice(rs.getFloat("price"));
                row.setQuantity(rs.getInt("quantity"));
                row.setSize(rs.getString("size"));
                row.setImage(rs.getBlob("image"));
                products.add(row);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return products;
    } 
        
        
            
        public List<SaleProduct> getCartProducts(ArrayList<SaleProduct> cartListSale) {
                 DBConnection db = new DBConnection();
                  db.connectToDB();
                     this.conn = db.getConnection(); 
        List<SaleProduct> products = new ArrayList<>();
        try {
            
                for (SaleProduct item : cartListSale) {
                    query = "select * from sale_products where id=?";
                    pst = this.conn.prepareStatement(query);
                    pst.setString(1, item.getId());
                    rs = pst.executeQuery();
                    while (rs.next()) {
                        SaleProduct row = new SaleProduct();
                        row.setId(rs.getString("id"));
                        row.setName(rs.getString("name"));
                        row.setCategory(rs.getString("category"));
                        row.setPrice(rs.getFloat("price")*item.getQuantity());
                        
                        products.add(row);
                    }

                
            }

        } catch (SQLException e) {
           
            System.out.println(e.getMessage());
        }
        return products;
    } 
        
        public float getTotalCartPrice(ArrayList<SaleProduct> cartListSale) {
    float sum = 0;

    try {
        if (cartListSale.size() > 0) {
            for (SaleProduct item : cartListSale) {
                query = "select price from sale_products where id=?";
                pst = this.conn.prepareStatement(query);
                pst.setString(1, item.getId());
                rs = pst.executeQuery();

                while (rs.next()) {
                    sum += rs.getFloat("price") * item.getQuantity();
                }
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return sum;
}
}
