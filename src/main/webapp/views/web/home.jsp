<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Trang chủ</title>

</head>
<body>
<%-- <c:if test="${not empty message}">
	<div class="modal" id="myModal">
	   <div class="modal-dialog">
	      <div class="modal-content">
	         <div class="modal-header">
	            <h4 class="modal-title">${alert }</h4>
	         </div>
	         <div class="modal-body">
	            ${message }
	         </div>
	         <div class="modal-footer">
	            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
	         </div>
	      </div>
	   </div>
	</div>
</c:if> --%>

<!-- Slider Area -->
<section class="hero-slider">

    <!-- Single Slider -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="<c:url value="/templates/web/images/slider/banner.jpg"/>"
                     alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="<c:url value="/templates/web/images/slider/banner1.jpg"/>"
                     alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="<c:url value="/templates/web/images/slider/banner2.jpg"/>"
                     alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!--/ End Single Slider -->
</section>
<!--/ End Slider Area -->
<!-- End Small Banner -->

<!-- Start Product Area -->
<div class="product-area section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h2>Sản phẩm thịnh hành</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="product-info">
                    <div class="nav-main">
                        <!-- Tab Nav -->
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#cpu"
                                                    role="tab">CPU</a></li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#mainboard" role="tab">Mainboard</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#vga" role="tab">VGA</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#ram" role="tab">Ram</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#ssd" role="tab">SSD</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#tainghe" role="tab">Tai
                                nghe</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#banphim" role="tab">Bàn
                                phím</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#chuot" role="tab">Chuột</a>
                            </li>
                        </ul>
                        <!--/ End Tab Nav -->
                    </div>
                    <div class="tab-content" id="myTabContent">
                        <!-- Start Single Tab -->
                        <!-- Start Single Tab -->
                        <div class="tab-pane fade active show" id="cpu" role="tabpanel">
                            <div class="tab-single">
                                <div class="row">

                                    <c:forEach items="${cpu.getList()}" var="r">

                                        <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="<c:url value="/chi-tiet-san-pham?id=${r.getId()}"/>">
                                                        <img class="default-img"
                                                             src="<c:url value="${r.getImage_link()}"/>"
                                                             alt="#">
                                                    </a>
                                                    <div class="button-head">
                                                        <div class="product-action">
                                                            <a title="" href="#"><i
                                                                    class="ti-bag"></i><span>Mua ngay</span></a>
                                                            <a title="" href="#"><i class=" ti-heart "></i><span>Yêu
                                        thích</span></a>

                                                        </div>
                                                        <div class="product-action-2">
                                                            <a title=""
                                                               href="<c:url value="/add-cart?id=${r.getId()}"/>">Thêm
                                                                vào giỏ</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h3>
                                                        <a href="<c:url value="/chi-tiet-san-pham?id=${r.getId()}"/>">${r.getName()}</a>
                                                    </h3>
                                                    <div class="product-price">
                                                        <span>${r.getGiaString(r.getPrice())}đ</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <!--/ End Single Tab -->
                        <!--/ End Single Tab -->
                        <!-- Start Single Tab -->
                        <div class="tab-pane fade" id="mainboard" role="tabpanel">
                            <div class="tab-single">
                                <div class="row">

                                    <c:forEach items="${main.getList()}" var="m">

                                        <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="<c:url value="/chi-tiet-san-pham?id=${m.getId()}"/>">
                                                        <img class="default-img"
                                                             src="<c:url value="${m.getImage_link()}"/>"
                                                             alt="#">
                                                    </a>
                                                    <div class="button-head">
                                                        <div class="product-action">
                                                            <a title="" href="#"><i
                                                                    class="ti-bag"></i><span>Mua ngay</span></a>
                                                            <a title="" href="#"><i class=" ti-heart "></i><span>Yêu
                                        thích</span></a>

                                                        </div>
                                                        <div class="product-action-2">
                                                            <a title=""
                                                               href="<c:url value="/add-cart?id=${m.getId()}"/>">Thêm
                                                                vào giỏ</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h3>
                                                        <a href="<c:url value="/chi-tiet-san-pham?id=${m.getId()}"/>">${m.getName()}</a>
                                                    </h3>
                                                    <div class="product-price">
                                                        <span>${m.getGiaString(m.getPrice())}đ</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <!--/ End Single Tab -->
                        <!-- Start Single Tab -->
                        <div class="tab-pane fade" id="vga" role="tabpanel">
                            <div class="tab-single">
                                <div class="row">

                                    <c:forEach items="${vga.getList()}" var="v">

                                        <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="<c:url value="/chi-tiet-san-pham?id=${v.getId()}"/>">
                                                        <img class="default-img"
                                                             src="<c:url value="${v.getImage_link()}"/>"
                                                             alt="#">
                                                    </a>
                                                    <div class="button-head">
                                                        <div class="product-action">
                                                            <a title="" href="#"><i
                                                                    class="ti-bag"></i><span>Mua ngay</span></a>
                                                            <a title="" href="#"><i class=" ti-heart "></i><span>Yêu
                                        thích</span></a>

                                                        </div>
                                                        <div class="product-action-2">
                                                            <a title=""
                                                               href="<c:url value="/add-cart?id=${v.getId()}"/>">Thêm
                                                                vào giỏ</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h3>
                                                        <a href="<c:url value="/chi-tiet-san-pham?id=${v.getId()}"/>">${v.getName()}</a>
                                                    </h3>
                                                    <div class="product-price">
                                                        <span>${v.getGiaString(v.getPrice())}đ</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <!--/ End Single Tab -->
                        <!-- Start Single Tab -->
                        <div class="tab-pane fade" id="ram" role="tabpanel">
                            <div class="tab-single">
                                <div class="row">

                                    <c:forEach items="${ram.getList()}" var="r">

                                        <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="<c:url value="/chi-tiet-san-pham?id=${r.getId()}"/>">
                                                        <img class="default-img"
                                                             src="<c:url value="${r.getImage_link()}"/>"
                                                             alt="#">
                                                    </a>
                                                    <div class="button-head">
                                                        <div class="product-action">
                                                            <a title="" href="#"><i
                                                                    class="ti-bag"></i><span>Mua ngay</span></a>
                                                            <a title="" href="#"><i class=" ti-heart "></i><span>Yêu
                                        thích</span></a>

                                                        </div>
                                                        <div class="product-action-2">
                                                            <a title=""
                                                               href="<c:url value="/add-cart?id=${r.getId()}"/>">Thêm
                                                                vào giỏ</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h3>
                                                        <a href="<c:url value="/chi-tiet-san-pham?id=${r.getId()}"/>">${r.getName()}</a>
                                                    </h3>
                                                    <div class="product-price">
                                                        <span>${r.getGiaString(r.getPrice())}đ</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <!--/ End Single Tab -->
                        <!-- Start Single Tab -->
                        <div class="tab-pane fade" id="ssd" role="tabpanel">
                            <div class="tab-single">
                                <div class="row">

                                    <c:forEach items="${ssd.getList()}" var="r">

                                        <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="<c:url value="/chi-tiet-san-pham?id=${r.getId()}"/>">
                                                        <img class="default-img"
                                                             src="<c:url value="${r.getImage_link()}"/>"
                                                             alt="#">
                                                    </a>
                                                    <div class="button-head">
                                                        <div class="product-action">
                                                            <a title="" href="#"><i
                                                                    class="ti-bag"></i><span>Mua ngay</span></a>
                                                            <a title="" href="#"><i class=" ti-heart "></i><span>Yêu
                                        thích</span></a>

                                                        </div>
                                                        <div class="product-action-2">
                                                            <a title=""
                                                               href="<c:url value="/add-cart?id=${r.getId()}"/>">Thêm
                                                                vào giỏ</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h3>
                                                        <a href="<c:url value="/chi-tiet-san-pham?id=${r.getId()}"/>">${r.getName()}</a>
                                                    </h3>
                                                    <div class="product-price">
                                                        <span>${r.getGiaString(r.getPrice())}đ</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <!--/ End Single Tab -->
                        <!-- Start Single Tab -->
                        <div class="tab-pane fade" id="tainghe" role="tabpanel">
                            <div class="tab-single">
                                <div class="row">

                                    <c:forEach items="${tainghe.getList()}" var="r">

                                        <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="<c:url value="/chi-tiet-san-pham?id=${r.getId()}"/>">
                                                        <img class="default-img"
                                                             src="<c:url value="${r.getImage_link()}"/>"
                                                             alt="#">
                                                    </a>
                                                    <div class="button-head">
                                                        <div class="product-action">
                                                            <a title="" href="#"><i
                                                                    class="ti-bag"></i><span>Mua ngay</span></a>
                                                            <a title="" href="#"><i class=" ti-heart "></i><span>Yêu
                                        thích</span></a>

                                                        </div>
                                                        <div class="product-action-2">
                                                            <a title=""
                                                               href="<c:url value="/add-cart?id=${r.getId()}"/>">Thêm
                                                                vào giỏ</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h3>
                                                        <a href="<c:url value="/chi-tiet-san-pham?id=${r.getId()}"/>">${r.getName()}</a>
                                                    </h3>
                                                    <div class="product-price">
                                                        <span>${r.getGiaString(r.getPrice())}đ</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <!--/ End Single Tab -->
                        <!-- Start Single Tab -->
                        <div class="tab-pane fade" id="banphim" role="tabpanel">
                            <div class="tab-single">
                                <div class="row">

                                    <c:forEach items="${banphim.getList()}" var="r">

                                        <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="<c:url value="/chi-tiet-san-pham?id=${r.getId()}"/>">
                                                        <img class="default-img"
                                                             src="<c:url value="${r.getImage_link()}"/>"
                                                             alt="#">
                                                    </a>
                                                    <div class="button-head">
                                                        <div class="product-action">
                                                            <a title="" href="#"><i
                                                                    class="ti-bag"></i><span>Mua ngay</span></a>
                                                            <a title="" href="#"><i class=" ti-heart "></i><span>Yêu
                                        thích</span></a>

                                                        </div>
                                                        <div class="product-action-2">
                                                            <a title=""
                                                               href="<c:url value="/add-cart?id=${r.getId()}"/>">Thêm
                                                                vào giỏ</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h3>
                                                        <a href="<c:url value="/chi-tiet-san-pham?id=${r.getId()}"/>">${r.getName()}</a>
                                                    </h3>
                                                    <div class="product-price">
                                                        <span>${r.getGiaString(r.getPrice())}đ</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <!--/ End Single Tab -->
                        <!-- Start Single Tab -->
                        <div class="tab-pane fade" id="chuot" role="tabpanel">
                            <div class="tab-single">
                                <div class="row">

                                    <c:forEach items="${chuot.getList()}" var="r">

                                        <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                            <div class="single-product">
                                                <div class="product-img">
                                                    <a href="<c:url value="/chi-tiet-san-pham?id=${r.getId()}"/>">
                                                        <img class="default-img"
                                                             src="<c:url value="${r.getImage_link()}"/>"
                                                             alt="#">
                                                    </a>
                                                    <div class="button-head">
                                                        <div class="product-action">
                                                            <a title="" href="#"><i
                                                                    class="ti-bag"></i><span>Mua ngay</span></a>
                                                            <a title="" href="#"><i class=" ti-heart "></i><span>Yêu
                                        thích</span></a>

                                                        </div>
                                                        <div class="product-action-2">
                                                            <a title=""
                                                               href="<c:url value="/add-cart?id=${r.getId()}"/>">Thêm
                                                                vào giỏ</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h3>
                                                        <a href="<c:url value="/chi-tiet-san-pham?id=${r.getId()}"/>">${r.getName()}</a>
                                                    </h3>
                                                    <div class="product-price">
                                                        <span>${r.getGiaString(r.getPrice())}đ</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <!--/ End Single Tab -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Product Area -->
