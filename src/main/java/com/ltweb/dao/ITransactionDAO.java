package com.ltweb.dao;

import com.ltweb.model.TransactionModel;

import java.util.List;

public interface ITransactionDAO extends DAO<TransactionModel> {
	List<TransactionModel> findAll();
	
    List<TransactionModel> findByUserId(long user_id);
    
    List<TransactionModel> findByEmail(String user_email);
    
    TransactionModel findById(long id);
    
    void add(TransactionModel transactionModel);
    
    void edit(TransactionModel transactionModel);
    
    void delete(TransactionModel transactionModel);
    
    TransactionModel findTransIDByUserID(int user_id);
}
