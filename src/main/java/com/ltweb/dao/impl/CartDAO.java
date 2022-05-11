package com.ltweb.dao.impl;

import com.ltweb.dao.ICartDAO;
import com.ltweb.mapper.CartMapper;
import com.ltweb.model.CartModel;

import java.util.List;

public class CartDAO extends AbstractDAO<CartModel> implements ICartDAO {
    @Override
    public List<CartModel> findAll(int id) {
        String sql = "SELECT * FROM `cart` WHERE user_id=?";
        return query(sql, new CartMapper(), id);
    }

    @Override
    public CartModel findByProduct_Id(int user_id, int product_id) {
        String sql = "SELECT * FROM cart WHERE user_id=? AND product_id=?";
        if (!query(sql, new CartMapper(), user_id, product_id).isEmpty()) {
            return query(sql, new CartMapper(), user_id, product_id).get(0);
        }
        return null;
    }

    @Override
    public void delete(int user_id, int product_id) {
        String sql="DELETE FROM `cart` WHERE user_id=? and product_id=?";
        update(sql,user_id,product_id);
    }

    @Override
    public void add(CartModel cartModel) {
        String sql = "INSERT INTO `cart` VALUES (?,?,?,?,?)";
        update(sql, cartModel.getUser_id(), cartModel.getProduct_id(), cartModel.getTen(), cartModel.getGiatien(), cartModel.getAnh());
    }

    @Override
    public void edit(CartModel cartModel) {

    }

    @Override
    public void delete(CartModel cartModel) {
        String sql="DELETE FROM `cart` WHERE user_id=? and product_id=?";
        update(sql,cartModel.getUser_id(),cartModel.getProduct_id());
    }


    public List<CartModel> findAll() {
        String sql = "SELECT * FROM cart";
        List<CartModel> list = query(sql, new CartMapper());
        return list;
    }

	@Override
	public void deleteByUserID(int user_id) {
		String sql="DELETE FROM `cart` WHERE user_id=?";
		update(sql, user_id);
	}


}
