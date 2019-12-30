package ynov.david.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ynov.david.model.Article;
import ynov.david.model.User;;

public class DaoArticleImpl implements DaoArticle {
	private Connection connection;

	public DaoArticleImpl(Connection co) {
		this.connection = co;
	}

	public Article getArticle(int id) {

		Article article = new Article();
		try {
			String query = "SELECT * FROM article WHERE id=?;";

			PreparedStatement ps = connection.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			if (rs.next() == false) {
				return null;
			} else {
				do {
					article.setId(rs.getInt("id"));
					article.setAuthor(rs.getString("author"));
					article.setContent(rs.getString("content"));
					article.setTitle(rs.getString("title"));
					article.setText(rs.getString("text"));
					article.setRegisterDate(rs.getDate("register_date"));
					article.setUpdateDate(rs.getDate("update_date"));

				} while (rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return article;
	}

	public List<Article> getAllArticle() {
		List<Article> articles = new ArrayList<Article>();

		try {
			String query = "SELECT * FROM article;";
			PreparedStatement ps = connection.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Article article = new Article();

				article.setId(rs.getInt("id"));
				article.setAuthor(rs.getString("author"));
				article.setTitle(rs.getString("title"));
				article.setContent(rs.getString("content"));
				article.setText(rs.getString("text"));
				article.setRegisterDate(rs.getDate("register_date"));
				article.setUpdateDate(rs.getDate("update_date"));

				articles.add(article);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return articles;
	}

	public List<Article> getLastArticle() {
		List<Article> articles = new ArrayList<Article>();

		try {
			String query = "SELECT * FROM article ORDER BY register_date DESC LIMIT 2;";
			PreparedStatement ps = connection.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Article article = new Article();

				article.setId(rs.getInt("id"));
				article.setAuthor(rs.getString("author"));
				article.setTitle(rs.getString("title"));
				article.setContent(rs.getString("content"));
				article.setText(rs.getString("text"));
				article.setRegisterDate(rs.getDate("register_date"));
				article.setUpdateDate(rs.getDate("update_date"));

				articles.add(article);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return articles;
	}

	public List<Article> getAllArticleFromUser(String username) {
		List<Article> articles = new ArrayList<Article>();

		try {
			String query = "SELECT * FROM article WHERE author=?;";
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Article article = new Article();

				article.setId(rs.getInt("id"));
				article.setAuthor(rs.getString("author"));
				article.setTitle(rs.getString("title"));
				article.setContent(rs.getString("content"));
				article.setText(rs.getString("text"));
				article.setRegisterDate(rs.getDate("register_date"));
				article.setUpdateDate(rs.getDate("update_date"));

				articles.add(article);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return articles;
	}

	public void addArticle(Article article) {
		try {
			String query = "INSERT INTO article (author, title, content, text, register_date, update_date) VALUES(?,?,?,?,?,?);";
			String generatedColumns[] = { "ID" };

			PreparedStatement ps = connection.prepareStatement(query, generatedColumns);

			ps.setString(1, article.getAuthor());
			ps.setString(2, article.getTitle());
			ps.setString(3, article.getContent());
			ps.setString(4, article.getText());
			ps.setDate(5, new Date(article.getRegisterDate().getTime()));
			ps.setDate(6, new Date(article.getUpdateDate().getTime()));

			ps.executeUpdate();

			ResultSet rs = ps.getGeneratedKeys();
			while (rs.next()) {
				article.setId(rs.getInt(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public void updateArticle(Article article) {
		try {
			String query = "UPDATE article SET title=?, content=?, text=? , update_date=? WHERE id=?;";
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setString(1, article.getTitle());
			ps.setString(2, article.getContent());
			ps.setString(3, article.getText());
			ps.setDate(4, new Date(article.getUpdateDate().getTime()));
			ps.setInt(5, article.getId());

			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void deleteArticle(Article article) {
		try {
			String query = "DELETE FROM article WHERE id=?;";

			PreparedStatement ps = connection.prepareStatement(query);
			ps.setInt(1, article.getId());

			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}