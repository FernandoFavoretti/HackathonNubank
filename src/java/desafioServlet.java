/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import general.capital;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Favoretti
 */
@WebServlet(urlPatterns = {"/desafioServlet"})
public class desafioServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet desafioServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet desafioServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String decisao = request.getParameter("decisao");
        String id = request.getParameter("id_user");
        String usr = request.getParameter("usr");
        String emp = request.getParameter("emp");
        String id_decisao = request.getParameter("id");
        int min = 1;
        int max = 10;
        Random rand = new Random();
        ArrayList<String> cp = new ArrayList<String>();
        ArrayList<String> msg = new ArrayList<String>();

        // nextInt is normally exclusive of the top value,
        // so add 1 to make it inclusive
        int randomNum = rand.nextInt((max - min) + 1) + min;
        if (decisao.equals("true")) {
            if (randomNum > 5) {
                //Decisao = sim, e deu certo
                cp = capital.getbyId("float", "capital", "capital", "id_user", Integer.parseInt(id));
                int aumMax = 20;
                int aumMin = 10;
                Random randBom = new Random();
                int rBom = rand.nextInt((aumMax - aumMin) + 1) + aumMin;
                double mult = rBom / 100.0;
                double result = Double.parseDouble(cp.get(0)) * mult;
                double fim = (result + Float.parseFloat(cp.get(0)));

                //Atualizar Capital atual
                capital.atualizaCapital(Integer.parseInt(id), fim);

                //Atualizar capital historico
                capital.insereCapitalHist(Integer.parseInt(id), Double.parseDouble(cp.get(0)));

                //Atualiza acao historico
                capital.insereAcaoHist(Integer.parseInt(id), Double.parseDouble(cp.get(0)) / 10000);

                //Gera resposta
                msg = capital.resposta(Integer.parseInt(id_decisao), "positivo_certo");
                String encoded = URLEncoder.encode(msg.get(0), "ISO-8859-1");
                response.sendRedirect("dashboard.jsp?id=" + id + "&usr=" + usr + "&emp=" + emp + "&msg=" + encoded + "&type=1&v=" + rBom);

            } else {
                //Decisao sim e deu ruim
                cp = capital.getbyId("float", "capital", "capital", "id_user", Integer.parseInt(id));
                int aumMax = 15;
                int aumMin = 7;
                Random randBom = new Random();
                int rBom = rand.nextInt((aumMax - aumMin) + 1) + aumMin;
                double mult = rBom / 100.0;
                double result = Double.parseDouble(cp.get(0)) * mult;
                System.out.println("total" + result);
                System.out.println("resultado: " + (Float.parseFloat(cp.get(0)) - result));
                double fim = (Float.parseFloat(cp.get(0)) - result);

                //Atualizar Capital atual
                capital.atualizaCapital(Integer.parseInt(id), fim);

                //Atualizar capital historico
                capital.insereCapitalHist(Integer.parseInt(id), Double.parseDouble(cp.get(0)));

                //Atualiza acao historico
                capital.insereAcaoHist(Integer.parseInt(id), Double.parseDouble(cp.get(0)) / 10000);

                //Gera resposta
                msg = capital.resposta(Integer.parseInt(id_decisao), "positivo_errado");
                String encoded = URLEncoder.encode(msg.get(0), "ISO-8859-1");
                response.sendRedirect("dashboard.jsp?id=" + id + "&usr=" + usr + "&emp=" + emp + "&msg=" + encoded + "&type=2&v=" + rBom);

            }
        } else {
            if (randomNum > 5) {
                cp = capital.getbyId("float", "capital", "capital", "id_user", Integer.parseInt(id));
                int aumMax = 20;
                int aumMin = 10;
                Random randBom = new Random();
                int rBom = rand.nextInt((aumMax - aumMin) + 1) + aumMin;
                double mult = rBom / 100.0;
                double result = Double.parseDouble(cp.get(0)) * mult;
                System.out.println("resultado: " + (result + Float.parseFloat(cp.get(0))));
                double fim = (result + Float.parseFloat(cp.get(0)));

                //Atualizar Capital atual
                capital.atualizaCapital(Integer.parseInt(id), fim);

                //Atualizar capital historico
                capital.insereCapitalHist(Integer.parseInt(id), Double.parseDouble(cp.get(0)));

                //Atualiza acao historico
                capital.insereAcaoHist(Integer.parseInt(id), Double.parseDouble(cp.get(0)) / 10000);

                //Gera resposta
                msg = capital.resposta(Integer.parseInt(id_decisao), "negativo_certo");
                String encoded = URLEncoder.encode(msg.get(0), "ISO-8859-1");
                response.sendRedirect("dashboard.jsp?id=" + id + "&usr=" + usr + "&emp=" + emp + "&msg=" + encoded + "&type=3&v=" + rBom);

            } else {
                cp = capital.getbyId("float", "capital", "capital", "id_user", Integer.parseInt(id));
                int aumMax = 15;
                int aumMin = 7;
                Random randBom = new Random();
                int rBom = rand.nextInt((aumMax - aumMin) + 1) + aumMin;
                double mult = rBom / 100.0;
                double result = Double.parseDouble(cp.get(0)) * mult;
                System.out.println("total" + result);
                System.out.println("resultado: " + (Float.parseFloat(cp.get(0)) - result));
                double fim = (Float.parseFloat(cp.get(0)) - result);

                //Atualizar Capital atual
                capital.atualizaCapital(Integer.parseInt(id), fim);

                //Atualiza acao historico
                capital.insereAcaoHist(Integer.parseInt(id), Double.parseDouble(cp.get(0)) / 10000);

                //Atualizar capital historico
                capital.insereCapitalHist(Integer.parseInt(id), Double.parseDouble(cp.get(0)));
                msg = capital.resposta(Integer.parseInt(id_decisao), "negativo_errado");
                String encoded = URLEncoder.encode(msg.get(0), "ISO-8859-1");
                response.sendRedirect("dashboard.jsp?id=" + id + "&usr=" + usr + "&emp=" + emp + "&msg=" + encoded + "&type=4&v=" + rBom);

            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
