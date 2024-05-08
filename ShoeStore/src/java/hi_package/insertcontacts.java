/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hi_package;

import MA_package.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Nirmani
 */
public class insertcontacts {
 Connection con;

    public void insertContacts(String name, String email, String message) throws SQLException {
        DBConnection db = new DBConnection();
        db.connectToDB();
        con = db.getConnection(); // Assign the connection obtained from DBConnection

        String query = "INSERT INTO contact (name, email, message) VALUES (?, ?, ?)";
        PreparedStatement statement = con.prepareStatement(query);
        statement.setString(1, name);
        statement.setString(2, email);
        statement.setString(3, message);
        statement.executeUpdate();
    }
}
