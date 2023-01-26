/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package project;
import java.sql.*;
        
/**
 *
 * @author ADMIN
 */
public class connection_provider {
    public static void main(String[] args)
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","admin");
            if(con!=null)
                System.out.println("Successfully connected");
           
        }
        catch(Exception e){
            System.out.println("not connected");
           
        }
   
    }    
}
