/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.ArrayList;

/**
 *
 * @author Favoretti
 */
public interface loginDAO {
    
     public ArrayList<String> login(String user, String pass);
    
}
