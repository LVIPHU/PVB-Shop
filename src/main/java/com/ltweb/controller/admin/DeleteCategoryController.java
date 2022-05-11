package com.ltweb.controller.admin;

import com.ltweb.model.CatalogModel;
import com.ltweb.service.ICategoryService;
import com.ltweb.service.impl.CategoryService;
import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns ="/admin-category-delete")
public class DeleteCategoryController extends HttpServlet {
    @Inject
    ICategoryService categoryService = new CategoryService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String action=request.getParameter("action");
        String id = request.getParameter("id");
        CatalogModel category = categoryService.findById(Long.parseLong(id));
        if(action.equals("xoa") && category!=null){
        	categoryService.delete(category);
            response.sendRedirect(request.getContextPath() + "/admin-category?message=delete_category_success&alert=success");
        } else {response.sendRedirect(request.getContextPath() + "/admin-category?message=delete_category_notsuccess&alert=danger");}
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
