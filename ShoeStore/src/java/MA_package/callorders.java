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
public class callorders {
    private Connection conn;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public List<call_Orders> getAllProducts() {
        DBConnection db = new DBConnection();
        db.connectToDB();
        this.conn = db.getConnection();
        List<call_Orders> products = new ArrayList<>();
        try {

            query = "select * from orders";
            pst = this.conn.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
                call_Orders row = new call_Orders();
                row.setFname(rs.getString("fname"));
                row.setLname(rs.getString("lname"));
                row.setSelection(rs.getString("selection"));
                row.setHouseadd(rs.getString("houseadd"));
                row.setApartment(rs.getString("apartment"));
                row.setCity(rs.getString("city"));
                row.setZip(rs.getString("zip"));
                row.setState(rs.getString("state"));
                row.setEmail(rs.getString("email"));
                row.setPhone(rs.getString("phone"));
                products.add(row);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return products;
    }

}
