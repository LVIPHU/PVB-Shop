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

import com.ltweb.model.ProductModel;
import com.ltweb.model.UserModel;
import com.ltweb.service.IUserService;
import com.ltweb.service.impl.UserService;

@WebServlet(urlPatterns = "/admin-account")
public class AccountController extends HttpServlet{
	@Inject
    IUserService userService = new UserService();
    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String alert = request.getParameter("alert");
        String message = request.getParameter("message");
        if(alert!=null&message!=null){
            request.setAttribute("alert",alert);
            request.setAttribute("message",resourceBundle.getString(message));
        }
        UserModel userModel = new UserModel();
        userModel.setList(userService.findAll());
        request.setAttribute("user",userModel);
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/account.jsp");
        rd.forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        String id =request.getParameter("id");
        UserModel user = userService.findById(Integer.parseInt(id));
        if(action!=null&&user!=null){
        	userService.delete(user);
            response.sendRedirect(request.getContextPath() + "/admin-account?message=delete_account_success&alert=success");
        } else {response.sendRedirect(request.getContextPath() + "/admin-account?message=delete_account_notsuccess&alert=danger");}
    }
}
