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

import com.ltweb.model.TransactionModel;
import com.ltweb.service.ITransactionService;
import com.ltweb.service.impl.TransactionService;

@WebServlet(name = "EReturnController", urlPatterns = "/admin-return")
public class ReturnController extends HttpServlet {
	@Inject
    ITransactionService transactionService =new TransactionService();

    ResourceBundle resourceBundle =ResourceBundle.getBundle("message");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message =request.getParameter("message");
        String alert =request.getParameter("alert");
        
        if(message!=null&alert!=null){
            request.setAttribute("message",resourceBundle.getString(message));
            request.setAttribute("alert",alert);
        }
        TransactionModel transactionModel = new TransactionModel();
        transactionModel.setList(transactionService.findAll());
        request.setAttribute("transaction",transactionModel);
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/return.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}
}
