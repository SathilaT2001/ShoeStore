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
public class MenPro {
     private Connection conn;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;


	public List<MenProduct> getAllProducts() {
      DBConnection db = new DBConnection();
      db.connectToDB();
      this.conn = db.getConnection(); 
        List<MenProduct> products = new ArrayList<>();
        try {

            query = "select * from men_products";
            pst = this.conn.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	MenProduct row = new MenProduct();
                row.setId(rs.getString("id"));
                row.setName(rs.getString("name"));
                row.setCategory(rs.getString("category"));
                row.setDescription(rs.getString("description"));
                row.setPrice(rs.getString("price"));
                row.setQuantity(rs.getString("quantity"));
                row.setSize(rs.getString("size"));
                row.setImage(rs.getBlob("image"));
                products.add(row);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return products;
    }
}
