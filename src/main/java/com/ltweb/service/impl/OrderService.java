package com.ltweb.service.impl;

import com.ltweb.dao.IOrderDAO;
import com.ltweb.dao.impl.OrderDAO;
import com.ltweb.model.OrderModel;
import com.ltweb.service.IOrderService;

import java.util.List;
import javax.inject.Inject;

public class OrderService implements IOrderService {
	@Inject
    IOrderDAO orderDAO=new OrderDAO();
    
	@Override
	public List<OrderModel> findAll() {
		return orderDAO.findAll();
	}

    @Override
    public List<OrderModel> findById(long maDH) {
        return orderDAO.findById(maDH);
    }
    
	@Override
	public OrderModel findBy2Id(long maDH, long maSP) {
		return orderDAO.findBy2Id(maDH, maSP);
	}

	@Override
	public void add(OrderModel orderModel) {
		orderDAO.add(orderModel);
	}

	@Override
	public void update(OrderModel orderModel) {
		orderDAO.edit(orderModel);
	}

	@Override
	public void delete(OrderModel orderModel) {
		orderDAO.delete(orderModel);
	}

	@Override
	public List<OrderModel> findByUserId(int userID) {
		return orderDAO.findByUserId(userID);
	}
}
