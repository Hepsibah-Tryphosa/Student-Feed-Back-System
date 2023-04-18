/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.feedback.db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Ramu
 */
public class DBConnection {
   private static Connection con = null; 
   public static Connection getConnection(){
   try{
   DriverManager.registerDriver(new com.mysql.jdbc.Driver());
   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/efeedback","root","root");
  //con = DriverManager.getConnection("jdbc:mysql://node103575-env-2386197.j.layershift.co.uk/efeedback","root","BPGpgz11774");
   if(con!=null){
   return con;
   }else{
   return con;
   }
   }catch(Exception e){
       System.out.println("Connection Error:"+e.getMessage());
   }
   return con;
   }
}
