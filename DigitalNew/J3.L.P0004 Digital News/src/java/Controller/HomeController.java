/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Article;
import Modal.DAOArticle;
import Modal.ViewDao;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tranb
 */
public class HomeController extends HttpServlet {

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
        try {
            DAOArticle articleDB = new DAOArticle();
            // newest article
            ViewDao vdao = new ViewDao();
            Article top1 = new Article();
            int articleID;
            // top 5 newest article
            ArrayList<Article> top5 = new ArrayList<>();
            try {
                top1 = articleDB.getTop1Article();
                top5 = articleDB.getListArticles(5);
            } catch (Exception e) {
                request.setAttribute("error", e);
            }
            articleID = top1.getId();
            HttpSession session = request.getSession();
            if (session.getAttribute("" + articleID) == null) {
                vdao.updateArticleView(articleID);
            }
            session.setAttribute("" + articleID, articleID);
            if (session.isNew()) {
                vdao.updateView();
            }
            int webView = vdao.getView();
            int view = vdao.getArticleView(articleID);
            request.setAttribute("view", view);
            request.setAttribute("news", top1);
            request.setAttribute("webView", webView);
            request.setAttribute("detail", top1);
            request.setAttribute("articles", top5);

            request.getRequestDispatcher("detail.jsp").forward(request, response);
        } catch (IOException | ServletException e) {
            request.getRequestDispatcher("error.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