<div class="container">
    <hr style=color:#e4e4e4;>
</div>


<!-- Start Most Popular -->
<div class="product-area most-popular section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h2>Sản phẩm HOT</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="owl-carousel popular-slider">
                    <!-- Start Single Product -->
                    <div class="single-product">
                        <div class="product-img">
                            <a href="${pageContext.servletContext.contextPath}/chi-tiet-san-pham?id=26">
                                <img class="default-img"
                                     src="<c:url value="/templates/web/images/collection-trending-ram-items/kingston_hyperx_fury_rgb_16gb.jpg"/>"
                                     alt="#">

                            </a>
                            <div class="button-head">
                                <div class="product-action">
                                    <a title="" href="shopingcart.jsp"><i
                                            class=" ti-bag"></i><span>Mua ngay</span></a>
                                    <a title="" href="#"><i class=" ti-heart "></i><span>Yêu thích</span></a>


                                </div>
                                <div class="product-action-2">
                                    <a title="" href="${pageContext.servletContext.contextPath}/add-cart?id=26">Thêm vào giỏ</a>
                                </div>
                            </div>
                        </div>
                        <div class="product-content">
                            <h3><a href="${pageContext.servletContext.contextPath}/chi-tiet-san-pham?id=26">RAM Kington Hyper Fury 16GB</a></h3>
                            <div class="product-price">
                                <span>3.000.000₫</span>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Product -->
                    <!-- Start Single Product -->
                    <div class="single-product">
                        <div class="product-img">
                            <a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=45">
                                <img class="default-img"
                                     src="<c:url value="/templates/web/images/collectiion-trending-ssd-items/samsung970_1TB.jpg"/>"
                                     alt="#">

                            </a>
                            <div class="button-head">
                                <div class="product-action">
                                    <a title="" href="shopingcart.jsp"><i
                                            class=" ti-bag"></i><span>Mua ngay</span></a>
                                    <a title="" href="#"><i class=" ti-heart "></i><span>Yêu thích</span></a>


                                </div>
                                <div class="product-action-2">
                                    <a title="" href="${pageContext.servletContext.contextPath }/add-cart?id=45">Thêm vào giỏ</a>
                                </div>
                            </div>
                        </div>
                        <div class="product-content">
                            <h3><a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=45">SSD Samsung 970 1TB</a></h3>
                            <div class="product-price">
                                <span class="old">7.390.000 ₫</span>
                                <span>4.936.416 ₫</span>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Product -->
                    <!-- Start Single Product -->
                    <div class="single-product">
                        <div class="product-img">
                            <a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=46">
                                <img class="default-img"
                                     src="<c:url value="/templates/web/images/collection-hot-items/TAI NGHE RAZER HAMMERHEAD PRO V2.jpg"/>"
                                     alt="#">
                                <span class="out-of-stock">Hot</span>
                            </a>
                            <div class="button-head">
                                <div class="product-action">
                                    <a title="" href="shopingcart.jsp"><i
                                            class=" ti-bag"></i><span>Mua ngay</span></a>
                                    <a title="" href="#"><i class=" ti-heart "></i><span>Yêu thích</span></a>


                                </div>
                                <div class="product-action-2">
                                    <a title="" href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=46">Thêm vào giỏ</a>
                                </div>
                            </div>
                        </div>
                        <div class="product-content">
                            <h3><a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=46">Tai nghe RAZER HAMMERHEAD PRO V2</a></h3>
                            <div class="product-price">
                                <span>1.850.000 ₫</span>
                            </div>
                        </div>
                    </div>
                    <div class="single-product">
                        <div class="product-img">
                            <a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=1">
                                <img class="default-img"
                                     src="<c:url value="/templates/web/images/collection-trending-cpu-items-page1/cpu-i5-8400.jpg"/>"
                                     alt="#">
                            </a>
                            <div class="button-head">
                                <div class="product-action">
                                    <a title="" href="shopingcart.jsp"><i
                                            class=" ti-bag"></i><span>Mua ngay</span></a>
                                    <a title="" href="#"><i class=" ti-heart "></i><span>Yêu thích</span></a>


                                </div>
                                <div class="product-action-2">
                                    <a title="" href="${pageContext.servletContext.contextPath }/add-cart?id=1">Thêm vào giỏ</a>
                                </div>
                            </div>
                        </div>
                        <div class="product-content">
                            <h3><a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=1">CPU Intel I5-8400 8th GEN</a></h3>
                            <div class="product-price">
                                <span>5.000.000₫</span>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Product -->
                    <div class="single-product">
                        <div class="product-img">
                            <a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=48">
                                <img class="default-img"
                                     src="<c:url value="/templates/web/images/collection-hot-items/Chuột Akko Hamster Wireless.jpg"/>"
                                     alt="#">
                                <span class="out-of-stock">Hot</span>
                            </a>
                            <div class="button-head">
                                <div class="product-action">
                                    <a title="" href="shopingcart.jsp"><i
                                            class=" ti-bag"></i><span>Mua ngay</span></a>
                                    <a title="" href="#"><i class=" ti-heart "></i><span>Yêu thích</span></a>


                                </div>
                                <div class="product-action-2">
                                    <a title="" href="${pageContext.servletContext.contextPath }/add-cart?id=48">Thêm vào giỏ</a>
                                </div>
                            </div>
                        </div>
                        <div class="product-content">
                            <h3><a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=48">Chuột Akko Hamster Wireless</a></h3>
                            <div class="product-price">
                                <span>1.600.000 ₫</span>
                            </div>
                        </div>
                    </div>
                    <div class="single-product">
                        <div class="product-img">
                            <a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=42">
                                <img class="default-img"
                                     src="<c:url value="/templates/web/images/collection-hot-items/Chuột Razer Basilisk Ultimate.jpg"/>"
                                     alt="#">
                                <span class="out-of-stock">Hot</span>
                            </a>
                            <div class="button-head">
                                <div class="product-action">
                                    <a title="" href="shopingcart.jsp"><i
                                            class=" ti-bag"></i><span>Mua ngay</span></a>
                                    <a title="" href="#"><i class=" ti-heart "></i><span>Yêu thích</span></a>


                                </div>
                                <div class="product-action-2">
                                    <a title="" href="${pageContext.servletContext.contextPath }/add-cart?id=42">Thêm vào giỏ</a>
                                </div>
                            </div>
                        </div>
                        <div class="product-content">
                            <h3><a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=42">Chuột Razer Basilisk Ultimate</a></h3>
                            <div class="product-price">
                                <span>4.450.000 ₫</span>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Most Popular Area -->

