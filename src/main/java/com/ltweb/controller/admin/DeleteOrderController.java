package com.ltweb.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ltweb.model.TransactionModel;
import com.ltweb.service.ITransactionService;
import com.ltweb.service.impl.TransactionService;

@WebServlet(name = "EDeleteOrderController", urlPatterns = "/admin-order-delete")
public class DeleteOrderController extends HttpServlet {
	@Inject
	ITransactionService transactionService = new TransactionService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String action = request.getParameter("action");
		String id = request.getParameter("id");
		TransactionModel transaction = transactionService.findById(Long.parseLong(id));
		if (action.equals("xoa") && transaction != null) {
			transactionService.delete(transaction);
			response.sendRedirect(request.getContextPath() + "/admin-order?message=delete_order_success&alert=success");
		} else {
			response.sendRedirect(request.getContextPath() + "/admin-order?message=delete_order_notsuccess&alert=danger");
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}
