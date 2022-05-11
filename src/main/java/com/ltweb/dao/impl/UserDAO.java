package com.ltweb.dao.impl;

import com.ltweb.dao.IUserDAO;
import com.ltweb.mapper.UserMapper;
import com.ltweb.model.UserModel;

import java.util.List;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {
    @Override
    public UserModel findOneByUserNameAndPassword(String username, String password) {
        String sql = "SELECT * FROM user WHERE username=? AND `password`=?";
        return query(sql, new UserMapper(), username, password).isEmpty() ? null : query(sql, new UserMapper(), username, password).get(0);
    }

    @Override
    public UserModel findByUserName(String username) {
        String sql="SELECT * FROM user WHERE username=?";
        return query(sql, new UserMapper(), username).isEmpty() ? null : query(sql, new UserMapper(), username).get(0);
    }

    @Override
    public UserModel findByEmail(String email) {
        String sql="SELECT * FROM user WHERE email=?";
        return query(sql, new UserMapper(), email).isEmpty() ? null : query(sql, new UserMapper(), email).get(0);
    }

    public List<UserModel> findAll() {
        String sql = "SELECT * FROM user ORDER BY role DESC";
        return query(sql, new UserMapper());
    }

    @Override
    public UserModel findById(int id) {
        String sql = "SELECT * FROM user WHERE id=?";
        if (!query(sql, new UserMapper(), id).isEmpty()) {
            return query(sql, new UserMapper(), id).get(0);
        }
        return null;
    }
    
    @Override
    public void add(UserModel userModel) {
        String sql = "INSERT INTO `user`(`name`, `email`, `phone`, `username`, `password`, `role`) VALUES (?,?,?,?,?,?)";
        update(sql, userModel.getName(), userModel.getEmail(), userModel.getPhone(), userModel.getUsername(), userModel.getPassword(), userModel.isRole());
    }

    @Override
    public void edit(UserModel userModel) {
        String sql = "UPDATE `user` SET username=?, name=?, password=?, phone=?, email=?, address=?, role=?, token=? WHERE id=?";
        update(sql, userModel.getUsername(), userModel.getName(), userModel.getPassword(), userModel.getPhone(), userModel.getEmail(), userModel.getAddress(), userModel.isRole(), userModel.getToken(), userModel.getId());
    }

    @Override
    public void delete(UserModel userModel) {
        String sql="DELETE FROM user WHERE id=?";
        update(sql,userModel.getId());
    }
}
