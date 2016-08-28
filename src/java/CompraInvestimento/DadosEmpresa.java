/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CompraInvestimento;

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
public class DadosEmpresa {

    public static ArrayList<String> getData(String empresa) {
        Connection conn = ConnectionFactory.getConnection();
        ArrayList<String> data = new ArrayList<String>();
        String SHOW_RANKING = "Select USER.id_user, CAPITAL.capital, CAPITAL.qtde_acao, CAPITAL.valor from CAPITAL join USER on CAPITAL.id_user = USER.id_user where USER.empresa = '" + empresa + "'";

        Statement stmt;
        int acAtuais = 0;
        int idDono = 0;
        try {
            stmt = conn.createStatement();
            ResultSet rs;
            rs = stmt.executeQuery(SHOW_RANKING);
            rs.next();
            acAtuais = rs.getInt(3);
            idDono = rs.getInt(1);

            data.add(String.valueOf(idDono));
            data.add(String.valueOf(rs.getFloat(2)));
            data.add(String.valueOf(acAtuais));
            data.add(String.valueOf(rs.getFloat(4)));

            String ACTIONSSOLD = "Select qtde from ACAO where id_user_comprado = " + idDono;
            ResultSet rs2;

            rs2 = stmt.executeQuery(ACTIONSSOLD);

            while (rs2.next()) {
                acAtuais -= rs2.getInt(1);
            }

            data.add(String.valueOf(acAtuais));
            conn.close();
        } catch (SQLException ex) {
        }
        return data;
    }
}
