/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Challenge;

import Factory.ConnectionFactory;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Date;

/**
 *
 * @author fkenji93hotmail.com
 */
public class ChallengeHistory {

    public static void updateChallengeHistory(int id_user, String id_decisao, String decisao, float ganho) {
        Connection conn = ConnectionFactory.getConnection();
        String id_userSTR = String.valueOf(id_user);
        String ganhoSTR = String.valueOf(ganho);
        Statement stmt;
        String INSERT = "Insert HIST_DECISAO values (" + id_userSTR + ", " + id_decisao + ", '" + decisao + "', " + ganhoSTR + ")";
        try {
            stmt = conn.createStatement();
            stmt.executeQuery(INSERT);
            conn.close();
        } catch (SQLException ex) {
        }
    }
}
