package com.ltweb.controller.web;

import com.ltweb.Util.SessionUtil;
import com.ltweb.model.ProductModel;
import com.ltweb.service.impl.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ResourceBundle;


@WebServlet(urlPatterns = {"/trang-chu"})
public class HomeController extends HttpServlet {
    ProductService productService = new ProductService();
    ProductModel cpu = new ProductModel();
    ProductModel main = new ProductModel();
    ProductModel vga = new ProductModel();
    ProductModel ram = new ProductModel();
    ProductModel ssd = new ProductModel();
    ProductModel tainghe = new ProductModel();
    ProductModel banphim = new ProductModel();
    ProductModel chuot = new ProductModel();
    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String message = request.getParameter("message");
        String alert = request.getParameter("alert");
        if (message != null & alert != null) {
            request.setAttribute("message", resourceBundle.getString(message));
            request.setAttribute("alert", alert);
        }
        cpu.setList(productService.findAllByCatalogId(0, 1, 4));
        main.setList(productService.findAllByCatalogId(1, 1, 4));
        vga.setList(productService.findAllByCatalogId(2, 1, 4));
        ram.setList(productService.findAllByCatalogId(3, 1, 4));
        ssd.setList(productService.findAllByCatalogId(4, 1, 4));
        tainghe.setList(productService.findAllByCatalogId(5, 1, 4));
        banphim.setList(productService.findAllByCatalogId(6,1,4));
        chuot.setList(productService.findAllByCatalogId(7,1,4));

        SessionUtil.getInstance().putValue(request,"cpu",cpu);
        SessionUtil.getInstance().putValue(request,"main",main);
        SessionUtil.getInstance().putValue(request,"vga",vga);
        SessionUtil.getInstance().putValue(request,"ram",ram);
        SessionUtil.getInstance().putValue(request,"ssd",ssd);
        SessionUtil.getInstance().putValue(request,"tainghe",tainghe);
        SessionUtil.getInstance().putValue(request,"banphim",banphim);
        SessionUtil.getInstance().putValue(request,"chuot",chuot);


        RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
        rd.forward(request, response);
    }
}