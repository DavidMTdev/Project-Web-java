package ynov.david.dao;

public class DAOFactory {
    private MySQLManager manager;
    private DAOUser daoUser;
    private DaoArticle daoArticle;

    public DAOFactory() {
        manager = MySQLManager.getInstance();
        daoUser = new DAOUserImpl(manager.getConnection());
        daoArticle = new DaoArticleImpl(manager.getConnection());

    }

    public DAOUser getDaoUser() {
        return daoUser;
    }

    public DaoArticle getDaoArticle() {
        return daoArticle;
    }
}
