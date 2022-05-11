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

import com.ltweb.Util.FormUtil;
import com.ltweb.model.UserModel;
import com.ltweb.service.IUserService;
import com.ltweb.service.impl.UserService;

@WebServlet(urlPatterns = "/employees-account-edit")
public class EEditAccountController extends HttpServlet{
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
        UserModel userModel = FormUtil.toModel(UserModel.class, request);
		if (userModel != null) {
			userModel = userService.findById(userModel.getId());
			request.setAttribute("user",userModel);
		}
        RequestDispatcher rd = request.getRequestDispatcher("/views/employees/editaccount.jsp");
        rd.forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	UserModel userModel = FormUtil.toModel(UserModel.class, request);
    	UserModel user = userService.findByEmail(userModel.getEmail());
    	userModel.setId(user.getId());
    	userModel.setPassword(user.getPassword());
        if(userModel != null){
        	userService.update(userModel);
            response.sendRedirect(request.getContextPath() + "/employees-account?message=edit_account_success&alert=success");
        }
        response.sendRedirect(request.getContextPath() + "/employees-account-edit?message=edit_account_notsuccess&alert=danger");
    }
}
