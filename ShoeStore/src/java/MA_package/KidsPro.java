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
public class KidsPro {
    private Connection conn;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;


	public List<KidsProduct> getAllProducts() {
      DBConnection db = new DBConnection();
      db.connectToDB();
      this.conn = db.getConnection(); 
        List<KidsProduct> products = new ArrayList<>();
        try {

            query = "select * from kids_products";
            pst = this.conn.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	KidsProduct row = new KidsProduct();
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
        
        
        public List<KidsProduct> getCartProducts(ArrayList<KidsProduct> cartListKids) {
                 DBConnection db = new DBConnection();
                  db.connectToDB();
                     this.conn = db.getConnection(); 
        List<KidsProduct> products = new ArrayList<>();
        try {
            
                for (KidsProduct item : cartListKids) {
                    query = "select * from kids_products where id=?";
                    pst = this.conn.prepareStatement(query);
                    pst.setString(1, item.getId());
                    rs = pst.executeQuery();
                    while (rs.next()) {
                        KidsProduct row = new KidsProduct();
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
}