<!-- Start Shop Home List  -->
<section class="shop-home-list section">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-12">
                <div class="row">
                    <div class="col-12">
                        <div class="shop-section-title">
                            <h1>Đang giảm giá</h1>
                        </div>
                    </div>
                </div>
                <!-- Start Single List  -->
                <div class="single-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="list-image overlay">
                                <img class="default-img"
                                     src="<c:url value="/templates/web/images/collection-trending-case-items/unnamed (31).webp"/>"
                                     alt="#">
                                <a href="${pageContext.servletContext.contextPath }/add-cart?id=105" class="buy"><i class="ti-bag"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h4 class="title"><a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=105">Case máy tính Sahara D6</a></h4>
                                <p class="price with-discount">2.515.000đ</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single List  -->
                <!-- Start Single List  -->
                <div class="single-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="list-image overlay">
                                <img src="<c:url value="/templates/web/images/collection-shopping-items/collection-top-sale/GSKILL TRIDENT Z RGB(8G DDR4 1x8G 3000 cas16 ).jpg"/> "
                                     alt="#">
                                <a href="${pageContext.servletContext.contextPath }/add-cart?id=98" class="buy"><i class="ti-bag"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h5 class="title"><a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=98">GSKILL TRIDENT Z RGB (8G DDR4 1x8G 3000)</a></h5>
                                <p class="price with-discount">1.250.000₫</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single List  -->
                <!-- Start Single List  -->
                <div class="single-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="list-image overlay">
                                <img class="default-img"
                                     src="<c:url value="/templates/web/images/collection-trending-Vga-items/msi_gtx1650.jpg"/>"
                                     alt="#" style="width: 113px;">
                                <a href="${pageContext.servletContext.contextPath }/add-cart?id=20" class="buy"><i class="ti-bag"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h5 class="title"><a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=20">MSI GTX 1660Ti</a></h5>
                                <p class="price with-discount">3.000.000₫</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="list-image overlay">
                                <img class="default-img"
                                     src="<c:url value="/templates/web/images/collection-trending-psu-items-page1/unnamed (31).webp"/>"
                                     alt="#">
                                <a href="${pageContext.servletContext.contextPath }/add-cart?id=97" class="buy"><i class="ti-bag"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h5 class="title"><a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=97">Nguồn máy tính AcBel Tora - 470W</a>
                                </h5>
                                <p class="price with-discount">760.000đ</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single List  -->
            </div>
            <div class="col-lg-4 col-md-6 col-12">
                <div class="row">
                    <div class="col-12">
                        <div class="shop-section-title">
                            <h1>Bán chạy nhất</h1>
                        </div>
                    </div>
                </div>
                <!-- Start Single List  -->
                <div class="single-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="list-image overlay">
                                <img src="<c:url value="/templates/web/images/collection-shopping-items/collection-best-sale/ANNL Colinear.jpg"/>"
                                     alt="#">
                                <a href="${pageContext.servletContext.contextPath }/add-cart?id=106" class="buy"><i class="ti-bag"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h5 class="title"><a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=106">P.V.B Collection</a></h5>
                                <p class="price with-discount">96.696.000₫</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single List  -->
                <!-- Start Single List  -->
                <div class="single-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="list-image overlay">
                                <img class="default-img"
                                     src="<c:url value="/templates/web/images/collection-trending-cpu-items-page1/g5400.jpg"/>"
                                     alt="#" style="width: 113px;">
                                <a href="${pageContext.servletContext.contextPath }/add-cart?id=2" class="buy"><i class="ti-bag"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h5 class="title"><a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=2">CPU Intel Pentium G5400</a></h5>
                                <p class="price with-discount">2.000.000₫</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single List  -->
                <!-- Start Single List  -->
                <div class="single-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="list-image overlay">
                                <img class="default-img"
                                     src="<c:url value="/templates/web/images/collection-treding-mainboard-items-page3/unnamed (10).webp"/>"
                                     alt="#">

                                <a href="${pageContext.servletContext.contextPath }/add-cart?id=100" class="buy"><i class="ti-bag"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h5 class="title"><a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=100">Mainboard ASUS Rog Strix Z490-G
                                    Gaming</a></h5>
                                <p class="price with-discount">6.180.000đ</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="list-image overlay">
                                <img class="default-img"
                                     src="<c:url value="/templates/web/images/collection-trending-gear-items-page2/unnamed (28).webp"/>"
                                     alt="#"> \
                                <a href="${pageContext.servletContext.contextPath }/add-cart?id=101" class="buy"><i class="ti-bag"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h5 class="title"><a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=101">Chuột gaming Corsair Ironclaw</a>
                                </h5>
                                <p class="price with-discount">1.790.000đ</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single List  -->
            </div>
            <div class="col-lg-4 col-md-6 col-12">
                <div class="row">
                    <div class="col-12">
                        <div class="shop-section-title">
                            <h1>Yêu thích nhất</h1>
                        </div>
                    </div>
                </div>
                <!-- Start Single List  -->
                <div class="single-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="list-image overlay">
                                <img class="default-img"
                                     src="<c:url value="/templates/web/images/collection-trending-gear-items-page2/unnamed (37).webp"/>"
                                     alt="#">
                                <a href="${pageContext.servletContext.contextPath }/add-cart?id=102" class="buy"><i class="ti-bag"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h5 class="title"><a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=102">Tai nghe Over-ear EAGLEND F6 (Bạc)</a>
                                </h5>
                                <p class="price with-discount">560.000đ</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single List  -->
                <!-- Start Single List  -->
                <div class="single-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="list-image overlay">
                                <img src="<c:url value="/templates/web/images/collection-shopping-items/collection-top-wish/RAM AORUS RGB Memory.jpg"/>"
                                     alt="#">
                                <a href="${pageContext.servletContext.contextPath }/add-cart?id=103" class="buy"><i class="ti-bag"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h5 class="title"><a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=103">RAM AORUS RGB Memory (kèm Demo kit)</a>
                                </h5>
                                <p class="price with-discount">3.790.000₫</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single List  -->
                <!-- Start Single List  -->
                <div class="single-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="list-image overlay">
                                <img class="default-img"
                                     src="<c:url value="/templates/web/images/collection-trending-ram-items-page2/unnamed (32).webp"/>"
                                     alt="#">
                                <a href="${pageContext.servletContext.contextPath }/add-cart?id=104" class="buy"><i class="ti-bag"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h5 class="title"><a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=104">RAM GIGABYTE 8GB DDR4-2666</a></h5>
                                <p class="price with-discount">1.090.000đ</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single-list">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <div class="list-image overlay">
                                <img class="default-img"
                                     src="<c:url value="/templates/web/images/collection-trending-psu-items-page1/unnamed (31).webp"/>"
                                     alt="#">
                                <a href="${pageContext.servletContext.contextPath }/add-cart?id=97" class="buy"><i class="fa fa-shopping-bag"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-12 no-padding">
                            <div class="content">
                                <h5 class="title"><a href="${pageContext.servletContext.contextPath }/chi-tiet-san-pham?id=97">Nguồn máy tính AcBel Tora - 470W</a>
                                </h5>
                                <p class="price with-discount">760.000₫</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single List  -->
            </div>
        </div>
    </div>
