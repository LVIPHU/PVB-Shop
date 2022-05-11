package com.ltweb.mapper;

import com.ltweb.model.TransactionModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class TransactionMapper implements RowMapper<TransactionModel> {
    @Override
    public TransactionModel mapRow(ResultSet resultSet) {
        TransactionModel transactionModel = new TransactionModel();
        try {
            transactionModel.setId(resultSet.getLong("id"));
            transactionModel.setStatus(resultSet.getInt("status"));
            transactionModel.setUser_id(resultSet.getLong("user_id"));
            transactionModel.setUser_name(resultSet.getString("user_name"));
            transactionModel.setUser_email(resultSet.getString("user_email"));
            transactionModel.setUser_phone(resultSet.getString("user_phone"));
            transactionModel.setUser_address(resultSet.getString("user_address"));
            transactionModel.setAmount(resultSet.getLong("amount"));
            transactionModel.setShipping_date(resultSet.getString("shipping_date"));
            transactionModel.setDelivery_date(resultSet.getString("delivery_date"));
            transactionModel.setPayment(resultSet.getString("payment"));
            transactionModel.setMessage(resultSet.getString("message"));
            return transactionModel;

        } catch (SQLException e) {
            return null;
        }
    }
}