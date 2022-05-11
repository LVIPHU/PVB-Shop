package com.ltweb.service;

import com.ltweb.model.CartModel;

import java.util.List;

public interface ICartService {
    List<CartModel> findAll(int id);
    
    CartModel findByProduct_Id(int user_id,int product_id);
    
    void add(CartModel cartModel);
    
    void delete(int user_id,int product_id);
    
    void deleteByUserID(int user_id);
}
