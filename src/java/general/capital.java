/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package general;

import Factory.ConnectionFactory;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Favoretti
 */
public class capital {

    public static ArrayList<String> getbyId(String type, String table, String columnBusca, String columnCompare, int id) {
        Connection conn = ConnectionFactory.getConnection();

        ArrayList<String> rank = new ArrayList<String>();
        String query = "";
        if (type.equals("inteiro") || type.equals("float")) {
            query = "Select " + columnBusca + " from " + table + " where " + columnCompare + "=" + id;
        } else {
            query = "Select " + columnBusca + " from " + table + "where " + columnCompare + "= '" + id + "'";

        }
        System.out.println(query);
        Statement stmt;
        try {
            stmt = conn.createStatement();
            ResultSet rs;
            rs = stmt.executeQuery(query);
            while (rs.next()) {
                if (type.equals("inteiro")) {
                    rank.add(String.valueOf(rs.getInt(1)));
                } else if (type.equals("float")) {
                    rank.add(String.valueOf(rs.getFloat(1)));
                } else {
                    rank.add(rs.getString(1));
                }
            }
        } catch (SQLException ex) {
        }

        return rank;

    }

    public static void atualizaCapital(int id, double capital) {
        Connection conn = ConnectionFactory.getConnection();

        //cadastra gerente
        String query = "update capital set capital= " + capital + " where id_user= " + id;
        System.out.println(query);
        //insere no banco
        try {
            Statement st4 = conn.createStatement();

            //Result set:
            st4.executeUpdate(query);

        } catch (SQLException ex) {
            Logger.getLogger(capital.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void insereCapitalHist(int id, double capital) {
        Connection conn = ConnectionFactory.getConnection();

        //cadastra gerente
        String query = "insert into HIST_CAPITAL (id_user, valor, data) VALUES (" + id + "," + capital + ", '2016-08-22 22:22:22')";
        System.out.println(query);
        //insere no banco
        try {
            Statement st4 = conn.createStatement();

            //Result set:
            st4.executeUpdate(query);

        } catch (SQLException ex) {
            Logger.getLogger(capital.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void insereAcaoHist(int id, double acao) {
        Connection conn = ConnectionFactory.getConnection();

        //cadastra gerente
        String query = "insert into HIST_ACAO (id_user, valor, data) VALUES (" + id + "," + acao + ", '2016-08-22 22:22:22')";
        System.out.println(query);
        //insere no banco
        try {
            Statement st4 = conn.createStatement();

            //Result set:
            st4.executeUpdate(query);

        } catch (SQLException ex) {
            Logger.getLogger(capital.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static ArrayList<String> resposta(int id_decisao, String campo) {
        Connection conn = ConnectionFactory.getConnection();

        ArrayList<String> rank = new ArrayList<String>();
        String query = "";
        query = "Select " + campo + " from RESPOSTAS_DESAFIO where id_decisao=" + id_decisao;
        System.out.println(query);

        Statement stmt;
        try {
            stmt = conn.createStatement();
            ResultSet rs;
            rs = stmt.executeQuery(query);
            while (rs.next()) {
                rank.add(rs.getString(1));

            }
        } catch (SQLException ex) {
        }

        return rank;

    }

    public static float liquido(int id_user) {
        Connection conn = ConnectionFactory.getConnection();

        ArrayList<String> rank = new ArrayList<String>();
        String query = "";
        query = "Select qtde, valor from ACAO where id_user_dono=" + id_user;
        System.out.println(query);
        float soma = 0;

        Statement stmt;
        try {
            stmt = conn.createStatement();
            ResultSet rs;
            rs = stmt.executeQuery(query);
            while (rs.next()) {
                soma += rs.getInt(1) * rs.getFloat(2);

            }
        } catch (SQLException ex) {
        }

        return soma;

    }

}
