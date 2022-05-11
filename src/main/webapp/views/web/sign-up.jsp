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
    <title>Đăng ký</title>


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
                        <li class="active"><a href="sign-up.jsp">Đăng ký</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="login-form">
    <form action="<c:url value="/dang-ki"/>" method="post" class="form_signup">
        <h2 class="text-center">
            Đăng ký
        </h2>
        <div class="alert alert-${alert}" role="alert">
            ${message}
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="username" placeholder="Tên đăng ký" required="required"
                    style="font-size: 14px;">
        </div>

        <div class="form-group">
            <input type="password" class="form-control" id="password" name="password" placeholder="Mật khẩu" required="required"
                   style="font-size: 14px;">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" id="password2"  name="repassword" placeholder="Xác nhận mật khẩu"
                   required="required"
                   style="font-size: 14px;">
        </div>
        <span id='message'></span>
        <div class="form-group">
            <input type="text" class="form-control" name="name" placeholder="Họ và tên" required="required"
                   style="font-size: 14px;">
        </div>
        <div class="form-group">
            <input type="email" class="form-control" name="email" placeholder="Email" required="required"
                    style="font-size: 14px;">
        </div>

        <div class="form-group">
            <input type="text" class="form-control" name="phone" placeholder="Số điện thoại" required="required"
                    style="font-size: 14px;">
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg btn-block">
                Đăng ký
            </button>
        </div>
    </form>
    <p class="text-center small" style="font-size: 14px;">Bạn đã có tài khoản?
        <a href="login.jsp" style="font-size: 16px;text-decoration: none;">Đăng nhập ngay!</a></p>
</div>
<!--container end.//-->
<!--Xác nhận mật khẩu-->



</body>
</html>