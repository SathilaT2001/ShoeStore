/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package newpackage;
import java.sql.*;


public class ConnectionPro {
    private static Connection con;
    
    public static Connection getConnection(){
        try{

            Class.forName("com.mysql.jdbc.Driver");

            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoe_store","root","");
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}
