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

import org.mindrot.jbcrypt.BCrypt;

import com.ltweb.Util.FormUtil;
import com.ltweb.model.UserModel;
import com.ltweb.service.IUserService;
import com.ltweb.service.impl.UserService;

@WebServlet(name="EAccountPasswordController", urlPatterns = "/admin-account-password")
public class AccountPasswordController extends HttpServlet{
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
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/accountpassword.jsp");
        rd.forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = request.getParameter("username");
        String password = request.getParameter("password");
        String newPassword = request.getParameter("newpassword");
        String rePassword = request.getParameter("repassword");
        UserModel userModel = userService.findOneByUserNameAndPassword(username, password);
        if(userModel != null){
        	if(!newPassword.equals(rePassword)) {
        		response.sendRedirect(request.getContextPath() + "/admin-account-password?message=wrong_re_password&alert=danger");
        	}else {
	        	userModel.setPassword(BCrypt.hashpw(newPassword, BCrypt.gensalt(12)) );
	        	userService.update(userModel);
	        	response.sendRedirect(request.getContextPath() + "/admin-account?message=change_password_success&alert=success");
	        }
        } else {response.sendRedirect(request.getContextPath() + "/admin-account-password?message=wrong_old_password&alert=danger");}
    }
}
