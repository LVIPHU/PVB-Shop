package com.ltweb.service.impl;

import com.ltweb.dao.IProductDAO;
import com.ltweb.dao.impl.ProductDAO;
import com.ltweb.model.ProductModel;
import com.ltweb.service.IProductService;

import javax.inject.Inject;
import java.util.List;

public class ProductService implements IProductService {
    @Inject
    IProductDAO productDAO = new ProductDAO();
    @Override
    public List<ProductModel> findAllByCatalogId(long catalog,Integer offset,Integer limit) {
        return productDAO.findAllByCatalogId(catalog,offset, limit);
    }
    @Override
    public List<ProductModel> findAll(Integer offset,Integer limit) {
        return productDAO.findAll(offset,limit);
    }
    @Override
    public List<ProductModel> findAllBySearch(String key) {
        return productDAO.findAllBySearch(key);
    }
    @Override
    public List<ProductModel> findAll() {
        return productDAO.findAll();
    }
    @Override
    public void add(ProductModel productModel) {
        productDAO.add(productModel);
    }

    @Override
    public ProductModel findById(long id) {
        return productDAO.findById(id);
    }

    @Override
    public void edit(ProductModel productModel) {
        productDAO.edit(productModel);
    }

    @Override
    public void delete(ProductModel productModel) {
        productDAO.delete(productModel);
    }
	@Override
	public List<ProductModel> findSameProduct(long catalog, long id) {
		return productDAO.findSameProduct(catalog, id);
	}

}
