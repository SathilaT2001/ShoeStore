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
public class New_Arrivals_Pro {
    private Connection conn;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;


	public List<New_Arrivals_Product> getAllProducts() {
      DBConnection db = new DBConnection();
      db.connectToDB();
      this.conn = db.getConnection(); 
        List<New_Arrivals_Product> products = new ArrayList<>();
        try {

            query = "select * from new_products";
            pst = this.conn.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	New_Arrivals_Product row = new New_Arrivals_Product();
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
        
        
        
        
        
             
        public List<New_Arrivals_Product> getCartProducts(ArrayList<New_Arrivals_Product> cartListNewArrivals) {
                 DBConnection db = new DBConnection();
                  db.connectToDB();
                     this.conn = db.getConnection(); 
        List<New_Arrivals_Product> products = new ArrayList<>();
        try {
            
                for (New_Arrivals_Product item : cartListNewArrivals) {
                    query = "select * from new_products where id=?";
                    pst = this.conn.prepareStatement(query);
                    pst.setString(1, item.getId());
                    rs = pst.executeQuery();
                    while (rs.next()) {
                        New_Arrivals_Product row = new New_Arrivals_Product();
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
        
    public float getTotalCartPrice(ArrayList<New_Arrivals_Product> cartListNewArrivals) {
    float sum = 0;

    try {
        // Check if there are items in the cart
        if (cartListNewArrivals.size() > 0) {
            for (New_Arrivals_Product item : cartListNewArrivals) {
                // Query the appropriate table for the price of items
                query = "SELECT price FROM new_arrivals WHERE id=?";
                pst = this.conn.prepareStatement(query);
                pst.setString(1, item.getId());
                rs = pst.executeQuery();

                while (rs.next()) {
                    // Calculate the total price considering quantity
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
