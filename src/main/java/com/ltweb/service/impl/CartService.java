package com.ltweb.service.impl;

import com.ltweb.dao.ICartDAO;
import com.ltweb.dao.impl.CartDAO;
import com.ltweb.model.CartModel;
import com.ltweb.service.ICartService;

import javax.inject.Inject;
import java.util.List;

public class CartService implements ICartService {
    @Inject
    ICartDAO cartDAO = new CartDAO();

    @Override
    public List<CartModel> findAll(int id) {
        return cartDAO.findAll(id);
    }

    public CartModel findByProduct_Id(int user_id,int product_id) {
        return cartDAO.findByProduct_Id(user_id,product_id);
    }

    @Override
    public void add(CartModel cartModel) {
        cartDAO.add(cartModel);
    }

    @Override
    public void delete(int user_id, int product_id) {
        cartDAO.delete(user_id,product_id);
    }
    
    @Override
    public void deleteByUserID(int user_id) {
        cartDAO.deleteByUserID(user_id);
    }
}
