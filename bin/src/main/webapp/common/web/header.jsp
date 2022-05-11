<%@ page import="com.ltweb.service.ICategoryService" %>
<%@ page import="com.ltweb.service.impl.CategoryService" %>
<%@ page import="com.ltweb.model.CatalogModel" %>
<%@ page import="com.ltweb.model.CatalogModel" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

<!--Header-->
<header class="header shop">
    <!-- Top_header -->
    <div class="topbar">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-12">
                    <!-- Top Left -->
                    <div class="top-left">
                        <ul class="list-main">
                            <li><i class="ti-headphone-alt"></i> 69.69.69.69</li>
                            <li><i class="ti-email"></i>L.A.N@gmail.com</li>
                        </ul>
                    </div>
                    <!--/ End Top Left -->
                </div>
                <div class="col-lg-8 col-md-12 col-12">
                    <!-- Top Right -->
                    <div class="right-content">
                        <ul class="list-main">
                            <li><i class="ti-location-pin"></i><a href="">Địa Chỉ</a></li>
                            <li><i class="ti-alarm-clock"></i> <a href="#">Deal HOT trong ngày</a></li>
                            <c:if test="${not empty user}">
                                <li><i class="ti-user"></i> <a href="<c:url value="/tai-khoan"/>">Tài Khoản</a></li>
                                <li><i class="ti-user"></i> <a href="<c:url value="/tai-khoan"/>">Xin
                                    chào, ${user.getName()}</a></li>
                                <li><i class="fas fa-sign-in-alt"></i><a
                                        href="<c:url value="/dang-nhap?action=logout"/>">Đăng xuất</a></li>
                            </c:if>
                            <c:if test="${empty user}">
                                <li><i class="ti-power-off"></i><a href="<c:url value="/dang-nhap"/>">Đăng Nhập</a></li>
                                <li><i class="ti-pencil"></i><a href="<c:url value="/dang-ki"/>">Đăng Kí</a></li>
                            </c:if>


                        </ul>
                    </div>
                    <!-- End Top Right -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Topbar -->
    <div class="middle-inner">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-12">
                    <!-- Logo -->
                    <div class="logo">
                        <a href="<c:url value="/trang-chu"/>"><img src="<c:url value="/templates/web/images/logo.png"/>" alt="logo"></a>
                    </div>
                    <!--/ End Logo -->
                    <!-- Search Form -->
                    <div class="search-top">
                        <div class="top-search"><a href="#"><i class="ti-search"></i></a></div>
                        <!-- Search Form -->
                        <div class="search-top">
                            <form class="search-form">
                                <input type="text" placeholder="Nhập tên sản phẩm..." name="search">
                                <button value="search" type="submit"><i class="ti-search"></i></button>
                            </form>
                        </div>
                        <!--/ End Search Form -->
                    </div>
                    <!--/ End Search Form -->
                    <div class="mobile-nav">
                        <div class="slicknav_menu"><a href="#" aria-haspopup="true" role="button" tabindex="0"
                                                      class="slicknav_btn slicknav_collapsed" style=""><span
                                class="slicknav_menutxt"></span><span class="slicknav_icon slicknav_no-text"><span
                                class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span><span
                                class="slicknav_icon-bar"></span></span></a>
                            <ul class="slicknav_nav slicknav_hidden" aria-hidden="true" role="menu"
                                style="display: none;">
                                <li><a href="<c:url value="/trang-chu"/>" role="menuitem" tabindex="-1">Trang chủ</a>
                                </li>
                                <li><a href="<c:url value="/san-pham?page=1"/>" role="menuitem" tabindex="-1">Sản
                                    phẩm</a></li>
                                <li><a href="<c:url value="/hoan-tra-hang"/>" role="menuitem" tabindex="-1">Hoàn trả
                                    hàng</a></li>
                                <li><a href="<c:url value="/bao-hanh"/>" role="menuitem" tabindex="-1">Bảo hành</a></li>
                                <li><a href="<c:url value="/gioi-thieu"/>" role="menuitem" tabindex="-1">Giới thiệu</a>
                                </li>
                                <li><a href="<c:url value="/lien-he"/>" role="menuitem" tabindex="-1">Liên hệ</a></li>
                                <li><a href="<c:url value="/tin-tuc"/>" role="menuitem" tabindex="-1">Tin tức</a></li>
                                <li><a href="<c:url value="/dich-vu"/>" role="menuitem" tabindex="-1">Dịch vụ</a></li>
                            </ul>
                        </div>

                    </div>
                </div>
                <div class="col-lg-7 col-md-6 col-12">
                    <div class="search-bar-top">
                        <div class="search-bar">
                            <form action="<c:url value="san-pham"/>" method="get">
                                <input name="search" placeholder="Nhập mã hoặc tên sản phẩm..." type="search">
                                <button type="submit" class="btnn"><i class="ti-search"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-12">
                    <div class="right-bar">
                        <!-- Search Form -->
                        <div class="sinlge-bar">
                            <a href="#" class="single-icon"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                        </div>
                        <div class="sinlge-bar">
                            <a href="#" class="single-icon"><i class="fa fa-user-circle-o" aria-hidden="true"></i></a>
                        </div>
                        <div class="sinlge-bar shopping">
                            <a href="#" class="single-icon"><i class="ti-bag"></i> <span
                                    class="total-count">2</span></a>
                            <!-- Shopping Item -->
                            <div class="shopping-item">

                                <ul class="shopping-list">

                                    <c:if test="${not empty cart}">
                                        <c:forEach items="${cart.getList()}" var="c">
                                            <li>
                                                <a class="cart-img" href="#"><img src="${c.getAnh()}" alt="#"></a>
                                                <h4><a href="#">${c.getTen()}</a></h4>
                                                <span class="amount">${c.getGiaString(c.getGiatien())}₫</span></p>
                                            </li>
                                        </c:forEach>
                                    </c:if>

                                </ul>
                                <div class="bottom">
                                    <div class="total">

                                        <c:if test="${empty cart}">
                                            <a href="<c:url value="/dang-nhap"/>" class="btn animate">Giỏ hàng</a>
                                        </c:if>
                                        <c:if test="${not empty cart}">
                                        <span style="color: red;">Tổng Cộng</span>
                                        <span class="total-amount" style="color: red;">
                                                ${cart.getGiaString(cart.tongGia())} đ
                                                <a href="<c:url value="/gio-hang"/>" class="btn animate">Giỏ hàng</a>
                                            </c:if>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <!--/ End Shopping Item -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header Inner -->
    <div class="header-inner">
        <div class="container">
            <div class="cat-nav-head">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="all-category">
                            <h3 class="cat-heading"><i class="fa fa-bars" aria-hidden="true"></i> DANH MỤC</h3>
                            <ul class="main-category">
                                <% CategoryService categoryService = new CategoryService();
                                    for (CatalogModel catalogModelOrder : categoryService.findAll()) {
                                        ;%>
                                <li>
                                    <a href="san-pham?catalog_id=<%=catalogModelOrder.getId()%>&page=1"><%=catalogModelOrder.getName()%>
                                    </a>
                                </li>
                                <%}%>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9 col-12">
                        <div class="menu-area">
                            <!-- Main Menu -->
                            <nav class="navbar navbar-expand-lg">
                                <div class="navbar-collapse">
                                    <div class="nav-inner">
                                        <ul class="nav main-menu menu navbar-nav">
                                            <li><a href="<c:url value="/trang-chu"/>">Trang chủ</a></li>
                                            <li><a href="<c:url value="/san-pham?&page=1"/>">Sản phẩm</a></li>
                                            <li><a href="<c:url value="/hoan-tra-hang"/>">Hoàn trả hàng</a></li>
                                            <li><a href="<c:url value="/bao-hanh"/>">Bảo hành</a></li>
                                            <li><a href="<c:url value="/gioi-thieu"/>">Giới thiệu</a></li>
                                            <li><a href="<c:url value="/lien-he"/>">Liên hệ</a></li>
                                            <li><a href="<c:url value="/tin-tuc"/>">Tin tức</a></li>
                                            <li><a href="<c:url value="/dich-vu"/>">Dịch vụ</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                            <!--/ End Main Menu -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ End Header Inner -->
</header>
<!--End Header-->