package ynov.david.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ynov.david.dao.DAOFactory;
import ynov.david.dao.DaoArticle;
import ynov.david.model.Article;

public class AdminArticle extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DAOFactory factory = new DAOFactory();
        DaoArticle daoArticle = factory.getDaoArticle();

        req.setAttribute("articles", daoArticle.getAllArticleFromUser("test"));

        this.getServletContext().getRequestDispatcher("/WEB-INF/article/admin/index.jsp").forward(req, resp);
    }
}