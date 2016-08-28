/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ranking;

import Factory.ConnectionFactory;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author fkenji93hotmail.com
 */
public class ranking {

    public static ArrayList<String> showRanking() {
        Connection conn = ConnectionFactory.getConnection();
        ArrayList<String> rank = new ArrayList<String>();
        String SHOW_RANKING = "Select USER.empresa, CAPITAL.capital from CAPITAL join USER on CAPITAL.id_user = USER.id_user order by capital desc";
        Statement stmt;
        try {
            stmt = conn.createStatement();
            ResultSet rs;
            rs = stmt.executeQuery(SHOW_RANKING);

            while (rs.next()) {

                rank.add(rs.getString(1));
                rank.add(String.valueOf(rs.getFloat(2)));
            }
            conn.close();
        } catch (SQLException ex) {
        }

        return rank;

    }

    public static ArrayList<String> showRankingNoLimit() {
        Connection conn = ConnectionFactory.getConnection();
        ArrayList<String> rank = new ArrayList<String>();
        String SHOW_RANKING = "Select distinct USER.empresa, CAPITAL.capital, CAPITAL.valor, USER.id_user from CAPITAL join USER on CAPITAL.id_user = USER.id_user order by capital desc ";
        Statement stmt;
        try {
            stmt = conn.createStatement();
            ResultSet rs;
            rs = stmt.executeQuery(SHOW_RANKING);

            while (rs.next()) {

                rank.add(rs.getString(1));
                rank.add(String.valueOf(rs.getFloat(2)));
                rank.add(String.valueOf(rs.getFloat(3)));
                rank.add(String.valueOf(rs.getInt(4)));
            }
            conn.close();
        } catch (SQLException ex) {
        }

        return rank;

    }

}
