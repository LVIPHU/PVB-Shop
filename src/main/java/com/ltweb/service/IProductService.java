package com.ltweb.service;

import com.ltweb.model.ProductModel;

import java.util.List;

public interface IProductService {
    List<ProductModel> findAllByCatalogId(long catalog,Integer offset,Integer limit);
    
    List<ProductModel> findAll(Integer offset,Integer limit);
    
    List<ProductModel> findAllBySearch(String key);
    
    List<ProductModel> findAll();
    
    List<ProductModel> findSameProduct(long catalog, long id);
    
    ProductModel findById(long id);
    
    void add(ProductModel productModel);
    
    void edit(ProductModel productModel);
    
    void delete(ProductModel productModel);
}

