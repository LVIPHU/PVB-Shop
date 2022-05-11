<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

<div id="sidebar" class='active'>
    <div class="sidebar-wrapper active">
        <div class="sidebar-header">
            <a href="<c:url value="/employees-home"/>">
                <img src="<c:url value="/templates/admin/images/logo.png"/>" alt="" class="img-logo" style="max-width: -webkit-fill-available">
            </a>
        </div>
        <div class="sidebar-menu">
            <ul class="menu">
                <li class="sidebar-item active">
                    <a href="<c:url value="/employees-home"/>" class='sidebar-link'>
                        <i class="fa fa-home" aria-hidden="true" style="font-size: 18px;"></i>
                        <span>Thống Kê</span>
                    </a>
                </li>
                <li class="sidebar-item has-sub">
                    <a href="#" class='sidebar-link'>
                        <i class="fa fa-inbox" aria-hidden="true" style="font-size: 16px;"></i>
                        <span>Đơn hàng</span>
                    </a>
                    <ul class="submenu">
                        <li>
                            <a href="<c:url value="/employees-order"/>">Danh sách đơn hàng</a>
                        </li>
                        <li>
                            <a href="<c:url value="/employees-cancel"/>">Danh sách đơn hủy</a>
                        </li>
                        <li>
                            <a href="<c:url value="/employees-return"/>">Trả hàng & hoàn tiền</a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-item has-sub">
                    <a href="#" class='sidebar-link'>
                        <i class="fa fa-cubes" aria-hidden="true" style="font-size: 16px;"></i>
                        <span>Sản phẩm</span>
                    </a>
                    <ul class="submenu ">
                        <li>
                            <a href="<c:url value="/employees-product"/>" >Danh sách sản phẩm</a>
                        </li>
                        <li>
                            <a href="<c:url value="/employees-product-add"/>">Thêm sản phẩm mới</a>
                         </li>
                    </ul>
                </li>
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i class="fa fa-users" aria-hidden="true" style="font-size: 16px;"></i>
                        <span>Tài khoản khách hàng</span>
                    </a>
                    <ul class="submenu">
                        <li>
                            <a href="<c:url value="/employees-account"/>">Danh sách tài khoản</a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i class="fa fa-server" aria-hidden="true" style="font-size: 16px;"></i>
                        <span>Danh mục</span>
                    </a>
                    <ul class="submenu">
                        <li>
                            <a href="<c:url value="/employees-category"/>">Danh mục sản phẩm</a>
                        </li>
                        <li>
                            <a href="<c:url value="/employees-category-add"/>">Thêm danh mục</a>
                        </li>
                    </ul>
                </li>
<%--                 <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i class="fa fa-users" aria-hidden="true" style="font-size: 16px;"></i>
                        <span>Quản lí TK người dùng</span>
                    </a>
                    <ul class="submenu">
                        <li>
                            <a href="<c:url value="/employees-customer-view"/>">Xem khách hàng</a>
                        </li>
                        <li>
                            <a href="<c:url value="/employees-customer-editstatus"/>">Thay đổi trạng thái</a>
                        </li>
                    </ul>
                </li> --%>
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i class="fa fa-newspaper-o" aria-hidden="true" style="font-size: 16px;"></i>
                        <span>Tin tức</span>
                    </a>
                    <ul class="submenu">
                        <li>
                            <a href="<c:url value="/employees-news-add"/>">Thêm tin tức</a>
                        </li>
                        <li>
                            <a href="<c:url value="/employees-news-edit"/>">Sửa tin tức</a>
                        </li>
                        <li>
                            <a href="<c:url value="/employees-news-delete"/>">Xóa tin tức</a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i class="fa fa-envelope-o" aria-hidden="true" style="font-size: 16px;"></i>
                        <span>Tin nhắn</span>
                    </a>
                    <ul class="submenu">
                        <li>
                            <a href="<c:url value="/employees-message-view"/>">Xem tin nhắn</a>
                        </li>
                        <li>
                            <a href="<c:url value="/employees-message-reply"/>">Phản hồi tin nhắn </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
    </div>
</div>
