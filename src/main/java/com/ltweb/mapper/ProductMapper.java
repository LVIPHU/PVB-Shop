package com.ltweb.mapper;

import com.ltweb.model.ProductModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements  RowMapper<ProductModel> {
    @Override
    public ProductModel mapRow(ResultSet resultSet) {
        ProductModel productModel=new ProductModel();
        try {
            productModel.setId(resultSet.getInt("id"));
            productModel.setCatalog_id(resultSet.getInt("catalog_id"));
            productModel.setName(resultSet.getString("name"));
            productModel.setPrice(resultSet.getInt("price"));
            productModel.setQty(resultSet.getInt("qty"));
            productModel.setContent(resultSet.getString("content"));
            productModel.setDiscount(resultSet.getInt("discount"));
            productModel.setImage_link(resultSet.getString("image_link"));
            productModel.setDiscount(resultSet.getInt("discount"));
            return  productModel;
        } catch (SQLException e) {
            return null;
        }
    }
}
