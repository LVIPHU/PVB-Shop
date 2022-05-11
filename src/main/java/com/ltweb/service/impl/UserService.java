package com.ltweb.service.impl;

import com.ltweb.dao.IUserDAO;
import com.ltweb.dao.impl.UserDAO;
import com.ltweb.model.UserModel;
import com.ltweb.service.IUserService;

import java.util.List;

import javax.inject.Inject;

import org.mindrot.jbcrypt.BCrypt;

public class UserService implements IUserService {

    @Inject
    IUserDAO userDAO =new UserDAO();
    
    @Override
    public List<UserModel> findAll() {
        return userDAO.findAll();
    }
    
    @Override
    public UserModel findById(int id) {
        return userDAO.findById(id);
    }
    
    @Override
	public UserModel findByEmail(String email) {
		return userDAO.findByEmail(email);
	}

    @Override
    public UserModel findOneByUserNameAndPassword(String username, String password) {
    	UserModel user = userDAO.findByUserName(username);
    	if(user!=null) {
    		if(BCrypt.checkpw(password, user.getPassword())) {
    			return user;
    		}
    	}
        return null;
    }

    @Override
    public void update(UserModel userModel) {
        userDAO.edit(userModel);
    }

    @Override
    public void add(UserModel userModel){
    	userModel.setPassword(BCrypt.hashpw(userModel.getPassword(), BCrypt.gensalt(12)));
        userDAO.add(userModel);
    }
    
    @Override
    public void delete(UserModel userModel) {
    	userDAO.delete(userModel);
    }
    
    @Override
    public String checkRes(UserModel userModel) {
        if(userDAO.findByUserName(userModel.getUsername())!=null){
            return "user_is_exist";
        }
        if(userDAO.findByEmail(userModel.getEmail())!=null){
            return "email_is_exist";
        }
        return "1";
    }
}
