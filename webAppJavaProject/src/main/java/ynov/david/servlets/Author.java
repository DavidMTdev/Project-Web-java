package ynov.david.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ynov.david.dao.DAOFactory;
import ynov.david.dao.DAOUser;
import ynov.david.dao.DaoArticle;;

public class Author extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		DAOFactory factory = new DAOFactory();
		DAOUser daoUser = factory.getDaoUser();
		DaoArticle daoArticle = factory.getDaoArticle();

		if (req.getParameter("author") != null) {

			req.setAttribute("articles", daoArticle.getAllArticleFromUser(req.getParameter("author")));
		}

		req.setAttribute("authors", daoUser.getAllUsers());

		this.getServletContext().getRequestDispatcher("/WEB-INF/authors/index.jsp").forward(req, resp);
	}
}