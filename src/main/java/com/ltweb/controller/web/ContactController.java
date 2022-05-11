package com.ltweb.controller.web;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.mail.internet.MimeMessage;
import javax.servlet.*;
import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;

import com.ltweb.Util.EmailUtil;
import com.ltweb.Util.FormUtil;
import com.ltweb.model.MailModel;

import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Properties;
import java.util.ResourceBundle;

@WebServlet(name = "ContactController", urlPatterns = "/lien-he")
public class ContactController extends HttpServlet {
	JavaMailSenderImpl mailer;
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
        
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        properties.put("mail.smtp.socketFactory.port", "465");
        properties.put("mail.smtp.starttls.enable", "false");
        properties.put("mail.debug", "true");
        mailer = new JavaMailSenderImpl();
        mailer.setHost(host);
        mailer.setPort(Integer.parseInt(port));
        mailer.setUsername(user);
        mailer.setPassword(pass);
        mailer.setDefaultEncoding("UTF-8");
        mailer.setJavaMailProperties(properties);
        
    }
	
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("utf-8");
    	String message = request.getParameter("message");
        String alert = request.getParameter("alert");
        if (message != null & alert != null) {
            request.setAttribute("message", resourceBundle.getString(message));
            request.setAttribute("alert", alert);
        }
    	RequestDispatcher rd = request.getRequestDispatcher("views/web/contact.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html;charset=UTF-8");
    	request.setCharacterEncoding("utf-8");
    	MailModel mailModel = FormUtil.toModel(MailModel.class, request);
    	
    	mailModel.setMessage(mailModel.getMessage()+"\n\n Số Điện Thoại:");
    	try {
    		MimeMessage mail = mailer.createMimeMessage();
    		// sử dụng lớp trợ giúp
    		MimeMessageHelper helper =new MimeMessageHelper(mail);
    		helper.setFrom(mailModel.getEmail(), mailModel.getName());
    		helper.setTo("n18dccn240@student.ptithcm.edu.vn");
    		helper.setSubject(mailModel.getSubject());
    		helper.setText(mailModel.getMessage(), true);
    		
    		mailer.send(mail);
			response.sendRedirect(request.getContextPath()+"/lien-he?message=email_success&alert=success");
    	} catch (AddressException e) {
    		response.sendRedirect(request.getContextPath()+"/lien-he?message=email_fail&alert=danger");
			e.printStackTrace();
		} catch (MessagingException e) {
			response.sendRedirect(request.getContextPath()+"/lien-he?message=email_fail&alert=danger");
			e.printStackTrace();
		}
    }
}
