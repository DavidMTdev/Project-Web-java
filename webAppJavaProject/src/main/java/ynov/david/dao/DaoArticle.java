package ynov.david.dao;

import java.util.List;

import ynov.david.model.Article;

public interface DaoArticle {

    public Article getArticle(int id);

    public List<Article> getAllArticle();
    
    public List<Article> getLastArticle();
    
    public List<Article> getAllArticleFromUser(String username);
    
    public void addArticle(Article article);

    public void updateArticle(Article article);

    public void deleteArticle(Article article);
}