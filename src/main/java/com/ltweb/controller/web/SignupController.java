package com.ltweb.controller.web;

import com.ltweb.Util.FormUtil;
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

@WebServlet(name = "Sign_up", urlPatterns = "/dang-ki")
public class SignupController extends HttpServlet {
    @Inject
    IUserService userService = new UserService();
    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
    @Inject
    ICartService cartService = new CartService();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String alert = request.getParameter("alert");
        String message = request.getParameter("message");
        if(alert!=null&message!=null){
            request.setAttribute("alert",alert);
            request.setAttribute("message",resourceBundle.getString(message));
        }
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/sign-up.jsp");
        rd.forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserModel userModel = FormUtil.toModel(UserModel.class,request);
        userModel.setRole(1);
        System.out.println(userModel);
        if(userService.checkRes(userModel).equals("1")){
            userService.add(userModel);
            CartModel cartModel = new CartModel();
            cartModel.setList(cartService.findAll((int) userModel.getId()));
            SessionUtil.getInstance().putValue(request, "user", userModel);
            SessionUtil.getInstance().putValue(request, "cart", cartModel);
            response.sendRedirect(request.getContextPath()+"/trang-chu");
        }else{
            response.sendRedirect(request.getContextPath()+"/dang-ki?message="+userService.checkRes(userModel)+"&alert=danger");
        }
    }
}
