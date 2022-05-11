package com.ltweb.service.impl;

import com.ltweb.dao.ITransactionDAO;
import com.ltweb.dao.impl.TransactionDAO;
import com.ltweb.model.TransactionModel;
import com.ltweb.service.ITransactionService;

import java.util.List;

public class TransactionService implements ITransactionService {
    ITransactionDAO transactionDAO= new TransactionDAO();
    
	@Override
	public List<TransactionModel> findAll() {
		return transactionDAO.findAll();
	}

	@Override
	public List<TransactionModel> findByEmail(String user_email) {
		return transactionDAO.findByEmail(user_email);
	}
	
	@Override
    public List<TransactionModel> findByUserId(long user_id) {
        return transactionDAO.findByUserId(user_id);
    }

	@Override
	public TransactionModel findById(long id) {
		return transactionDAO.findById(id);
	}

	@Override
	public void add(TransactionModel transactionModel) {
		transactionDAO.add(transactionModel);
	}

	@Override
	public void update(TransactionModel transactionModel) {
		transactionDAO.edit(transactionModel);
	}

	@Override
	public void delete(TransactionModel transactionModel) {
		transactionDAO.delete(transactionModel);
	}
	
	public TransactionModel findTransIDByUserID(int user_id) {
		return transactionDAO.findTransIDByUserID(user_id);
	}
}
