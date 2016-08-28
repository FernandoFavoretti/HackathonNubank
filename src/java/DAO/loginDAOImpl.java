/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Factory.ConnectionFactory;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class loginDAOImpl implements loginDAO {

    @Override
    public ArrayList<String> login(String user, String pass) {
        Connection conn = ConnectionFactory.getConnection();
        ArrayList<String> cred = new ArrayList<String>();
        String SELECT_USER = "Select id_user, email, empresa, logo from USER where email ='" + user + "' AND pass='" + pass + "'";
        Statement stmt;
        try {
            stmt = conn.createStatement();
            ResultSet rs;
            rs = stmt.executeQuery(SELECT_USER);

            if (rs.next()) {
                cred.add(String.valueOf((rs.getInt(1))));
                cred.add(rs.getString(2));
                cred.add(rs.getString(3));

            }
            conn.close();
        } catch (SQLException ex) {
        }

        return cred;

    }

}
