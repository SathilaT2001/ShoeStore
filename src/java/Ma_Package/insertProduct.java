/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Ma_Package;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Asus
 */
class insertProduct {
Connection conn;
    public void insertFormData(String id, String name, String category, String description, float price, int quantity, String size, InputStream image) {
        DBConnection DB = new DBConnection();
        
        DB.connectToDB();
        try {
            String men = "men",women = "women",kids = "kids";
        if (men.equals(category)){
            String query = "INSERT INTO men_products  (id, name, category, description, price, quantity, size, image) VALUES (?, ?, ?, ?, ?, ?,?, ?)";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, id);
            statement.setString(2, name);
            statement.setString(3, category);
            statement.setString(4, description);
            statement.setFloat(5, price);
            statement.setInt(6, quantity);
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
            statement.setFloat(5, price);
            statement.setInt(6, quantity);
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
            statement.setFloat(5, price);
            statement.setInt(6, quantity);
            statement.setString(7, size);
            statement.setBlob(8, image);
            statement.executeUpdate();
        }
        }
        
            
            
         
        
        catch (SQLException ex) {
            Logger.getLogger(insertProduct.class.getName()).log(Level.SEVERE, null, ex);
        } 
        finally {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(insertProduct.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
        
        }}

    }
    
    
    

