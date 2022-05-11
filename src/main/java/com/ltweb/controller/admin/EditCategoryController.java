package com.ltweb.controller.admin;

import com.ltweb.Util.FormUtil;
import com.ltweb.model.CatalogModel;
import com.ltweb.service.ICategoryService;
import com.ltweb.service.impl.CategoryService;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/admin-category-edit")
public class EditCategoryController extends HttpServlet {
	@Inject
	ICategoryService categoryService = new CategoryService();
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String message = request.getParameter("message");
		String alert = request.getParameter("alert");
		if (message != null & alert != null) {
			request.setAttribute("message", resourceBundle.getString(message));
			request.setAttribute("alert", alert);
		}
		CatalogModel catalogModel = FormUtil.toModel(CatalogModel.class, request);
		if (catalogModel != null) {
			catalogModel = categoryService.findById(catalogModel.getId());
			request.setAttribute("category", catalogModel);
		}
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/editcategory.jsp");
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("pvb");
		System.out.println(name);
		CatalogModel catalogModel = FormUtil.toModel(CatalogModel.class, request);
		System.out.println(catalogModel);
		CatalogModel Category = categoryService.findById(catalogModel.getId());
		System.out.println(Category);
		catalogModel.setParent_id(Category.getParent_id());
		catalogModel.setName(name);
		System.out.println(catalogModel);
		if (catalogModel != null) {
			categoryService.update(catalogModel);
			response.sendRedirect(request.getContextPath() + "/admin-category?message=edit_category_success&alert=success");
		} else {response.sendRedirect(request.getContextPath() + "/admin-category-edit?message=edit_category_notsuccess&alert=danger");}
	}
}
