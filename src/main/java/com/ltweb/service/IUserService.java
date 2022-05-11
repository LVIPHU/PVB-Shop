package com.ltweb.service;

import java.util.List;

import com.ltweb.model.UserModel;

public interface IUserService {
	List<UserModel> findAll();
	
	UserModel findById(int id);
	
	UserModel findByEmail(String email);
	
    UserModel findOneByUserNameAndPassword(String username, String password);

    void add(UserModel userModel);
    
    void update(UserModel userModel);
    
    void delete(UserModel userModel);
    
	String checkRes(UserModel userModel);
}
