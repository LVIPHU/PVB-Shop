<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

<nav class="navbar navbar-header navbar-expand navbar-light">
    <a class="sidebar-toggler" href="#"><span class="navbar-toggler-icon"></span></a>
    <button class="btn navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav d-flex align-items-center navbar-light ml-auto">
            <li class="dropdown nav-icon">
                <a href="#" data-toggle="dropdown" class="nav-link  dropdown-toggle nav-link-lg nav-link-user">
                    <div class="d-lg-inline-block">
                        <i data-feather="bell"></i>
                    </div>
                </a>
                <div class="dropdown-menu dropdown-menu-right dropdown-menu-large">
                    <h6 class='py-2 px-4'>Thông báo</h6>
                    <ul class="list-group rounded-none">
                        <li class="list-group-item border-0 align-items-start">
                            <div class="avatar bg-success mr-3">
                                <span class="avatar-content"><i data-feather="shopping-cart"></i></span>
                            </div>
                            <div>
                                <h6 class='text-bold'>Đơn hàng mới</h6>
                                <p class='text-xs'>
                                    RAm G.SKill 16GB Bus 3200
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="dropdown nav-icon mr-2">
                <a href="#" data-toggle="dropdown" class="nav-link  dropdown-toggle nav-link-lg nav-link-user">
                    <div class="d-lg-inline-block">
                        <i data-feather="mail"></i>
                    </div>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#"><i data-feather="user"></i>Tài khoản</a>
                    <a class="dropdown-item active" href="#"><i data-feather="mail"></i> Tin nhắn</a>
                    <a class="dropdown-item" href="#"><i data-feather="settings"></i> Cài đặt</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="<c:url value="/dang-nhap?action=logout"/>"><i data-feather="log-out"></i>Đăng xuất</a>
                </div>
            </li>
            <li class="dropdown">
                <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                    <div class="avatar mr-1">
                        <img src="<c:url value="/templates/admin/images/logoicon.png"/>" alt="" srcset="">
                    </div>
                    <div class="d-none d-md-block d-lg-inline-block">Hi, Admin</div>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#"><i data-feather="user"></i>Tài khoản</a>
                    <a class="dropdown-item active" href="#"><i data-feather="mail"></i>Tin nhắn</a>
                    <a class="dropdown-item" href="#"><i data-feather="settings"></i> Cài đặt</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="<c:url value="/dang-nhap?action=logout"/>"><i data-feather="log-out"></i> Đăng xuất</a>
                </div>
            </li>
        </ul>
    </div>
</nav>

