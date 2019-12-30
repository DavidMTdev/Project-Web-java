package ynov.david.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ynov.david.dao.DAOFactory;
import ynov.david.dao.DaoArticle;


public class Post extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        DAOFactory factory = new DAOFactory();
        DaoArticle daoArticle = factory.getDaoArticle();

        int id = Integer.parseInt(req.getParameter("id"));
        
        ynov.david.model.Article article = daoArticle.getArticle(id);

        req.setAttribute("article", article);

        this.getServletContext().getRequestDispatcher("/WEB-INF/article/post/index.jsp").forward(req, resp);
    }
}
