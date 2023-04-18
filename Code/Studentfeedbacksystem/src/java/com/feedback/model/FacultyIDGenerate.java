/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.feedback.model;

/**
 *
 * @author Ramu
 */
public class FacultyIDGenerate {
   int finalid;
int masterKey;
int pKey;
int pkeys;
public int facultyID(){
for(int i=1;i<=10;i++){
pkeys = (int) Math.round(Math.random()*5000);

pKey+=pkeys;
}
finalid =pKey/10;
return finalid;
}  
}
