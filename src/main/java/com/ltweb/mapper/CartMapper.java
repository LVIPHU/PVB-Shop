package com.ltweb.mapper;


import com.ltweb.model.CartModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CartMapper implements RowMapper<CartModel> {
    @Override
    public CartModel mapRow(ResultSet resultSet) {
        CartModel cartModel = new CartModel();
        try {
            cartModel.setUser_id(resultSet.getInt("user_id"));
            cartModel.setProduct_id(resultSet.getInt("product_id"));
            cartModel.setTen(resultSet.getString("ten"));
            cartModel.setGiatien(resultSet.getLong("giatien"));
            cartModel.setAnh(resultSet.getString("anh"));
            return cartModel;
        } catch (SQLException e) {
            return null;
        }
    }
}
