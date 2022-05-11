package com.ltweb.dao.impl;

import com.ltweb.dao.ITransactionDAO;
import com.ltweb.mapper.TransactionMapper;
import com.ltweb.model.TransactionModel;

import java.util.List;

public class TransactionDAO extends AbstractDAO<TransactionModel> implements ITransactionDAO {
	@Override
	public List<TransactionModel> findAll() {
        String sql = "SELECT * FROM transaction";
        return query(sql, new TransactionMapper());
    }
	
	@Override
	public TransactionModel findById(long id) {
        String sql = "SELECT * FROM transaction WHERE id=?";
        return query(sql,new TransactionMapper(),id).isEmpty()? null:query(sql,new TransactionMapper(),id).get(0);
    }

    @Override
    public List<TransactionModel> findByUserId(long user_id) {
        String sql = "SELECT * FROM transaction WHERE user_id=?";
        return query(sql, new TransactionMapper(), user_id);
    }
    
    @Override
	public List<TransactionModel> findByEmail(String user_email) {
        String sql = "SELECT * FROM transaction WHERE user_email=?";
        return query(sql, new TransactionMapper(), user_email);
    }

    @Override
    public void add(TransactionModel transactionModel) {
        String sql = "INSERT INTO `transaction` (`status`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `amount`, `shipping_date`, `delivery_date`, `payment`, `message`) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        update(sql, transactionModel.getStatus(), transactionModel.getUser_id(), transactionModel.getUser_name(), transactionModel.getUser_email(), transactionModel.getUser_phone(), transactionModel.getUser_address(), transactionModel.getAmount(), transactionModel.getShipping_date(), transactionModel.getDelivery_date(), transactionModel.getPayment(), transactionModel.getMessage());
    }

    @Override
    public void edit(TransactionModel transactionModel) {
    	String sql = "UPDATE `transaction` SET status=?,delivery_date=? WHERE id=?";
    	update(sql, transactionModel.getStatus(), transactionModel.getDelivery_date(), transactionModel.getId());
    }

    @Override
    public void delete(TransactionModel transactionModel) {
    	String sql = " DELETE FROM `transaction` WHERE id=?";
    	update(sql, transactionModel.getId());
    }
    
    @Override
    public TransactionModel findTransIDByUserID(int user_id) {
    	String sql = "SELECT * FROM `transaction` WHERE user_id = ? ORDER BY id DESC LIMIT 1;";
    	return query(sql,new TransactionMapper(),user_id).isEmpty()? null:query(sql,new TransactionMapper(),user_id).get(0);
    }
}
