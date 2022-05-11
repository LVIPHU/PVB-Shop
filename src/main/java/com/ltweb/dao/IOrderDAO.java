package com.ltweb.dao;

import com.ltweb.model.OrderModel;

import java.util.List;

public interface IOrderDAO extends DAO<OrderModel>{
	List<OrderModel> findAll();
	
	List<OrderModel> findById(long maDH);
    
    OrderModel findBy2Id (long maDH, long maSP);
    
    void add(OrderModel orderModel);
    
    void edit(OrderModel orderModel);
    
    void delete(OrderModel orderModel);
    
    List<OrderModel> findByUserId(int userID);
}
