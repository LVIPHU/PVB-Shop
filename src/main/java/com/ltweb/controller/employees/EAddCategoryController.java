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
import com.ltweb.model.CatalogModel;
import com.ltweb.model.UserModel;
import com.ltweb.service.ICategoryService;
import com.ltweb.service.IUserService;
import com.ltweb.service.impl.CategoryService;
import com.ltweb.service.impl.UserService;

@WebServlet(urlPatterns = "/employees-category-add")
public class EAddCategoryController extends HttpServlet{
	@Inject
    ICategoryService categoryService = new CategoryService();
    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String alert = request.getParameter("alert");
        String message = request.getParameter("message");
        if(alert!=null&message!=null){
            request.setAttribute("alert",alert);
            request.setAttribute("message",resourceBundle.getString(message));
        }
        RequestDispatcher rd = request.getRequestDispatcher("/views/employees/addcategory.jsp");
        rd.forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CatalogModel catalogModel = FormUtil.toModel(CatalogModel.class,request);
        if(catalogModel != null){
            categoryService.add(catalogModel);
            response.sendRedirect(request.getContextPath()+"/employees-category?message=add_category_success&alert=success");
        } else {response.sendRedirect(request.getContextPath()+"/employees-category-add?message=add_category_notsuccess&alert=danger");}
    }
}
