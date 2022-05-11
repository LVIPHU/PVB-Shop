<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Meta Tag -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title Tag  -->
    <title>Đăng nhập</title>

</head>
<body>

<!-- Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="bread-inner">
                    <ul class="bread-list">
                        <li><a href="home.jsp">Trang chủ<i class="ti-arrow-right"></i></a></li>
                        <li class="active"><a href="login.jsp">Đăng nhập</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="login-form">
    <form action="<c:url value="/dang-nhap"/>" method="post" class="form_signup">
        <h2 class="text-center">
            Đăng nhập
        </h2>
        <div class="alert alert-${alert}" role="alert">
            ${message}
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="username" placeholder="Tên đăng nhập" required="required" oninvalid="this.setCustomValidity('Nhập tên đăng ký')" style="font-size: 14px;">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Mật khẩu" required="required" oninvalid="this.setCustomValidity('Nhập mật khẩu')"  style="font-size: 14px;">
        </div>
        <p><a href="/quen-mat-khau"  style="font-size: 14px;text-decoration: none;text-align: right;">Quên mật khẩu?</a></p>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg btn-block">
                    Đăng nhập
            </button>
        </div>
        <p>
            Hoặc đăng nhập với:
        </p>
        <div class="form-group" >
            <button type="submit" class="btn btn-primary btn-lg btn-block btnlogin" style="background-color: #0303aa;">
                <a href="#" style="text-decoration: none;color: white;">
                    <i class="fab fa-facebook"></i>
                    facebook
                </a>
            </button>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg btn-block" style="background-color: #dd1818;">
                <a href="#" style="text-decoration: none;color: white;">
                    <i class="fab fa-google"></i>
                    google
                </a>
            </button>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg btn-block" style="background-color: #bf005f;">
                <a href="#" style="text-decoration: none;color: white;">
                    <i class="fab fa-instagram"></i>
                    instagram
                </a>
            </button>
        </div>
    </form>
    <p class="text-center small" style="font-size: 14px;">Bạn chưa có tài khoản? <a href="sign-up .jsp"  style="font-size: 16px;text-decoration: none;">Đăng ký ngay!</a></p>
</div>
<!--container end.//-->

</body>
</html>