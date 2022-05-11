package com.ltweb.service;

import com.ltweb.model.OrderModel;

import java.util.List;

public interface IOrderService {
	List<OrderModel> findAll();
	
	List<OrderModel> findById(long maDH);
    
    OrderModel findBy2Id (long maDH, long maSP);
    
    void add(OrderModel orderModel);
    
    void update(OrderModel orderModel);
    
    void delete(OrderModel orderModel);
    
    List<OrderModel> findByUserId(int userID);
}
