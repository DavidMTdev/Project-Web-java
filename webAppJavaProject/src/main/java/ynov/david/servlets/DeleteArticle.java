package ynov.david.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ynov.david.dao.DAOFactory;
import ynov.david.dao.DaoArticle;
import ynov.david.model.Article;

public class DeleteArticle extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DAOFactory factory = new DAOFactory();
		DaoArticle daoArticle = factory.getDaoArticle();

		if (req.getParameter("article") != null) {
			int id = Integer.parseInt(req.getParameter("article"));

			Article article = daoArticle.getArticle(id);

			daoArticle.deleteArticle(article);
		}

		this.getServletContext().getRequestDispatcher("/WEB-INF/article/admin/delete/index.jsp").forward(req, resp);
	}
}