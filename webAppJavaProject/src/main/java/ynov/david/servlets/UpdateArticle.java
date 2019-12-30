package ynov.david.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ynov.david.dao.DAOFactory;
import ynov.david.dao.DaoArticle;
import ynov.david.model.Article;

public class UpdateArticle extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if (req.getParameter("article") != null) {
            int id = Integer.parseInt(req.getParameter("article"));

            req.setAttribute("idArticle", id);
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/article/admin/update/index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        DAOFactory factory = new DAOFactory();
        DaoArticle daoArticle = factory.getDaoArticle();

        if (req.getParameter("id") != null) {
            Article article = daoArticle.getArticle(Integer.parseInt(req.getParameter("id")));

            article.setTitle(req.getParameter("title"));
            article.setContent(req.getParameter("content"));
            article.setText(req.getParameter("text"));
            article.setUpdateDate(new Date());

            daoArticle.updateArticle(article);
        }

        this.getServletContext().getRequestDispatcher("/WEB-INF/article/admin/update/index.jsp").forward(req, resp);
    }
}