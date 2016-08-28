/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Challenge;

import Factory.ConnectionFactory;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author fkenji93hotmail.com
 */
public class RandomChallenge {

    public static ArrayList<String> askChallenge() {
        Connection conn = ConnectionFactory.getConnection();
        ArrayList<String> challenge = new ArrayList<String>();
        String COUNT = "Select COUNT(id_decisao) from decisao";
        Statement stmt;
        int choice = 1;
        try {
            stmt = conn.createStatement();
            ResultSet rs;
            rs = stmt.executeQuery(COUNT);
            rs.next();
            int quant = rs.getInt(1);
            if (quant == 0) {
                return null;
            }
            if (quant > 1) {
                int min = 1;
                int max = 5;
                Random rand = new Random();
                int rBom = rand.nextInt((max - min) + 1) + min;

                choice = rBom;

            }
            challenge.add(String.valueOf(choice));
            String SQLCHOICE = "Select descricao from decisao where id_decisao = " + choice;
            System.out.println(SQLCHOICE);
            ResultSet rs2;
            rs2 = stmt.executeQuery(SQLCHOICE);
            rs2.next();
            challenge.add(rs2.getString(1));
            conn.close();
        } catch (SQLException ex) {

        }

        return challenge;

    }
}
