package com.ltweb.controller.admin;

import com.ltweb.model.ProductModel;
import com.ltweb.service.IProductService;
import com.ltweb.service.impl.ProductService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns ="/admin-product-delete")
public class DeleteProductController extends HttpServlet {
    @Inject
    IProductService productService =new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String action=request.getParameter("action");
        String id = request.getParameter("id");
        ProductModel product = productService.findById(Long.parseLong(id));
        if(action.equals("xoa") && product!=null){
            productService.delete(product);
            response.sendRedirect(request.getContextPath() + "/admin-product?message=delete_product_success&alert=success");
        } else {response.sendRedirect(request.getContextPath() + "/admin-product?message=delete_product_notsuccess&alert=danger");}
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
