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
public class compraDAO {

    public static ArrayList<String> checaComprador(int id) {
        Connection conn = ConnectionFactory.getConnection();

        ArrayList<String> rank = new ArrayList<String>();
        String query = "";
        query = "Select id_user_comprado, qtde from ACAO where id_user_comprado = " + id;

        System.out.println(query);
        Statement stmt;
        try {
            stmt = conn.createStatement();
            ResultSet rs;
            rs = stmt.executeQuery(query);
            while (rs.next()) {
                rank.add(String.valueOf(rs.getInt(1)));
                rank.add(String.valueOf(rs.getInt(2)));
            }

            conn.close();
        } catch (SQLException ex) {
        }

        return rank;

    }

    public static void updateComprados(ArrayList<String> array, int qtd) {
        Connection conn = ConnectionFactory.getConnection();

        qtd += Integer.parseInt(array.get(1));
        String query = "update ACAO set qtde =" + qtd + " where id_user_comprado =" + array.get(0);
        System.out.println(query);
        //insere no banco
        try {
            Statement st4 = conn.createStatement();

            //Result set:
            st4.executeUpdate(query);
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(capital.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static void insereAcaoCompra(int id, int idComprado, int qtde, float valor) {
        Connection conn = ConnectionFactory.getConnection();

        //cadastra gerente
        String query = "insert into ACAO VALUES (" + id + "," + idComprado + ", " + qtde + ", " + valor + ")";
        System.out.println(query);
        //insere no banco
        try {
            Statement st4 = conn.createStatement();

            //Result set:
            st4.executeUpdate(query);
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(capital.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
