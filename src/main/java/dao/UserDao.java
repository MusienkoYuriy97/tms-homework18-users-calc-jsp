package dao;


import entity.User;
import exception.user.UserException;

import java.util.List;

public interface UserDao {
    List<User> getUsers() throws UserException;
    void saveUser(User user) throws UserException;
    boolean containsUsername(String username);
    boolean containsUsernameAndPassword(String username, String password);
    User findUserByUsername(String username) throws UserException;
    public void updatePassword(User user,String newPassword) throws UserException;
}
