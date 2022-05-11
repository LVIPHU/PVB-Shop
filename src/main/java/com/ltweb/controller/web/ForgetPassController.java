package com.ltweb.controller.web;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import com.ltweb.Util.EmailUtil;
import com.ltweb.model.UserModel;
import com.ltweb.service.IUserService;
import com.ltweb.service.impl.UserService;

import java.io.IOException;
import java.util.ResourceBundle;

@WebServlet(urlPatterns = "/quen-mat-khau")
public class ForgetPassController extends HttpServlet {
	@Inject
    IUserService userService = new UserService();
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
	
	private String host;
    private String port;
    private String user;
    private String pass;
	
	public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("utf-8");
    	String receiver = request.getParameter("receiver");
    	
    	UserModel userModel = userService.findByEmail(receiver);

    	try {
    		String userEmail = userModel.getEmail();
    		if(userEmail == null) {
    			response.sendRedirect(request.getContextPath()+"/quen-mat-khau?message=email_not_exist&alert=danger");
    		}else {
    			String recover = updateToken(userModel);
    			recover = "user_id="+userModel.getId() +"_"+ recover;
    			EmailUtil.sendEmail(host, port, user, pass, receiver, "YÊU CẦU XÁC THỰC CẤP LẠI MẬT KHẨU",EmailUtil.bodyRP(recover));
    			response.sendRedirect(request.getContextPath()+"/quen-mat-khau?message=email_success&alert=success");
    		}
		} catch (MessagingException e) {
			response.sendRedirect(request.getContextPath()+"/quen-mat-khau?message=email_fail&alert=danger");
		}
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("utf-8");
    	String message = request.getParameter("message");
        String alert = request.getParameter("alert");
        if (message != null & alert != null) {
            request.setAttribute("message", resourceBundle.getString(message));
            request.setAttribute("alert", alert);
        }
    	RequestDispatcher rd= request.getRequestDispatcher("views/web/forget_password.jsp");
        rd.forward(request,response);
    }
    
    public String updateToken(UserModel user) throws IOException
	{
		String token = Long.toHexString(Double.doubleToLongBits(Math.random())); // HÀM TẠO RANDOM HASH ĐỂ LẤY LẠI MẬT KHẨU
		user.setToken(token);
		new UserService().update(user);
		return token;
	}
}