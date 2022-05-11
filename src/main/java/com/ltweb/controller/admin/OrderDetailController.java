package com.ltweb.controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
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
import com.ltweb.service.IOrderService;
import com.ltweb.service.IProductService;
import com.ltweb.service.impl.OrderService;
import com.ltweb.service.impl.ProductService;

@WebServlet(urlPatterns = "/api-order-detail")
public class OrderDetailController extends HttpServlet {
	@Inject
	IOrderService orderService = new OrderService();
	IProductService productService =new ProductService();

	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String id = request.getParameter("id");
		List<ProductModel> product= new ArrayList<>();
		product.add(0, null);
		OrderModel orderModel = new OrderModel();
		if (id != null) {
			orderModel.setList(orderService.findById(Long.parseLong(id)));
			for (int i = 0; i < orderModel.getList().size(); i++) {
				orderModel.getList().get(i).getMaSP();
			}
			
		}else {orderModel.setList(orderService.findAll());}
		
		ProductModel productModel = new ProductModel();
	    productModel.setList(productService.findAll());
	    
	    for (int i = 0; i < orderModel.getList().size(); i++) {
        	for (int j = 0; j < productModel.getList().size(); j++) {
        		if (orderModel.getList().get(i).getMaSP() == productModel.getList().get(j).getId()) {
        			product.add(i+1, productModel.getList().get(j));
        		}
        	}
        }
	    request.setAttribute("order", orderModel);
	    request.setAttribute("product", product);
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/orderdetail.jsp");
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
	}
}
