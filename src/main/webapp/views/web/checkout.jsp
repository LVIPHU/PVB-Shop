<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Meta Tag -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title Tag  -->
    <title>Thanh toán</title>

</head>
<body class="js">

<!-- Breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="bread-inner">
                    <ul class="bread-list">
                        <li><a href="<c:url value="/trang-chu"/>">Trang chủ<i class="ti-arrow-right"></i></a></li>
                        <li class="active"><a href="<c:url value="/thanh-toan"/>">Thanh toán</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Start Checkout -->
<section class="shop checkout section">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-12">
                <div class="checkout-form">
                    <h2>Điền thông tin thanh toán tại đây</h2>
                    <p>Vui lòng đăng ký để thanh toán nhanh hơn</p>
                    <!-- Form -->
                    <c:if test="${not empty user}">
                    	<form class="form" id="form-trans" method="post" action="<c:url value="/thanh-toan"/>">
	                        <div class="row">
	                            <div class="col-lg-6 col-md-6 col-12">
	                                <div class="form-group">
	                                    <label>Họ<span>*</span></label>
	                                    <input type="text" name="firstname" placeholder="" required="required" value = "${user.getLastName()}">
	                                </div>
	                            </div>
	                            <div class="col-lg-6 col-md-6 col-12">
	                                <div class="form-group">
	                                    <label>Tên<span>*</span></label>
	                                    <input type="text" name="lastname" placeholder="" required="required" value = "${user.getFirstName()}">
	                                </div>
	                            </div>
	                            <div class="col-lg-6 col-md-6 col-12">
	                                <div class="form-group">
	                                    <label>Địa chỉ Gmail<span>*</span></label>
	                                    <input type="email" name="email" placeholder="" required="required" value = "${user.getEmail()}">
	                                </div>
	                            </div>
	                            <div class="col-lg-6 col-md-6 col-12">
	                                <div class="form-group">
	                                    <label>Số điện thoại<span>*</span></label>
	                                    <input type="text" name="phone" placeholder="" required="required" value = "${user.getPhone()}">
	                                </div>
	                            </div>
	                            <div class="col-lg-6 col-md-6 col-12">
	                                <div class="form-group">
	                                    <label>Thành phố/Tỉnh<span>*</span></label>
	                                    <input type="text" name="city" placeholder="" required="required">
	                                </div>
	                            </div>
	                            <div class="col-lg-6 col-md-6 col-12">
	                                <div class="form-group">
	                                    <label>Quận/Huyện<span>*</span></label>
	                                    <input type="text" name="district" placeholder="" required="required">
	                                </div>
	                            </div>
	                            <div class="col-lg-6 col-md-6 col-12">
	                                <div class="form-group">
	                                    <label>Phường/Xã<span>*</span></label>
	                                    <input type="text" name="ward" placeholder="" required="required">
	                                </div>
	                            </div>
	                            <div class="col-lg-6 col-md-6 col-12">
	                                <div class="form-group">
	                                    <label>Địa chỉ chi tiết:<span>*</span></label>
	                                    <input type="text" name="address" placeholder="" required="required" value = "${user.getAddress()}">
	                                </div>
	                            </div>
	                            <div class="col-lg-6 col-md-6 col-12">
	                                <div class="form-group">
	                                    <label>Ghi chú</label>
	                                    <input type="text" name="message" placeholder="">
	                                </div>
	                            </div>
	                            <div class="col-lg-6 col-md-6 col-12">
	                                <div class="form-group">
	                                    <label></label>
	                                    <input type="hidden" name="user_id" placeholder=""value = "${user.getId() }" >
	                                </div>
	                            </div>
	                            <div class="col-lg-6 col-md-6 col-12">
	                                <div class="form-group">
	                                    <label></label>
	                                    <input type="hidden" name="amount" placeholder=""value = "${cart.tongGia() }" >
	                                </div>
	                            </div>
	                            <div class="col-12">
	                                <div class="form-group create-account">
	                                    <input id="cbox" type="checkbox">
	                                    <label>Lưu địa chỉ làm địa chỉ mặc định?</label>
	                                </div>
	                            </div>
	                        </div>
	                    </form>
                    </c:if>
                    <!--/ End Form -->
                </div>
            </div>
            <div class="col-lg-4 col-12">
                <div class="order-details">
                    <!-- Order Widget -->
                    <div class="single-widget">
                        <h2>Thanh toán</h2>
                        <div class="content">
                            <ul>
                                <li>Sản phẩm<span>${cart.getGiaString(cart.tongGia())}</span></li>
                                <li>+ Phí giao hàng<span>0₫</span></li>
                                <li class="last">Tổng cộng<span>${cart.getGiaString(cart.tongGia()) }</span></li>
                            </ul>
                        </div>
                    </div>
                    <!--/ End Order Widget -->
                    <!-- Order Widget -->
                    <div class="single-widget">
                        <h2>Hình thức thanh toán</h2>
                        <div class="content">
                            <div class="form-check">
                                <div class="form-group">
                                    <select class="form-control" name="" id="">
                                        <option>Thanh toán khi nhận hàng</option>
                                        <option>Thanh toán bằng thẻ VISA/MASTER CAR</option>
                                        <option>Thanh toán bằng thẻ Tín dụng/Ghi nợ</option>
                                    </select>
                                </div>

                            </div>
                        </div>
                        <!--/ End Order Widget -->
                        <!-- Payment Method Widget -->
                        <div class="single-widget payement">
                            <div class="content">
                                <img src="<c:url value='/templates/web/images/payment-method.png'/>" alt="#">
                            </div>
                        </div>
                        <!--/ End Payment Method Widget -->
                        <!-- Button Widget -->
                        <div class="single-widget get-button">
                            <div class="content">
                                <div class="button">
                                	<button type="submit" form="form-trans" value="" class="btn">THANH TOÁN</button>
                                </div>
                            </div>
                        </div>
                        <!--/ End Button Widget -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/ End Checkout -->

</body>
</html>