package com.ltweb.controller.web;

import com.ltweb.Util.FormUtil;
import com.ltweb.model.ProductModel;
import com.ltweb.service.IProductService;
import com.ltweb.service.impl.ProductService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;

import org.springframework.beans.support.PagedListHolder;
import org.springframework.web.bind.ServletRequestUtils;

import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet( urlPatterns = "/san-pham")
public class ProductController extends HttpServlet {
    @Inject
    IProductService productService =new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String key = request.getParameter("search");
        ProductModel productModel;
        if(key!=null){
            productModel =new ProductModel();
            productModel.setList(productService.findAllBySearch(key));
        }else {
            productModel = FormUtil.toModel(ProductModel.class, request);
            if(request.getParameter("catalog_id")!=null) {
            	productModel.setList(productService.findAllByCatalogId(productModel.getCatalog_id(),0,0));
                request.setAttribute("catalog_id", "?catalog_id="+productModel.getCatalog_id());
            }
            else {
                productModel.setList(productService.findAll());
            }
        }
        PagedListHolder pagedListHolder = new PagedListHolder(productModel.getList());
		int page = ServletRequestUtils.getIntParameter(request, "page", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(5);
		pagedListHolder.setPageSize(6);
		request.setAttribute("pagedListHolder", pagedListHolder);
		
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/product.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
