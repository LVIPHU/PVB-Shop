package com.ltweb.dao.impl;

import com.ltweb.dao.ICatalogDAO;
import com.ltweb.mapper.CatalogMapper;
import com.ltweb.model.CatalogModel;

import java.util.List;

public class CatalogDAO extends AbstractDAO<CatalogModel> implements ICatalogDAO{
    @Override
    public void add(CatalogModel catalogModel) {
        String sql="INSERT INTO `catalog` ( `name`, `parent_id`) VALUES (?,?)";
        update(sql, catalogModel.getName(), catalogModel.getParent_id());
    }

    @Override
    public void edit(CatalogModel catalogModel) {
        String sql="UPDATE `catalog` SET name=?,parent_id=? WHERE id=?";
        update(sql, catalogModel.getName(), catalogModel.getParent_id(), catalogModel.getId());
    }

    @Override
    public void delete(CatalogModel catalogModel) {
        String sql ="DELETE FROM `catalog` WHERE id =? ";
        update(sql, catalogModel.getId());
    }

    @Override
    public List<CatalogModel> findAll() {
        String sql="SELECT * FROM `catalog` ORDER BY `id` ASC";
        return query(sql,new CatalogMapper());
    }

    @Override
    public CatalogModel findById(long id) {
        String sql="SELECT * FROM `catalog`  WHERE id =?";
        if(!query(sql,new CatalogMapper(),id).isEmpty()) return query(sql,new CatalogMapper(),id).get(0);
        return null;
    }

}
