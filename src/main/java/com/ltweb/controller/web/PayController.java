package com.ltweb.controller.web;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ltweb.model.CartModel;
import com.ltweb.model.OrderModel;
import com.ltweb.model.TransactionModel;
import com.ltweb.service.ICartService;
import com.ltweb.service.IOrderService;
import com.ltweb.service.ITransactionService;
import com.ltweb.service.impl.CartService;
import com.ltweb.service.impl.OrderService;
import com.ltweb.service.impl.TransactionService;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.List;
import java.util.ResourceBundle;

@WebServlet(urlPatterns = "/thanh-toan")
public class PayController extends HttpServlet {
	@Inject
    ITransactionService transactionService =new TransactionService();
    ResourceBundle resourceBundle =ResourceBundle.getBundle("message");
    ICartService cartService = new CartService();
    IOrderService orderService = new OrderService();
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("utf-8");
    	TransactionModel transactionModel = new TransactionModel();
        String hoTen = request.getParameter("firstname") + request.getParameter("lastname");
        String address = request.getParameter("address") + " " +
        		request.getParameter("ward") + " " +
        		request.getParameter("district") + " " +
        		request.getParameter("city");
        String dateString = LocalDate.now().toString();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(Date.valueOf(dateString));
        calendar.roll(Calendar.DATE, 3);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        int user_id= Integer.parseInt(request.getParameter("user_id"));
        
        transactionModel.setStatus(1);
        transactionModel.setUser_id(user_id);
        transactionModel.setUser_name(hoTen);
        transactionModel.setUser_email(request.getParameter("email"));
        transactionModel.setUser_phone(request.getParameter("phone"));
        transactionModel.setUser_address(address);
        transactionModel.setAmount(Long.parseLong(request.getParameter("amount")));
        transactionModel.setShipping_date(dateString);
        transactionModel.setDelivery_date(dateFormat.format(calendar.getTime()));
        transactionModel.setPayment("COD");
        transactionModel.setMessage(request.getParameter("message"));
        
        transactionService.add(transactionModel);
        List<CartModel> list = cartService.findAll(user_id);
        for (CartModel cart : list) {
			OrderModel order = new OrderModel();
			order.setMaDH((int)transactionService.findTransIDByUserID(user_id).getId());
			order.setMaSP(cart.getProduct_id());
			order.setSoluong(1);
			order.setGia(cart.getGiatien());
			order.setDate(Date.valueOf(dateString));
			order.setTrangthai("none");
			order.setImg(cart.getAnh());
			orderService.add(order);
			System.out.println("add thành công!");
		}
        new CartService().deleteByUserID(Integer.parseInt(request.getParameter("user_id")));
        response.sendRedirect(request.getContextPath()+"/trang-chu?message=transaction_success&alert=success");
        
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/checkout.jsp");
        rd.forward(request, response);
    }
}