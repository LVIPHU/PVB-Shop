package com.ltweb.dao.impl;

import com.ltweb.dao.IProductDAO;
import com.ltweb.mapper.ProductMapper;
import com.ltweb.model.ProductModel;

import java.util.List;

public class ProductDAO extends AbstractDAO<ProductModel> implements IProductDAO {

    @Override
    public void add(ProductModel productModel) {
        String sql = "INSERT INTO `product`(`catalog_id`, `name`, `price`, `qty`, `content`, `discount`, `image_link`) VALUES (?,?,?,?,?,?,?)";
        update(sql, productModel.getCatalog_id(), productModel.getName(), productModel.getPrice(), productModel.getQty(), productModel.getContent(), productModel.getDiscount(), productModel.getImage_link());
    }

    @Override
    public ProductModel findById(long id) {
        String sql= "SELECT * FROM `product` WHERE id = ?";
        return query(sql,new ProductMapper(),id).isEmpty()? null:query(sql,new ProductMapper(),id).get(0);
    }

    @Override
    public void edit(ProductModel productModel) {
        String sql="UPDATE product SET catalog_id=?,name=?,price=?,qty=?,content=?,discount=?,image_link=? WHERE id= ?";
        update(sql,productModel.getCatalog_id(),productModel.getName(),productModel.getPrice(),productModel.getQty(),productModel.getContent(),productModel.getDiscount(),productModel.getImage_link(),productModel.getId());
    }

    @Override
    public void delete(ProductModel productModel) {
        String sql="DELETE FROM product WHERE id=?";
        update(sql,productModel.getId());
    }

    @Override
    public List<ProductModel> findAllByCatalogId(long catalog,Integer offset,Integer limit) {
    	if(limit > 0 ) {
    		String sql="SELECT * FROM product WHERE catalog_id=? LIMIT ?,?";
    		return query(sql,new ProductMapper(),catalog,offset,limit);
    	}else {
    		String sql="SELECT * FROM product WHERE catalog_id=?";
    		return query(sql,new ProductMapper(),catalog);
    	}
    }

    @Override
    public List<ProductModel> findAll(Integer offset,Integer limit) {
        String sql="SELECT * FROM product LIMIT ?,?";
        return query(sql,new ProductMapper(),offset,limit);
    }

    @Override
    public List<ProductModel> findAll() {
        String sql="SELECT * FROM product ORDER BY catalog_id ASC ";
        return query(sql,new ProductMapper());
    }

    @Override
    public List<ProductModel> findAllBySearch(String key) {
        String sql="SELECT * FROM product WHERE name LIKE '%"+key+"%'";
        return query(sql,new ProductMapper());
    }

	@Override
	public List<ProductModel> findSameProduct(long catalog, long id) {
		String sql="SELECT * FROM product WHERE catalog_id=" +catalog+" EXCEPT (SELECT * FROM product WHERE catalog_id ="+catalog+" and id ="+id+") LIMIT 4";
		return query(sql, new ProductMapper());
	}

}