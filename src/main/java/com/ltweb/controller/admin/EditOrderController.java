package com.ltweb.controller.admin;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ltweb.Util.FormUtil;
import com.ltweb.model.TransactionModel;
import com.ltweb.service.ITransactionService;
import com.ltweb.service.impl.TransactionService;

@WebServlet(urlPatterns = "/admin-order-edit")
public class EditOrderController extends HttpServlet{
	@Inject
    ITransactionService transactionService = new TransactionService();
    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String alert = request.getParameter("alert");
        String message = request.getParameter("message");
        if(alert!=null&message!=null){
            request.setAttribute("alert",alert);
            request.setAttribute("message",resourceBundle.getString(message));
        }
        TransactionModel transactionModel = FormUtil.toModel(TransactionModel.class, request);
		if (transactionModel != null) {
			transactionModel = transactionService.findById(transactionModel.getId());
			request.setAttribute("transaction",transactionModel);
		}
		
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/editorder.jsp");
        rd.forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	TransactionModel transactionModel = FormUtil.toModel(TransactionModel.class, request);
    	System.out.println(transactionModel.toString());
    	TransactionModel transaction = transactionService.findById(transactionModel.getId());
    	transactionModel.setUser_id(transaction.getUser_id());
    	System.out.println(transactionModel.toString());
        if(transactionModel != null){
        	transactionService.update(transactionModel);
            response.sendRedirect(request.getContextPath() + "/admin-order?message=edit_account_success&alert=success");
        } else {response.sendRedirect(request.getContextPath() + "/admin-order-edit?message=edit_account_notsuccess&alert=danger");}
    }
}
