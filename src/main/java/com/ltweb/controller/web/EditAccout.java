package com.ltweb.controller.web;

import com.ltweb.Util.SessionUtil;
import com.ltweb.model.UserModel;
import com.ltweb.service.impl.UserService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/sua-thong-tin")
public class EditAccout extends HttpServlet {
    @Inject
    UserModel userModel = new UserModel();
    @Inject
    UserService userService = new UserService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        userModel = (UserModel) SessionUtil.getInstance().getValue(request, "user");
        userModel.setName(name);
        userModel.setPhone(phone);
        userModel.setAddress(address);

        userService.update(userModel);

        UserModel userModel1 = userService.findById(userModel.getId());

        request.setAttribute("user", userModel1);
        RequestDispatcher rd = request.getRequestDispatcher("/tai-khoan?message=edit_account_success&alert=success");
        rd.forward(request, response);

    }
}