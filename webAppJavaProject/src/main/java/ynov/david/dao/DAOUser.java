package ynov.david.dao;

import java.util.List;

import ynov.david.model.User;

public interface DAOUser {

    public User getUser(int id);

    public List<User> getAllUsers();

//    public void addUser(User user);
//
//    public void updateUser(User user);
//
//    public void deleteUser(User user);

}
