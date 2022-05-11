package com.ltweb.mapper;

import com.ltweb.model.OrderModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OrderMapper implements RowMapper<OrderModel> {

    @Override
    public OrderModel mapRow(ResultSet resultSet) {
        OrderModel orderModel = new OrderModel();
        try {
            orderModel.setMaDH(resultSet.getInt("transaction_id"));
            orderModel.setMaSP(resultSet.getInt("product_id"));
            orderModel.setSoluong(resultSet.getInt("qty"));
            orderModel.setGia(resultSet.getInt("amount"));
            orderModel.setDate(resultSet.getDate("date"));
            orderModel.setTrangthai(resultSet.getString("status"));
            orderModel.setImg(resultSet.getString("img"));
//            if(resultSet.getString("name")!=null) {
//            	orderModel.setTenSP(resultSet.getString("name"));
//            }
            return orderModel;
        } catch (SQLException e) {
            return null;
        }
    }

}