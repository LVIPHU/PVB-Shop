package com.ltweb.filter;

import com.ltweb.Util.SessionUtil;
import com.ltweb.model.UserModel;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthorizationFilter implements Filter {
    private ServletContext context;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
            this.context=filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request =(HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String url =request.getRequestURI();
        if(url.contains("/admin")){
            UserModel userModel = (UserModel) SessionUtil.getInstance().getValue(request,"user");
            if(userModel!=null){
                if(userModel.isRole() == 3){
                    filterChain.doFilter(request,response);
                }else if(userModel.isRole() == 2) {
                    response.sendRedirect(request.getContextPath()+"/employees-home");
                }else if(userModel.isRole() != 0) {
                    response.sendRedirect(request.getContextPath()+"/trang-chu");
                }
            }else{
                response.sendRedirect(request.getContextPath()+"/dang-nhap?message=not_login&alert=danger");
            }
        }else if(url.contains("/employees")){
            UserModel userModel = (UserModel) SessionUtil.getInstance().getValue(request,"user");
            if(userModel!=null){
                if(userModel.isRole() == 2){
                    filterChain.doFilter(request,response);
                }else if(userModel.isRole() == 3) {
                    response.sendRedirect(request.getContextPath()+"/admin-home");
                }else if(userModel.isRole() != 0) {
                    response.sendRedirect(request.getContextPath()+"/trang-chu");
                }
            }else{
                response.sendRedirect(request.getContextPath()+"/dang-nhap?message=not_login&alert=danger");
            }
        }else{
            filterChain.doFilter(request,response);
        }
    }

    @Override
    public void destroy() {

    }
}
