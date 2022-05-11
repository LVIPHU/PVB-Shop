package com.ltweb.controller.admin;

import com.ltweb.Util.FormUtil;
import com.ltweb.model.ProductModel;
import com.ltweb.service.IProductService;
import com.ltweb.service.impl.ProductService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ResourceBundle;

@WebServlet(urlPatterns = "/admin-product-edit")
public class EditProductController extends HttpServlet {
	@Inject
	IProductService productService = new ProductService();
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String message = request.getParameter("message");
		String alert = request.getParameter("alert");
		if (message != null & alert != null) {
			request.setAttribute("message", resourceBundle.getString(message));
			request.setAttribute("alert", alert);
		}
		ProductModel productModel = FormUtil.toModel(ProductModel.class, request);
		if (productModel != null) {
			productModel = productService.findById(productModel.getId());
			request.setAttribute("product", productModel);
	        String array[] = productModel.getImage_link().split("/");
	        String linkAnh = array[array.length-1];
	        request.setAttribute("linkAnh", linkAnh);
		}
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/editproduct.jsp");
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductModel productModel = FormUtil.toModel(ProductModel.class, request);
		ProductModel product = productService.findById(productModel.getId());
		productModel.setDiscount(product.getDiscount());
		productModel.setImage_link(product.getImage_link());
		if (productModel != null) {
			productService.edit(productModel);
			response.sendRedirect(request.getContextPath() + "/admin-product?message=edit_product_success&alert=success");
		} else {response.sendRedirect(request.getContextPath() + "/admin-product-edit?message=edit_product_notsuccess&alert=danger");}
	}
}
