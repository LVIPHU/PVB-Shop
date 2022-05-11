<%--
  Created by IntelliJ IDEA.
  User: nha
  Date: 01/26/2021
  Time: 5:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Chi tiết sản phẩm</title>
</head>
<body>
<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="bread-inner">
                    <ul class="bread-list">
                        <li><a href="<c:url value="/trang-chu"/>">Trang chủ<i class="ti-arrow-right"></i></a></li>
                        <li class="active">Chi tiết sản phẩm</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<c:if test="${not empty productdetail}">
    <div type="hidden" name="masp" style="height: 0px; width: 0px">${d.getId()}</div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-12 col-md-2">
                <div class="single-product">
                    <div class="product-img">
                        <img class="default-img" src="${productdetail.getImage_link()}" alt="#">
                    </div>
                </div>
                <div class="container">
                    <div>
                        <hr>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-12 col-md-3">
                <div class="title-product">
                        ${productdetail.getName()}
                </div>
                <br>
                <div class="content-product1">
                        ${productdetail.getContent()}
                </div>
                <br>
                <div class="content-product2">
                    Chỉ còn ${productdetail.getQty()} sản phẩm <br>
                    <p>${productdetail.getGiaString(productdetail.getPrice())}đ</p>
                </div>
                <br>
                <div class="row">
                    <div class="col-6">
                        <a href="<c:url value="/chi-tiet-san-pham"/>">
                            <button type="button" class="btn btn-dark" style="width: 255px;">
                                Mua ngay
                            </button>
                        </a>
                    </div>
                    <div class="col-6">
                        <a href="<c:url value="/add-cart?id=${productdetail.getId()}"/>">
                            <button type="button" class="btn btn-dark" style="width: 255px;">
                                Thêm vào giỏ
                            </button>
                        </a>
                    </div>
                    <div class="container">
                        <div>
                            <hr>
                        </div>
                    </div>
                </div>
                <div>
                    <strong>Khuyến mãi liên quan</strong> <br> Nhập mã L.A.N200 giảm thêm 5% tối đa 200.000đ khi thanh
                    toán qua VNPAY-QR.
                </div>
            </div>
            <br><br><br><br>
            <div class="col-lg-3 col-12 col-md-2">
                <form action=""
                      style="background: #fff;  margin-top: 50px;border: 1px solid #eee;box-shadow: 0px 0px 15px #0000001a;padding: 9px;padding-top: 30px;padding-bottom: 30px;">
                    <div style="color: red;">
                        <i class="fas fa-motorcycle"></i>&nbsp; Sản phẩm được miễn phí giao hàng
                    </div>
                    <div class="container">
                        <div>
                            <hr>
                        </div>
                    </div>
                    <div>
                        <strong style="font-size: 16px;">Chính sách bán hàng</strong><br>
                        <i class="fas fa-check-circle" style="color: #F7941D;font-size: 20px;"></i>&nbsp;Cam kết hàng
                        chính hãng 100% <br>
                        <i class="fas fa-truck" style="color: #F7941D;font-size: 20px;"></i>&nbsp; Miễn phí giao hàng từ
                        500K <br>
                        <i class="fas fa-undo-alt" style="color: #F7941D;font-size: 20px;"></i>&nbsp; Đổi trả hàng trong
                        24h
                    </div>
                    <br>
                    <div>
                        <strong style="font-size: 16px;">
                            Dịch vụ khác
                        </strong><br>
                        <i class="fas fa-cogs" style="color: #F7941D;font-size: 20px;"></i>&nbsp;Sửa chữa đồng giá
                        150.000đ.<br>
                        <i class="fab fa-android" style="color: #F7941D;font-size: 20px;"></i>&nbsp;Vệ sinh máy tính,
                        laptop.<br>
                        <i class="fas fa-shield-alt" style="color: #F7941D;font-size: 20px;"></i>&nbsp;Bảo hành tại nhà.
                    </div>
                </form>
            </div>
        </div>
    </div>
    <br><br>
</c:if>
<div class="container">
    <div>
        <strong style="font-size: 20px;">
            Sản phẩm tương tự
        </strong>
    </div>
    <div class="row">

        <c:forEach items="${sptuongtu.getList()}" var="d">
            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                <div class="single-product">
                    <div class="product-img">
                        <div type="hidden" name="masp" style="width: 0px;height: 0px">${sptuongtu.getId()}</div>
                        <a href="<c:url value="/chi-tiet-san-pham"/>">
                            <img class="default-img" src="${sptuongtu.getImage_link()}"
                                 alt="#">
                        </a>
                        <div class="button-head">
                            <div class="product-action">
                                <a title="" href="<c:url value="/chi-tiet-san-pham"/>"><i class=" ti-bag"></i><span>Mua
                                        ngay</span></a>
                                <a title="" href="#"><i class=" ti-heart "></i><span>Yêu
                                        thích</span></a>
                                <a title="" href="#"><i
                                        class="ti-bar-chart-alt"></i><span>So
                                        sánh</span></a>
                            </div>
                            <div class="product-action-2">
                                <a title="" href="<c:url value="/add-cart?id=${sptuongtu.getId()}"/>">Thêm vào giỏ</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-content">
                        <h3><a href="<c:url value="/chi-tiet-san-pham"/>">${sptuongtu.getName()} </a></h3>
                        <div class="product-price">
                            <span>${sptuongtu.getGiaString(sptuongtu.getPrice())}đ</span>
                        </div>
                    </div>
                </div>
            </div>

        </c:forEach>

    </div>
</div>
<br><br>
<br><br>
</body>
</html>
