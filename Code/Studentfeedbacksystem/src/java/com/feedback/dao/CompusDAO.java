/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.feedback.dao;

import com.feedback.beans.CompusRegister;
import com.feedback.db.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Ramu
 */
public class CompusDAO {
    private Connection con       = null;
    private PreparedStatement ps = null;
    private ResultSet rs         = null;
    String msg                   = null;
    
    public String compusRegisterDAO(CompusRegister cr){
     String query = "insert into StudentData values(?,?,?,?,?)";
     try{
     con = DBConnection.getConnection();
     ps  = con.prepareStatement(query);
     ps.setString(1, cr.getF_username());
     ps.setString(2, cr.getF_password());
     ps.setString(3, cr.getF_cwid());
     ps.setString(4, cr.getF_pin());
     ps.setString(5, cr.getF_email());
     int no = ps.executeUpdate();
     if(no>0){
      msg = "success";
      return msg;
     }else{
     msg = "faild";
     return msg;
     }
     
     }catch(Exception e){
         System.out.println("Compus DAO Error:"+e.getMessage());
     }finally{}
        return "faild";
    }
}
