package com.ltweb.controller.web;

import com.ltweb.Util.SessionUtil;
import com.ltweb.model.OrderModel;
import com.ltweb.model.ProductModel;
import com.ltweb.model.UserModel;
import com.ltweb.service.IProductService;
import com.ltweb.service.impl.OrderService;
import com.ltweb.service.impl.ProductService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

@WebServlet(name = "EAccountController", urlPatterns = "/tai-khoan")
public class AccountController extends HttpServlet {
	@Inject
	IProductService productService =new ProductService();
    OrderService orderService=new OrderService();

    OrderModel orderModel=new OrderModel();
    UserModel userModel=new UserModel();
    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String message = request.getParameter("message");
        String alert = request.getParameter("alert");
        if (message != null & alert != null) {
            request.setAttribute("message", resourceBundle.getString(message));
            request.setAttribute("alert", alert);
        }
    	userModel = (UserModel) SessionUtil.getInstance().getValue(request, "user");
    	List<ProductModel> product = new ArrayList<>();
    	product.add(null);
        if (userModel == null) {
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/login.jsp");
            rd.forward(request, response);
        } else {
            orderModel.setList(orderService.findByUserId(userModel.getId()));
            for (OrderModel order : orderModel.getList()) {
				product.add(productService.findById(order.getMaSP()));
			}
            request.setAttribute("order",orderModel);
            request.setAttribute("product", product);
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/account.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGet(request, response);
    }
}
