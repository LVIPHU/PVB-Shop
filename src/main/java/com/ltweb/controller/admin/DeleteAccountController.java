package com.ltweb.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ltweb.model.UserModel;
import com.ltweb.service.IUserService;
import com.ltweb.service.impl.UserService;

@WebServlet(urlPatterns = "/admin-account-delete")
public class DeleteAccountController extends HttpServlet {

	@Inject
	IUserService userService = new UserService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String id = request.getParameter("id");
		UserModel user = userService.findById(Integer.parseInt(id));
		if (action != null && user != null) {
			userService.delete(user);
			response.sendRedirect(request.getContextPath() + "/admin-account?message=delete_account_success&alert=success");
		} else {response.sendRedirect(request.getContextPath() + "/admin-account?message=delete_account_notsuccess&alert=danger");}
	}

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
