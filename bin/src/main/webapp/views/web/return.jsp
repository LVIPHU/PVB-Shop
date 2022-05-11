<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <!-- Meta Tag -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title Tag  -->
    <title>Hoàn trả hàng</title>

</head>

<body class="js">

<!-- Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="bread-inner">
                    <ul class="bread-list">
                        <li><a href="home.jsp">Trang chủ<i class="ti-arrow-right"></i></a></li>
                        <li class="active"><a href="return.jsp">Hoàn trả hàng</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->

<!-- Start Contact -->
<section id="contact-us" class="contact-us section">
    <div class="container">
        <div class="contact-head">
            <div class="row">
                <div class="col-lg-8 col-12">
                    <div class="form-main">
                        <div class="title">
                            <h3>Điền đầy đủ thông tin để hoàn trả hàng...</h3>
                        </div>
                        <form class="form" method="post" action="mail/mail.php">
                            <div class="row">
                                <div class="col-lg-6 col-12">
                                    <div class="form-group">
                                        <label>Họ và tên<span>*</span></label>
                                        <input name="name" type="text" placeholder="Vui lòng nhập họ và tên...">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-12">
                                    <div class="form-group">
                                        <label>Số điện thoại<span>*</span></label>
                                        <input name="phonenumber" type="text"
                                               placeholder="Vui lòng nhập số điện thoại...">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-12">
                                    <div class="form-group">
                                        <label>Địa chỉ gmail<span>*</span></label>
                                        <input name="email" type="email" placeholder="Vui lòng nhập gmail...">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-12">
                                    <div class="form-group">
                                        <label>Địa chỉ lấy hàng<span>*</span></label>
                                        <input name="address_return" type="text"
                                               placeholder="Vui lòng nhập địa chỉ lấy hàng...">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-12">
                                    <div class="form-group">
                                        <label>Mã hóa đơn<span>*</span></label>
                                        <input name="number_return" type="text"
                                               placeholder="Vui lòng nhập mã hóa đơn...">
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="form-group message">
                                        <label>Lí do trả hàng<span>*</span></label>
                                        <textarea name="return"
                                                  placeholder="Vui lòng nhập lí do hoàn trả hàng..."></textarea>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group button">
                                        <button type="message" class="btn ">Xác nhận</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-12">
                    <div class="single-head">
                        <div class="single-info">
                            <i class="fa fa-cog"></i>
                            <h4 class="title">Hỗ trợ kĩ thuật</h4>
                            <ul>
                                <li>+84 111 000 111</li>
                                <li>+84 000 110 123</li>
                            </ul>
                        </div>
                        <div class="single-info">
                            <i class="fa fa-phone-square"></i>
                            <h4 class="title">Chính sách bảo hành</h4>
                            <ul>
                                <li>+84 111 000 111</li>
                                <li>+84 110 000 123</li>
                            </ul>
                        </div>
                        <div class="single-info">
                            <i class="fa fa-life-ring"></i>
                            <h4 class="title">Liên hệ</h4>
                            <ul>
                                <li>+L.A.N@gmail.com</li>
                                <li>+84 000 111 000</li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/ End Contact -->
</body>

</html>