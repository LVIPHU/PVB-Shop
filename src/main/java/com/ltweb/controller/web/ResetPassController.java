package com.ltweb.controller.web;

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

import com.ltweb.model.UserModel;
import com.ltweb.service.IUserService;
import com.ltweb.service.impl.UserService;

@WebServlet(urlPatterns = "/lam-moi-mat-khau")
public class ResetPassController extends HttpServlet{
	@Inject
    IUserService userService = new UserService();
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
	
	String recoveryString = "";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		recoveryString = request.getParameter("user_id");
		String message = request.getParameter("message");
        String alert = request.getParameter("alert");
        if (message != null & alert != null) {
            request.setAttribute("message", resourceBundle.getString(message));
            request.setAttribute("alert", alert);
        }
		
		String[] array = recoveryString.split("_");
		String user_id = array[0];
		String token = array[1];
		UserModel userModel = userService.findById(Integer.parseInt(user_id));
		if(userModel == null) {
			RequestDispatcher rd= request.getRequestDispatcher("views/404.jsp");
	        rd.forward(request,response);
	        return;
		}
		if(userModel.getToken() == null) {
			RequestDispatcher rd= request.getRequestDispatcher("views/404.jsp");
	        rd.forward(request,response);
	        return;
		}
		if(userModel.getToken().compareTo(token)==0) {
			request.setAttribute("recovery", recoveryString);
			RequestDispatcher rd= request.getRequestDispatcher("views/web/reset_password.jsp");
	        rd.forward(request,response);
	        return;
		}
		RequestDispatcher rd= request.getRequestDispatcher("views/404.jsp");
        rd.forward(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		recoveryString = request.getParameter("user_id");
		
		if(password.compareTo(repassword)!=0) {
			response.sendRedirect(request.getContextPath()+"/lam-moi-mat-khau?user_id="+recoveryString + "&message=wrong_re_password&alert=danger");
			return;
		}
		
		String array[] = recoveryString.split("_");
		if(array.length != 2) {
			response.sendRedirect(request.getContextPath()+"/views/404.jsp");
			return;
		}
		
		String user_id = array[0];
		String token = array[1];
		UserModel userModel = userService.findById(Integer.parseInt(user_id));
		
		if(userModel == null) {
			response.sendRedirect(request.getContextPath()+"/views/404.jsp");
			return;
		}else if(userModel.getToken() == null) {
			response.sendRedirect(request.getContextPath()+"/views/404.jsp");
			return;
		}
		
		if(userModel.getToken().compareTo(token) == 0) {
			userModel.setPassword(BCrypt.hashpw(password, BCrypt.gensalt(12)));
			userModel.setToken("NULL");
			userService.update(userModel);
			response.sendRedirect(request.getContextPath()+"/dang-nhap?message=change_password_success&alert=success");
			return;
		}
		response.sendRedirect(request.getContextPath()+"/views/404.jsp");
	}
}
