package com.ltweb.mapper;

import com.ltweb.model.CatalogModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CatalogMapper implements RowMapper<CatalogModel>{

    @Override
    public CatalogModel mapRow(ResultSet resultSet) {
        CatalogModel catalogModelOrder =new CatalogModel();
        try {
            catalogModelOrder.setId(resultSet.getLong("id"));
            catalogModelOrder.setName(resultSet.getString("name"));
            catalogModelOrder.setParent_id(resultSet.getInt("parent_id"));
            return catalogModelOrder;

        } catch (SQLException e) {
            return null;
        }
    }
}
