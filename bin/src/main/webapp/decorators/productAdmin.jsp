<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 26/01/2021
  Time: 8:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>L.A.N | Thêm sản phẩm</title>

    <link rel="stylesheet" href="<c:url value="/templates/admin/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/templates/admin/vendors/chartjs/Chart.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/templates/admin/vendors/perfect-scrollbar/perfect-scrollbar.css"/>">
    <link rel="stylesheet" href="<c:url value="/templates/admin/css/app.css"/>">

    <link rel="stylesheet" href="<c:url value="/templates/admin/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/templates/admin/css/style.css"/>">
</head>
<style>
    * {
        color: black !important;
        font-size: 16px;
    }

    li a {
        font-size: 14px !important;
    }
</style>
<body>

<div id="app">
    <div id="sidebar" class='active'>
        <div class="sidebar-wrapper active">
            <div class="sidebar-header">
                <a href="index.html">
                    <img src="<c:url value="/templates/admin/images/Logo_LAN-store.png"/>" alt="" srcset="" class="img-logo">
                </a>
            </div>
            <div class="sidebar-menu">
                <ul class="menu">
                    <li class="sidebar-item active ">
                        <a href="index.html" class='sidebar-link'>
                            <i class="fa fa-home" aria-hidden="true" style="font-size: 18px;"></i>
                            <span>Tổng quan</span>
                        </a>
                    </li>
                    <li class="sidebar-item  has-sub">
                        <a href="#" class='sidebar-link'>
                            <i class="fa fa-shopping-basket" aria-hidden="true" style="font-size: 16px;"></i>
                            <span>Quản lí đơn hàng</span>
                        </a>
                        <ul class="submenu">

                            <li>
                                <a href="alloder.html">Tất cả</a>
                            </li>

                            <li>
                                <a href="cancel.html">Đơn hủy</a>
                            </li>

                            <li>
                                <a href="return.html">Trả hàng & hoàn tiền</a>
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
                                <a href="product.html">Tất cả sản phẩm</a>

                            </li>
                            <li>
                                <a href="addproduct.html">Thêm sản phẩm</a>

                            </li>

                            <li>
                                <a href="editproduct.html">Sửa sản phẩm</a>
                            </li>

                        </ul>

                    </li>


                    <li class="sidebar-item  has-sub">
                        <a href="#" class='sidebar-link'>
                            <i class="fa fa-user-circle" aria-hidden="true" style="font-size: 16px;"></i>

                            <span>Quản lí tài khoản</span>
                        </a>
                        <ul class="submenu">

                            <li>
                                <a href="addacount.html">Thêm tài khoản</a>
                            </li>

                            <li>
                                <a href="editacount.html">Sửa tài khoản</a>
                            </li>

                            <li>
                                <a href="deleteacount.html">Xóa tài khoản</a>
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
                                <a href="viewcustom.html">Xem khách hàng</a>
                            </li>


                            <li>
                                <a href="editstatuscustom.html">Thay đổi trạng thái</a>
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
                                <a href="addnews.html">Thêm tin tức</a>
                            </li>

                            <li>
                                <a href="editnews.html">Sửa tin tức</a>
                            </li>

                            <li>
                                <a href="deletenews.html">Xóa tin tức</a>
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
                                <a href="viewmessage.html">Xem tin nhắn</a>
                            </li>

                            <li>
                                <a href="replymessage.html">Phản hồi tin nhắn </a>
                            </li>


                        </ul>

                    </li>


                </ul>
            </div>
            <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
        </div>
    </div>
    <div id="main">
        <nav class="navbar navbar-header navbar-expand navbar-light">
            <a class="sidebar-toggler" href="#"><span class="navbar-toggler-icon"></span></a>
            <button class="btn navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
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
                            <a class="dropdown-item" href="#"><i data-feather="log-out"></i> Đăng xuất</a>
                        </div>
                    </li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                            <div class="avatar mr-1">
                                <img src="<c:url value="/templates/admin/images/favicon.png"/>"  alt="" srcset="">
                            </div>
                            <div class="d-none d-md-block d-lg-inline-block">Hi, L.A.N</div>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <a class="dropdown-item" href="#"><i data-feather="user"></i>Tài khoản</a>
                            <a class="dropdown-item active" href="#"><i data-feather="mail"></i>Tin nhắn</a>
                            <a class="dropdown-item" href="#"><i data-feather="settings"></i> Cài đặt</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#"><i data-feather="log-out"></i> Đăng xuất</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="gap-sm">
        </div>
        <div class="detail-product">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 ">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="title-form">
                                    <h3 class="title-product">Thông tin cơ bản <span class="span-title-product">*</span>
                                    </h3>
                                </h4>
                            </div>
                            <div class="card-body">
                                <div class="row row-margin-top">
                                    <div class="col-lg-2 col-md-2 col-2">
                                        <p>Mã sản phẩm:</p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-4">
                                        <form>
                                            <div class="form-group">
                                                <input type="text" class="form-control"
                                                       placeholder="Nhập mã sản phẩm...">
                                            </div>
                                        </form>
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-2">
                                        <p>Ngày nhập:</p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-4">
                                        <form>
                                            <div class="form-group">
                                                <form>

                                                    <input type="date" id="birthday" name="birthday"
                                                           style="padding: 0.5rem 1rem ;">

                                                </form>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="gap-sm"></div>
                                <div class="row">
                                    <div class="col-lg-2 col-md-4 col-6">
                                        <p>Tên sản phẩm:<u></u> <span class="span-title-product">*</span></p>
                                    </div>
                                    <div class="col-lg-10 col-md-8 col-6">
                                        <input type="text" class="form-control" placeholder="Nhập tên sản phẩm...">
                                    </div>
                                </div>

                                <div class="gap-sm"></div>
                                <div class="row ">

                                    <div class="col-lg-2 col-md-4 col-6">
                                        <p>Hình ảnh sản phẩm:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-8 col-6">
                                        <form>
                                            <div class="form-group">
                                                <input type="file" class="form-control-file"
                                                       id="exampleFormControlFile1">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="gap-sm"></div>
                                <div class="row">
                                    <div class="col-lg-2 col-md-4 col-6">
                                        <p>Chi tiết sản phẩm <span class="span-title-product">*</span></p>
                                    </div>
                                    <div class="col-lg-10 col-md-8 col-6">
                                        <textarea class="form-control" id="3" rows="4"
                                                  placeholder="Nhập mô tả sản phẩm..."></textarea>
                                    </div>
                                </div>

                                <div class="gap-sm"></div>
                                <div class="row">
                                    <div class="col-lg-2 col-md-4 col-6">
                                        <p>Danh mục sản phẩm:</p>
                                    </div>
                                    <div class="col-lg-10 col-md-8 col-6">
                                        <select class="form-control" aria-placeholder="Ch">
                                            <option>Ram</option>
                                            <option>CPU</option>
                                            <option>VGA</option>
                                            <option>Thiết bị ngoại vi</option>
                                            <option>Màn hình</option>
                                            <option>Nguồn</option>
                                        </select>
                                    </div>

                                </div>
                                <div class="gap-sm"></div>
                                <div class="row">
                                    <div class="col-lg-2 col-md-4 col-6">
                                        <p>Thương hiệu <span class="span-title-product">*</span></p>
                                    </div>
                                    <div class="col-lg-10 col-md-8 col-6">
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="gap-sm"></div>
                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-6">
                                        <p>Đặc điểm 1</p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-6">
                                        <textarea class="form-control" id="2" rows="2"
                                                  placeholder="Nhập mô tả đặc điểm 1..."></textarea>
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-6">
                                        <p>Đặc điểm 2</p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-6">
                                        <textarea class="form-control" id="1" rows="2"
                                                  placeholder="Nhập mô tả đặc điểm 2..."></textarea>
                                    </div>
                                </div>
                                <div class="gap-sm"></div>
                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-2">
                                        <p>Giá nhập <span class="span-title-product">*</span></p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-4">
                                        <input type="number" class="form-control" min="0"
                                               placeholder="Nhập giá nhập...">
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-2">
                                        <p>Giá bán <span class="span-title-product">*</span></p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-4">
                                        <input type="number" class="form-control" min="0" placeholder="Nhập giá bán...">
                                    </div>
                                </div>

                                <div class="gap-sm"></div>
                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-6">
                                        <p>Khuyến mãi</p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-6">
                                        <select class="form-control" aria-placeholder="Ch">
                                            <option>5%</option>
                                            <option>10%</option>
                                            <option>15%</option>
                                            <option>50%</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-6">
                                        <p>Số lượng nhập <span class="span-title-product">*</span></p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-6">
                                        <input type="number" class="form-control" min="0"
                                               placeholder="Nhập số lượng sản phẩm nhập...">
                                    </div>
                                </div>

                                <div class="gap-sm"></div>
                                <div class="row">
                                    <div class="col-12" style="text-align: center;">
                                        <button class="btn btn-outline-primary"
                                                style="padding-left: 1.2rem; padding-right: 1.2rem; margin-right: 40px;">
                                            Lưu
                                        </button>
                                        <button type="button" class="btn btn-outline-danger">Thoát</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>
<footer>
    <div class="footer clearfix mb-0 text-muted">
        <div class="float-left">
            <p>L.A.N Computer Store - HKII-2021 !!!</p>
        </div>
        <div class="float-right">
            <p>Thank you for watching <span class='text-danger'><i data-feather="heart"></i></span></p>
        </div>
    </div>
</footer>


<script src="<c:url value="/templates/admin/js/feather-icons/feather.min.js"/>"></script>
<script src="<c:url value="/templates/admin/vendors/perfect-scrollbar/perfect-scrollbar.min.js"/>"></script>
<script src="<c:url value="/templates/admin/js/app.js"/>"></script>
<script src="<c:url value="/templates/admin/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/templates/admin/vendors/chartjs/Chart.min.js"/>"></script>
<script src="<c:url value="/templates/admin/vendors/apexcharts/apexcharts.min.js"/>"></script>
<script src="<c:url value="/templates/admin/js/pages/dashboard.js"/>"></script>
<script src="<c:url value="/templates/admin/js/main.js"/>"></script>


</body>
</html>
