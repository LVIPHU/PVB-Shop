package com.ltweb.controller.admin;

import com.ltweb.Util.FormUtil;
import com.ltweb.model.ProductModel;
import com.ltweb.service.IProductService;
import com.ltweb.service.impl.ProductService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.annotation.*;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.ResourceBundle;

@WebServlet(urlPatterns = "/admin-product-add")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 50, // 50MB
maxRequestSize = 1024 * 1024 * 50) // 50MB

public class AddProductController extends HttpServlet {
	@Autowired
	ServletContext context;
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
        RequestDispatcher rd =request.getRequestDispatcher("/views/admin/addproduct.jsp");
        rd.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	ProductModel productModel = FormUtil.toModel(ProductModel.class,request);
//    	for (Part part : request.getParts()) {
//    	      String fileName = extractFileName(part);
//    	      // refines the fileName in case it is an absolute path
//    	      fileName = new File(fileName).getName();
//    	      part.write(this.getFolderUpload().getAbsolutePath() + File.separator + fileName);
//    	      System.out.println(this.getFolderUpload().getAbsolutePath() + File.separator + fileName);
//    	    }
    	
    	Part part = request.getPart("image_link");
    	String fileName = part.getSubmittedFileName();
    	String path = getServletContext().getRealPath("/templates/web/images/sanpham" + File.separator+fileName);
    	InputStream is = part.getInputStream();
    	
    	boolean success= uploadFile(is, path);
    	if(success) {
    		String temp[] = path.split("\\\\");
    		String tempp="";
    		int i=0;
    		for(i=0; i<temp.length;i++) {
    			if(temp[i].equals("templates")) {
    				tempp=temp[i];
    				for(int j=i+1 ;j<temp.length;j++) {
    					tempp+= "/" + temp[j];
    				}
    			}
    		}
    		System.out.println(tempp);
    		productModel.setImage_link(tempp);
    		part.write(path);
    	}else {
    		System.out.println("error");
    	}
    	
    	if(productModel!=null){
            productService.add(productModel);
            response.sendRedirect(request.getContextPath()+"/admin-product?message=add_product_success&alert=success");
        } else {response.sendRedirect(request.getContextPath()+"/admin-product-add?message=add_product_notsuccess&alert=danger");}
    }
     
      public boolean uploadFile(InputStream is, String path) {
    	  boolean test=false;
    	  try {
			byte[] byt = new byte[is.available()];
			is.read();
			FileOutputStream fops = new FileOutputStream(path);
			fops.write(byt);
			fops.flush();
			fops.close();
			
			test = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	  return test;
      }
}
