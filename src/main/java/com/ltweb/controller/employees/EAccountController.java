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

import com.ltweb.model.ProductModel;
import com.ltweb.model.UserModel;
import com.ltweb.service.IUserService;
import com.ltweb.service.impl.UserService;

@WebServlet(urlPatterns = "/employees-account")
public class EAccountController extends HttpServlet{
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
        RequestDispatcher rd = request.getRequestDispatcher("/views/employees/account.jsp");
        rd.forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}
}
