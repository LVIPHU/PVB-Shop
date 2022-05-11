package com.ltweb.controller.web;

import com.ltweb.Util.SessionUtil;
import com.ltweb.model.CartModel;
import com.ltweb.model.UserModel;
import com.ltweb.service.ICartService;
import com.ltweb.service.impl.CartService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/delete-cart")
public class DeleteCartController extends HttpServlet {
    @Inject
    ICartService cartService = new CartService();
    @Inject
    CartModel cartModel;
    UserModel userModel;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        userModel = (UserModel) SessionUtil.getInstance().getValue(request, "user");
        cartService.delete(userModel.getId(), Integer.parseInt(id));
        cartModel=new CartModel();
        cartModel.setList(cartService.findAll(userModel.getId()));
        SessionUtil.getInstance().putValue(request, "cart", cartModel);
        RequestDispatcher rd = request.getRequestDispatcher("views/web/shopingcart.jsp");
        rd.forward(request, response);
    }
}