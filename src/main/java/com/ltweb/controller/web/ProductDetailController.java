package com.ltweb.controller.web;

import com.ltweb.model.ProductModel;
import com.ltweb.service.IProductService;
import com.ltweb.service.impl.ProductService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/chi-tiet-san-pham")
public class ProductDetailController extends HttpServlet {
    @Inject
    IProductService productService = new ProductService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Integer masp=Integer.parseInt(id);
        ProductModel productModel = productService.findById(masp);
        request.setAttribute("productdetail", productModel);

        ProductModel productModel1 = new ProductModel();
        productModel1.setList(productService.findSameProduct(productModel.getCatalog_id(), masp));
        request.setAttribute("sptuongtu", productModel1);

        RequestDispatcher rd = request.getRequestDispatcher("/views/web/productdetail.jsp");
        rd.forward(request, response);
    }
}