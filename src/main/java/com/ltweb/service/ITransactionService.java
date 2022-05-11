package com.ltweb.service;

import com.ltweb.model.TransactionModel;

import java.util.List;

public interface ITransactionService {
	List<TransactionModel> findAll();
	
    List<TransactionModel> findByUserId(long user_id);
    
    List<TransactionModel> findByEmail(String user_email);
    
    TransactionModel findById(long id);
    
    void add(TransactionModel transactionModel);
    
    void update(TransactionModel transactionModel);
    
    void delete(TransactionModel transactionModel);
    
    TransactionModel findTransIDByUserID(int user_id);
}
