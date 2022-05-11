<%--
  Created by IntelliJ IDEA.
  User: nha
  Date: 01/21/2021
  Time: 3:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

<div id="sidebar" class='active'>
    <div class="sidebar-wrapper active">
        <div class="sidebar-header">
            <a href="<c:url value="/admin-home"/>">
                <img src="<c:url value="/templates/admin/images/Logo_LAN-store.png"/>" alt="" srcset="" class="img-logo">
            </a>
        </div>
        <div class="sidebar-menu">
            <ul class="menu">
                <li class="sidebar-item active ">
                    <a href="home.jsp" class='sidebar-link'>
                        <i class="fa fa-home" aria-hidden="true" style="font-size: 18px;"></i>
                        <span>Thống Kê</span>
                    </a>
                </li>
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i class="fa fa-shopping-basket" aria-hidden="true" style="font-size: 16px;"></i>
                        <span>Quản lí đơn hàng</span>
                    </a>
                    <ul class="submenu">

                        <li>
                            <a href="alloder.jsp">Tất cả</a>
                        </li>

                        <li>
                            <a href="cancel.jsp">Đơn hủy</a>
                        </li>

                        <li>
                            <a href="return.jsp">Trả hàng & hoàn tiền</a>
                        </li>

                    </ul>

                </li>


                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i class="fa fa-suitcase" aria-hidden="true" style="font-size: 16px;"></i>
                        <span>Sản phẩm</span>
                    </a>

                    <ul class="submenu ">
                        <li>
                            <a href="<c:url value="/admin-product"/>" >Tất cả sản phẩm</a>
                        </li>
                        <li>
                            <a href="<c:url value="/admin-product-add"/>">Thêm sản phẩm</a>

                        </li>

<%--                        <li>--%>
<%--                            <a href="<c:url value="/admin-product-edit"/>">Sửa sản phẩm</a>--%>

<%--                        </li>--%>

                    </ul>

                </li>


                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i class="fa fa-user-circle" aria-hidden="true" style="font-size: 16px;"></i>

                        <span>Quản lí tài khoản</span>
                    </a>
                    <ul class="submenu">

                        <li>
                            <a href="addacount.jsp">Thêm tài khoản</a>
                        </li>

                        <li>
                            <a href="editacount.jsp">Sửa tài khoản</a>
                        </li>

                        <li>
                            <a href="deleteacount.jsp">Xóa tài khoản</a>
                        </li>
                    </ul>

                </li>
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i class="fa fa-users" aria-hidden="true" style="font-size: 16px;"></i>

                        <span>Quản lí TK người dùng</span>
                    </a>
                    <ul class="submenu">

                        <li>
                            <a href="viewcustom.jsp">Xem khách hàng</a>
                        </li>


                        <li>
                            <a href="editstatuscustom.jsp">Thay đổi trạng thái</a>
                        </li>
                    </ul>

                </li>

                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i class="fa fa-newspaper-o" aria-hidden="true" style="font-size: 16px;"></i>
                        <span>Quản lí tin tức</span>
                    </a>
                    <ul class="submenu">

                        <li>
                            <a href="addnews.jsp">Thêm tin tức</a>
                        </li>

                        <li>
                            <a href="editnews.jsp">Sửa tin tức</a>
                        </li>

                        <li>
                            <a href="deletenews.jsp">Xóa tin tức</a>
                        </li>
                    </ul>

                </li>

                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i class="fa fa-reply" aria-hidden="true" style="font-size: 16px;"></i>
                        <span>Quản lí tin nhắn</span>
                    </a>
                    <ul class="submenu">

                        <li>
                            <a href="viewmessage.jsp">Xem tin nhắn</a>
                        </li>

                        <li>
                            <a href="replymessage.jsp">Phản hồi tin nhắn </a>
                        </li>


                    </ul>

                </li>


            </ul>
        </div>
        <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
    </div>
</div>
