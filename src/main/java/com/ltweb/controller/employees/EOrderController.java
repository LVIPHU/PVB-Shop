package com.ltweb.controller.employees;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ltweb.model.OrderModel;
import com.ltweb.model.ProductModel;
import com.ltweb.model.TransactionModel;
import com.ltweb.service.IOrderService;
import com.ltweb.service.IProductService;
import com.ltweb.service.ITransactionService;
import com.ltweb.service.impl.OrderService;
import com.ltweb.service.impl.ProductService;
import com.ltweb.service.impl.TransactionService;

@WebServlet(urlPatterns = "/employees-order")
public class EOrderController extends HttpServlet {
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
        RequestDispatcher rd = request.getRequestDispatcher("/views/employees/order.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}
}
