/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.feedback.model;

import com.feedback.beans.CompusRegister;
import com.feedback.dao.CompusDAO;

/**
 *
 * @author Ramu
 */
public class CompusModel {
    CompusDAO cDao = new CompusDAO();
    public String compusRegister(CompusRegister cr)
    {    
        return cDao.compusRegisterDAO(cr);
    }
}