</section>
<!-- End Shop Home List  -->

<!-- Start Shop Services Area -->
<section class="shop-services section home">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Service -->
                <div class="single-service">
                    <i class="ti-rocket"></i>
                    <h4>Miễn phí giao hàng</h4>
                    <p>Cho đơn hàng </p>
                    <p>trên 1.000.000₫.</p>
                </div>
                <!-- End Single Service -->
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Service -->
                <div class="single-service">
                    <i class="ti-reload"></i>
                    <h4>Miễn phí trả hàng</h4>
                    <p>Đổi trả miễn phí trong</p>
                    <p> vòng 7 ngày.</p>
                </div>
                <!-- End Single Service -->
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Service -->
                <div class="single-service">
                    <i class="ti-lock"></i>
                    <h4>Bảo mật thanh toán</h4>
                    <p>100% bảo mật thông </p>
                    <p>tin khách hàng.</p>
                </div>
                <!-- End Single Service -->
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <!-- Start Single Service -->
                <div class="single-service">
                    <i class="ti-tag"></i>
                    <h4>Giá cả tốt nhất</h4>
                    <p>Giá rẻ nhất trên </p>
                    <p>thị trường.</p>
                </div>
                <!-- End Single Service -->
            </div>
        </div>
    </div>
</section>
<!-- End Shop Services Area -->

</body>

</html>