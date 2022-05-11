package com.ltweb.controller.web;

import com.ltweb.Util.SessionUtil;
import com.ltweb.model.CartModel;
import com.ltweb.model.ProductModel;
import com.ltweb.model.UserModel;
import com.ltweb.service.ICartService;
import com.ltweb.service.IProductService;
import com.ltweb.service.impl.CartService;
import com.ltweb.service.impl.ProductService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/add-cart")
public class AddCartController extends HttpServlet {
    @Inject
    IProductService productService = new ProductService();
    @Inject
    ICartService cartService = new CartService();
    CartModel cartModel;
    UserModel userModel;
    ProductModel productModel;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        userModel = (UserModel) SessionUtil.getInstance().getValue(request,"user");
        if (userModel != null) {
            cartModel = cartService.findByProduct_Id(Integer.parseInt(id), userModel.getId());
            if (cartModel == null) {
                cartModel =new CartModel();
                Integer masp = Integer.parseInt(id);
                productModel = productService.findById(masp);
                int user_id = userModel.getId();
                cartModel.setUser_id(user_id);
                cartModel.setProduct_id((int) productModel.getId());
                cartModel.setTen(productModel.getName());
                cartModel.setGiatien(productModel.getPrice());
                cartModel.setAnh(productModel.getImage_link());
                cartService.add(cartModel);
                cartModel.setList(cartService.findAll((int) userModel.getId()));
                SessionUtil.getInstance().putValue(request, "cart", cartModel);
                RequestDispatcher rd = request.getRequestDispatcher("/san-pham?page=0");
                rd.forward(request, response);
            }
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("/dang-nhap");
            rd.forward(request, response);
        }
    }
}