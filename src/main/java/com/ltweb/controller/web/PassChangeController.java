package com.ltweb.controller.web;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

import com.ltweb.Util.SessionUtil;
import com.ltweb.model.UserModel;
import com.ltweb.service.impl.UserService;

import java.io.IOException;

@WebServlet(urlPatterns = "/doi-mat-khau")
public class PassChangeController extends HttpServlet {
	@Inject
    UserModel userModel = new UserModel();
    @Inject
    UserService userService = new UserService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String oldPass = request.getParameter("old_pass");
        String newPass = request.getParameter("new_pass");
        String rePass = request.getParameter("repass");
        userModel = (UserModel) SessionUtil.getInstance().getValue(request, "user");
        if(!BCrypt.checkpw(oldPass, userModel.getPassword())) {
        	response.sendRedirect(request.getContextPath()+"/tai-khoan?message=wrong_old_password&alert=danger");
        }else if(!newPass.equals(rePass)) {
        	response.sendRedirect(request.getContextPath()+"/tai-khoan?message=wrong_re_password&alert=danger");
        }else {
        	userModel.setPassword(BCrypt.hashpw(newPass, BCrypt.gensalt(12)));
        	userService.update(userModel);
            response.sendRedirect(request.getContextPath()+"/tai-khoan?message=change_password_success&alert=danger");
        }
    }
}