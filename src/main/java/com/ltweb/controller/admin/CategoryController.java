package com.ltweb.controller.admin;

import com.ltweb.model.CatalogModel;
import com.ltweb.model.ProductModel;
import com.ltweb.service.ICategoryService;
import com.ltweb.service.IProductService;
import com.ltweb.service.impl.CategoryService;
import com.ltweb.service.impl.ProductService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;

import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

@WebServlet(urlPatterns = "/admin-category")
public class CategoryController extends HttpServlet {
    @Inject
    ICategoryService CategoryService = new CategoryService();
    IProductService productService =new ProductService();

    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int num = 0;
    	String message =request.getParameter("message");
        String alert = request.getParameter("alert");
        List<Integer> qty= new ArrayList<>();
        qty.add(0,0);
        if(message!=null&alert!=null){
            request.setAttribute("message",resourceBundle.getString(message));
            request.setAttribute("alert",alert);
        }
        
        CatalogModel catalogModel = new CatalogModel();
        catalogModel.setList(CategoryService.findAll());
        
        
        ProductModel productModel = new ProductModel();
        productModel.setList(productService.findAll());
        
        for (int i = 0; i < catalogModel.getList().size(); i++) {
        	for (int j = 0; j < productModel.getList().size(); j++) {
        		if (catalogModel.getList().get(i).getId() == productModel.getList().get(j).getCatalog_id()) {
        			num++;
        		}
        	}
        	qty.add(i+1, num);
    		num = 0;
        }
        
        request.setAttribute("category",catalogModel);
        request.setAttribute("qty",qty);
        
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/category.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}
    
}
