/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ruturaj
 */
public class DBConnection {
    public Connection Connect() throws SQLException{
         try {
                
                Class.forName("com.mysql.jdbc.Driver");
                // out.println("Welcome");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(JavaBeansServlet.class.getName()).log(Level.SEVERE, null, ex);
                // out.println(ex);
            }
            String hostname = "localhost";
            String port = "3306";
            String dbname = "user_login";
            String username = "root";
            String password = "";
            String jdbc = String.format("jdbc:mysql://%s:%s/%s", hostname, port, dbname);
           return DriverManager.getConnection(jdbc, username, password);
}
}
