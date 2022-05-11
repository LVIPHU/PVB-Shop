package com.ltweb.dao;

import java.util.List;

import com.ltweb.model.UserModel;
public interface IUserDAO extends DAO<UserModel> {
	List<UserModel> findAll();
	
    UserModel findOneByUserNameAndPassword(String username, String password);

    UserModel findByUserName(String username);

    UserModel findByEmail(String email);

    UserModel findById(int id);
    
    void add(UserModel userModel);
    
    void edit(UserModel userModel);
    
    void delete(UserModel userModel);
}
