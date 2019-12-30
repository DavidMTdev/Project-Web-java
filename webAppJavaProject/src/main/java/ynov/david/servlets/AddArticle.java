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

public class AddArticle extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		this.getServletContext().getRequestDispatcher("/WEB-INF/article/add/index.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		DAOFactory factory = new DAOFactory();
		DaoArticle daoArticle = factory.getDaoArticle();

		Article article = new Article();

		article.setTitle(req.getParameter("title"));
		article.setContent(req.getParameter("content"));
		article.setText(req.getParameter("text"));
		article.setAuthor("test");
		article.setRegisterDate(new Date());
		article.setUpdateDate(new Date());

		daoArticle.addArticle(article);

		this.getServletContext().getRequestDispatcher("/WEB-INF/article/add/index.jsp").forward(req, resp);
	}
}