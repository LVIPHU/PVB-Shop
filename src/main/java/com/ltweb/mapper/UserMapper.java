package com.ltweb.mapper;

import com.ltweb.model.UserModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements RowMapper<UserModel> {
    @Override
    public UserModel mapRow(ResultSet resultSet) {
        UserModel userModel = new UserModel();
        try {
            userModel.setId(resultSet.getInt("id"));
            userModel.setName(resultSet.getString("name"));
            userModel.setEmail(resultSet.getString("email"));
            userModel.setPhone(resultSet.getString("phone"));
            userModel.setAddress(resultSet.getString("address"));
            userModel.setUsername(resultSet.getString("username"));
            userModel.setPassword(resultSet.getString("password"));
            userModel.setRole(resultSet.getInt("role"));
            userModel.setToken(resultSet.getString("token"));
            return  userModel;

        } catch (SQLException e) {
            return null;
        }

    }
}
