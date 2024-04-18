/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MA_package;

import java.io.InputStream;
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
public class insertData {
    Connection conn;
    
    public void connectToDB() {
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/shoe_store";
        String username = "root";
        String password = "";

        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(insertData.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public Connection getConnection() {
        return conn;
    }

    public void insertFormData(String id, String name, String category, String description, String price, String quantity, String size, InputStream image) {
        connectToDB();
        try {
            String men = "men",women = "women",kids = "kids";
        if (men.equals(category)){
            String query = "INSERT INTO men_products  (id, name, category, description, price, quantity, size, image) VALUES (?, ?, ?, ?, ?, ?,?, ?)";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, id);
            statement.setString(2, name);
            statement.setString(3, category);
            statement.setString(4, description);
            statement.setString(5, price);
            statement.setString(6, quantity);
            statement.setString(7, size);
            statement.setBlob(8, image);
            statement.executeUpdate();
        }
        else if(women.equals(category)){
            String query = "INSERT INTO women_products (id, name, category, description, price, quantity, size, image) VALUES (?, ?, ?, ?, ?, ?,?, ?)";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, id);
            statement.setString(2, name);
            statement.setString(3, category);
            statement.setString(4, description);
            statement.setString(5, price);
            statement.setString(6, quantity);
            statement.setString(7, size);
            statement.setBlob(8, image);
            statement.executeUpdate();
        }
        else if(kids.equals(category)){
            String query = "INSERT INTO kids_products  (id, name, category, description, price, quantity, size, image) VALUES (?, ?, ?, ?, ?, ?,?, ?)";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, id);
            statement.setString(2, name);
            statement.setString(3, category);
            statement.setString(4, description);
            statement.setString(5, price);
            statement.setString(6, quantity);
            statement.setString(7, size);
            statement.setBlob(8, image);
            statement.executeUpdate();
        }
        }
        
            
            
         
        
        catch (SQLException ex) {
            Logger.getLogger(insertData.class.getName()).log(Level.SEVERE, null, ex);
        } 
        finally {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(insertData.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
        
        }}
    
}
