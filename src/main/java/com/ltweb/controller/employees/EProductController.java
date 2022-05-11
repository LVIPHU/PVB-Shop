package com.ltweb.controller.employees;

import com.ltweb.Util.FormUtil;
import com.ltweb.model.ProductModel;
import com.ltweb.service.IProductService;
import com.ltweb.service.impl.ProductService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;

import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ResourceBundle;

@WebServlet(urlPatterns = "/employees-product")
public class EProductController extends HttpServlet {
    @Inject
    IProductService productService =new ProductService();

    ResourceBundle resourceBundle =ResourceBundle.getBundle("message");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message =request.getParameter("message");
        String alert =request.getParameter("alert");

        if(message!=null&alert!=null){
            request.setAttribute("message",resourceBundle.getString(message));
            request.setAttribute("alert",alert);
        }
        ProductModel productModel =new ProductModel();
        productModel.setList(productService.findAll());
        request.setAttribute("product",productModel);
        RequestDispatcher rd = request.getRequestDispatcher("/views/employees/product.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}
    
}
