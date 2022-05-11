package com.ltweb.service;

import java.util.List;

import com.ltweb.model.CatalogModel;

public interface ICategoryService {
    List<CatalogModel> findAll();
    
    CatalogModel findById(long id);
    
    void add(CatalogModel catalogModel);
    
    void update(CatalogModel catalogModel);
    
    void delete(CatalogModel catalogModel);
}
