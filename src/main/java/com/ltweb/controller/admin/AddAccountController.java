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

import com.ltweb.Util.FormUtil;
import com.ltweb.model.UserModel;
import com.ltweb.service.IUserService;
import com.ltweb.service.impl.UserService;

@WebServlet(urlPatterns = "/admin-account-add")
public class AddAccountController extends HttpServlet{
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
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/addaccount.jsp");
        rd.forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserModel userModel = FormUtil.toModel(UserModel.class,request);
        if(userService.checkRes(userModel).equals("1")){
            userService.add(userModel);
            response.sendRedirect(request.getContextPath()+"/admin-account?message=add_account_success&alert=success");
        } else if (userService.checkRes(userModel).equals("0")) {
            response.sendRedirect(request.getContextPath()+"/admin-account-add?message="+userService.checkRes(userModel)+"&alert=danger");
        } else {response.sendRedirect(request.getContextPath()+"/admin-account-add?message=add_account_notsuccess&alert=danger");}
    }
}
