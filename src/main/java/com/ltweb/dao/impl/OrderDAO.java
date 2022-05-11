
package com.ltweb.dao.impl;

import com.ltweb.dao.IOrderDAO;
import com.ltweb.mapper.OrderMapper;
import com.ltweb.model.OrderModel;

import java.util.List;

public class OrderDAO extends AbstractDAO<OrderDAO> implements IOrderDAO {

	@Override
	public List<OrderModel> findAll() {
		String sql="SELECT * FROM `order`";
        return query(sql, new OrderMapper());
	}

    @Override
    public List<OrderModel> findById(long maDH) {
        String sql = "SELECT * FROM `order` WHERE transaction_id=?";
        return query(sql, new OrderMapper(), maDH);
    }
    
    @Override
    public OrderModel findBy2Id (long maDH, long maSP){
        String sql = "SELECT * FROM `order` WHERE `order`.`transaction_id`=? AND `order`.`product_id`=?";
        return query(sql, new OrderMapper(), maDH, maSP).isEmpty() ? null : query(sql, new OrderMapper(), maDH, maSP).get(0);
    }
    
    @Override
    public void add(OrderModel orderModel) {
        String sql = "INSERT INTO `order` VALUES (?,?,?,?,?,?,?)";
        update(sql, orderModel.getMaDH(), orderModel.getMaSP(), orderModel.getSoluong(), orderModel.getGia(), orderModel.getDate().toString(), orderModel.getTrangthai(), orderModel.getImg());
    }

    @Override
    public void edit(OrderModel orderModel) {
    	String sql = "UPDATE `order` SET `product_id`=?, `qty`=?, `amount`=?, `date`=?, `status`=?, `img`=? WHERE `order`.`transaction_id` = ? AND `order`.`product_id` = ?;";
    	update(sql,  orderModel.getMaSP(), orderModel.getSoluong(), orderModel.getGia(), orderModel.getDate(), orderModel.getTrangthai(), orderModel.getImg(), orderModel.getMaDH(), orderModel.getMaSP());
    }

    @Override
    public void delete(OrderModel orderModel) {
    	String sql = "DELETE FROM `order` WHERE `order`.`transaction_id`=? AND `order`.`product_id`=?";
    	 update(sql, orderModel.getMaDH(), orderModel.getMaSP());
    }

	@Override
	public List<OrderModel> findByUserId(int userID) {
		String sql = "SELECT `order`.transaction_id, `order`.product_id, `order`.qty, `order`.amount, `order`.date, `order`.status, `order`.img, `product`.`name` FROM `order`, `transaction`, `product` WHERE `transaction`.`user_id`=? AND `product`.`id`=`order`.`product_id` AND `order`.`transaction_id`=`transaction`.`id`;";
		return query(sql, new OrderMapper(), userID);
	}
}
