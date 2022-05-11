package com.ltweb.dao;

import com.ltweb.model.CatalogModel;

import java.util.List;

public interface ICatalogDAO extends DAO<CatalogModel> {

    List<CatalogModel> findAll();
    
    CatalogModel findById(long id);
    
    void add(CatalogModel catalogModelOrder);
    
    void edit(CatalogModel catalogModelOrder);
    
    void delete(CatalogModel catalogModelOrder);
}
