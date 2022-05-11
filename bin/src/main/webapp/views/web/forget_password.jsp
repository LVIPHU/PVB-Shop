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
    <title>Đặt lại mật khẩu</title>

</head>
<body>

<!-- Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="bread-inner">
                    <ul class="bread-list">
                        <li><a href="<c:url value="/trang-chu"/>">Trang chủ<i class="ti-arrow-right"></i></a></li>
                        <li class="active"><a href="<c:url value="/dang-nhap"/>">Đăng nhập <i class="ti-arrow-right"></i></a></li>
                        <li><a href="<c:url value="/quen-mat-khau"/>">Quên mật khẩu</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<br>
<div class="login-form">
    <form action="/quen-mat-khau" method="post" class="form_signup">
        <h2 class="text-center">
            Đặt lại mật khẩu
        </h2>
        <div class="form-group">
            <input type="text" class="form-control" name="info" placeholder="Email / số điện thoại" required="required"
                   oninvalid="this.setCustomValidity('Nhập Email')" style="font-size: 14px;">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg btn-block">
                <a href="#" style="text-decoration: none;color: white;">
                    TIẾP THEO
                </a>
            </button>
        </div>
    </form>
</div>
<br>
<!--container end.//-->
</body>
</html>