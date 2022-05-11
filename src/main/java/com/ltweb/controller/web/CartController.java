package com.ltweb.controller.web;

import com.ltweb.model.CartModel;
import com.ltweb.model.UserModel;
import com.ltweb.service.ICartService;
import com.ltweb.service.impl.CartService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns= "/gio-hang")
public class CartController extends HttpServlet {
    ICartService cartService=new CartService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session= request.getSession();
        UserModel userModel= (UserModel) session.getAttribute("user");
        CartModel  cartModel=new CartModel();
        if(userModel!=null){
	        cartModel.setList(cartService.findAll((int) userModel.getId()));
	        if(cartModel.getList().isEmpty()) {
	        	RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
	            rd.forward(request, response);
	        }
	        request.setAttribute("cart",cartModel);
	        RequestDispatcher rd = request.getRequestDispatcher("/views/web/shopingcart.jsp");
	        rd.forward(request, response);}
        else{
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
