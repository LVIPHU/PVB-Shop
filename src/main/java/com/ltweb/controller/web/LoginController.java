package com.ltweb.controller.web;

import com.ltweb.Util.SessionUtil;
import com.ltweb.model.CartModel;
import com.ltweb.model.UserModel;
import com.ltweb.service.ICartService;
import com.ltweb.service.IUserService;
import com.ltweb.service.impl.CartService;
import com.ltweb.service.impl.UserService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ResourceBundle;

@WebServlet(name = "LoginController", urlPatterns = "/dang-nhap")
public class LoginController extends HttpServlet {
    @Inject
    IUserService userService = new UserService();
    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
    @Inject
    ICartService cartService = new CartService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String message = request.getParameter("message");
        String alert = request.getParameter("alert");
        if (message != null & alert != null) {
            request.setAttribute("message", resourceBundle.getString(message));
            request.setAttribute("alert", alert);
        }
        if (action != null) {
            SessionUtil.getInstance().removeValue(request, "user");
            SessionUtil.getInstance().removeValue(request, "cart");
        }
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/login.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserModel userModel = userService.findOneByUserNameAndPassword(username, password);

        if (userModel != null) {
        	if (userModel.isRole() == 3) {
                SessionUtil.getInstance().putValue(request, "user", userModel);
                response.sendRedirect(request.getContextPath() + "/admin-home");
            } else if (userModel.isRole() == 2) {
                SessionUtil.getInstance().putValue(request, "user", userModel);
                response.sendRedirect(request.getContextPath() + "/employees-home");
            } else if (userModel.isRole() == 1){
                CartModel cartModel = new CartModel();
                cartModel.setList(cartService.findAll((int) userModel.getId()));
                SessionUtil.getInstance().putValue(request, "user", userModel);
                SessionUtil.getInstance().putValue(request, "cart", cartModel);
                response.sendRedirect(request.getContextPath() + "/trang-chu");
            } else {
            	response.sendRedirect(request.getContextPath() + "/dang-nhap?message=user_is_block&alert=danger");
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/dang-nhap?message=wrong_user_or_password&alert=danger");
        }
    }
}
