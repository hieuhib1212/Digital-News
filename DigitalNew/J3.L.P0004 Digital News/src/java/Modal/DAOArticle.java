/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modal;

import Entity.Article;
import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author tranb
 */
public class DAOArticle extends DBContext {

    public ArrayList<Article> getListArticles(int numberArticles) throws Exception {
        ArrayList<Article> articles = new ArrayList<>();
        String sql = "SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY [date] DESC) AS Number, * FROM Article ) AS thing\n"
                + "WHERE Number BETWEEN 2 AND 6";
        Connection conn = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            statement = conn.prepareStatement(sql);
            rs = statement.executeQuery();
            while (rs.next()) {
                Article a = new Article();
                a.setId(rs.getInt("id"));
                a.setTitle(rs.getString("title"));
                a.setImageUrl(rs.getString("image"));
                a.setContent(rs.getString("content"));
                a.setDate(rs.getTimestamp("date"));
                a.setAuthor(rs.getString("author"));
                a.setShortDes(rs.getString("description"));
                a.setView(rs.getInt("view_number"));
                articles.add(a);
            }
            return articles;
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        } finally {
            closeConnection(conn, statement, rs);
        }
    }

    public Article getTop1Article() throws Exception {
        Article a = new Article();
        String sql = "SELECT top 1 *\n"
                + "FROM Article\n"
                + "order by date desc";
        Connection conn = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            conn = getConnection();
            statement = conn.prepareStatement(sql);
            rs = statement.executeQuery();
            if (rs.next()) {
                a.setId(rs.getInt("id"));
                a.setTitle(rs.getString("title"));
                a.setImageUrl(rs.getString("image"));
                a.setContent(rs.getString("content"));
                a.setDate(rs.getTimestamp("date"));
                a.setAuthor(rs.getString("author"));
                a.setShortDes(rs.getString("description"));
                a.setView(rs.getInt("view_number"));
            }
            return a;
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        } finally {
            closeConnection(conn, statement, rs);
        }
    }

    public Article viewArticleById(int id) throws Exception {
        Connection conn = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        String sql = "select * from Article where id = ?";
        Article a = new Article();
        try {
            conn = getConnection();
            statement = conn.prepareStatement(sql);
            statement.setInt(1, id);
            rs = statement.executeQuery();
            if (rs.next()) {
                a.setId(rs.getInt("id"));
                a.setTitle(rs.getString("title"));
                a.setImageUrl(rs.getString("image"));
                a.setContent(rs.getString("content"));
                a.setDate(rs.getTimestamp("date"));
                a.setAuthor(rs.getString("author"));
                a.setShortDes(rs.getString("description"));
                a.setView(rs.getInt("view_number"));
                return a;
            } else {
                return null;
            }
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        } finally {
            closeConnection(conn, statement, rs);
        }
    }

    public ArrayList<Article> searchArticleByKeyWord(int currentPage, int articlesInPage, String key) throws Exception {
        ArrayList<Article> articles = new ArrayList<>();
        Connection conn = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        String sql = "select * from (\n"
                + "        select ROW_NUMBER()\n"
                + "        over(order by id) as Number, *\n"
                + "        from Article where title like ?)\n"
                + "        as Data where Number between (?) and (?)";
        try {
            conn = getConnection();
            int from = currentPage * articlesInPage - (articlesInPage - 1);
            int to = from + articlesInPage - 1;
            statement = conn.prepareStatement(sql);
            statement.setString(1, "%" + key + "%");
            statement.setInt(2, from);
            statement.setInt(3, to);

            rs = statement.executeQuery();
            while (rs.next()) {
                Article a = new Article();
                a.setId(rs.getInt("id"));
                a.setTitle(rs.getString("title"));
                a.setImageUrl(rs.getString("image"));
                a.setContent(rs.getString("content"));
                a.setDate(rs.getTimestamp("date"));
                a.setAuthor(rs.getString("author"));
                a.setShortDes(rs.getString("description"));
                a.setView(rs.getInt("view_number"));
                articles.add(a);
            }
            return articles;
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        } finally {
            closeConnection(conn, statement, rs);
        }
    }

    public int numberPages(int articleInPage, String key) throws Exception {
        int count = 0;
        Connection conn = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        String sql = "select count(id) as number from Article where title like (?)";
        try {
            conn = getConnection();
            statement = conn.prepareStatement(sql);
            statement.setString(1, "%" + key + "%");
            rs = statement.executeQuery();
            if (rs.next()) {
                count = rs.getInt("number");
            }
            return count % articleInPage == 0 ? count / articleInPage : (count / articleInPage + 1);
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        } finally {
            closeConnection(conn, statement, rs);
        }
    }

}
