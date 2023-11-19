/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pindad.app;

import java.sql.*;
import javax.swing.*;


/**
 *
 * @author dikyr
 */

public class KoneksiDB {
    Connection conn = null;
    public static Connection java_db(){
    try{
            Class.forName("org.sqlite.JDBC");
            Connection conn =DriverManager.getConnection("jdbc:sqlite:C:\\Users\\rizaa\\Documents\\KP\\Program\\Pindad App\\db_pindad.sqlite");
            //JOptionPane.showMessageDialog(null, "Connection to database is successful");
            return conn;
           
            
        }catch (Exception e){
            JOptionPane.showMessageDialog(null, e);
            return null;
        }
    }
}