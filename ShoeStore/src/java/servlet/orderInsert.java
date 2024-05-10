/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlet;

import MA_package.DBConnection;
import MA_package.insertData;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Asus
 */
class orderInsert {
Connection conn;

    public orderInsert() {

    }
       public void connectToDB() {
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/shoe_store";
        String username = "root";
        String password = "";

        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(orderInsert.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public Connection getConnection() {
        return conn;
    }

    public void orderInsert(String fname, String lname, String selection, String houseadd, String apartment, String city, String state, String zip, String phone, String email) {
        try {
            connectToDB();
            String query = "INSERT INTO orders (fname, lname, selection, houseadd, apartment, city, state, zip, phone, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, fname);
            statement.setString(2, lname);
            statement.setString(3, selection);
            statement.setString(4, houseadd);
            statement.setString(5, apartment);
            statement.setString(6, city);
            statement.setString(7, state);
            statement.setString(8, zip);
            statement.setString(9, phone);
            statement.setString(10, email);
            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } }
}
