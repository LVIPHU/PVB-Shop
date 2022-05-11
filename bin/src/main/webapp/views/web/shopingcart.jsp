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
    <title>Giỏ hàng</title>
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
                        <li class="active"><a href="shopingcart.jsp">Giỏ hàng</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumbs -->
<section class="shop checkout section">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-12">
                <div class="checkout-form">
                    <h2>Giỏ hàng của bạn</h2>
                    <p>Đây là tất cả sản phẩm mà bạn đã chọn</p>
                    <!-- Form -->
                        <div class="row" style="font-weight: bold;">
                            <div class="col-2">
                                ẢNH SẢN PHẨM
                            </div>
                            <div class="col-4">
                                TÊN SẢN PHẢM
                            </div>
                            <div class="col-4">
                                GIÁ TIỀN
                            </div>
                            <div class="col-2">
                                XOÁ
                            </div>
                        </div>
                        <br>
                        <c:forEach items="${cart.getList()}" var="c">
                            <div class="row" style="background: #F6F7FB;">
                                <div class="col-2">
                                    <a href="<c:url value="/chi-tiet-san-pham?id=${c.getProduct_id()}"/>">
                                        <img src="${c.getAnh()}" alt=""
                                             style="width: 50px; height: 50px">
                                    </a>
                                </div>
                                <div class="col-4" style="margin: auto;">
                                    <a href="<c:url value="/chi-tiet-san-pham?id=${c.getProduct_id()}"/>">${c.getTen()}</a>
                                </div>
                                <div class="col-4" style="margin: auto;">
                                        ${c.getGiaString(c.getGiatien())}đ
                                </div>
                                <div class="col-2" style="margin: auto;">
                                    <a href="<c:url value="/delete-cart?id=${c.getProduct_id()}"/>">
                                        <button style="padding: 5px">Xoá</button>
                                    </a>
                                </div>
                            </div>

                        </c:forEach>

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
                                <li>Sản phẩm
                                    <span>
                                     <c:if test="${not empty cart}">
                                         ${cart.getGiaString(cart.tongGia())}đ
                                     </c:if>
                                    </span>
                                </li>
                                <li>+ Phí giao hàng<span>0₫</span></li>
                                <li class="last">Tổng cộng<span>
                                    <c:if test="${not empty cart}">
                                        ${cart.getGiaString(cart.tongGia())}đ
                                    </c:if>
                                </span></li>
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
                                <img src="/templates/web/images/payment-method.png" alt="#">
                            </div>
                        </div>
                        <!--/ End Payment Method Widget -->
                        <!-- Button Widget -->
                        <div class="single-widget get-button">
                            <div class="content">
                                <div class="button">
                                    <a href="<c:url value="/thanh-toan"/>" class="btn">TIẾP TỤC THANH TOÁN</a>
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
<!-- Product Style -->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span class="ti-close"
                                                                                                  aria-hidden="true"></span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row no-gutters">
                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                        <!-- Product Slider -->
                        <div class="product-gallery">
                            <div class="quickview-slider-active">
                                <div class="single-slider">
                                    <img src="/templates/web/images/collection-checkout-items/Laptop LG Gram.jpg"
                                         alt="#">

                                </div>
                                <div class="single-slider">
                                    <img src="/templates/web/images/collection-checkout-items/Màn hình cong MSI OPTIX G27C4-2.jpg"
                                         alt="#">
                                </div>
                                <div class="single-slider">
                                    <img src="/templates/web/images/collection-checkout-items/Màn hình cong MSI OPTIX G27C4-3.jpg"
                                         alt="#">
                                </div>
                                <div class="single-slider">
                                    <img src="/templates/web/images/collection-checkout-items/Màn hình cong MSI OPTIX G27C4-4.jpg"
                                         alt="#">
                                </div>
                                <div class="single-slider">
                                    <img src="/templates/web/images/collection-checkout-items/Màn hình cong MSI OPTIX G27C4-1.jpg"
                                         alt="#">
                                </div>
                                <div class="single-slider">
                                    <img src="/templates/web/images/collection-checkout-items/Màn hình cong MSI OPTIX G27C4-5.jpg"
                                         alt="#">
                                </div>

                            </div>
                        </div>
                        <!-- End Product slider -->
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                        <div class="quickview-content">
                            <h2>Laptop LG Gram 2020 17Z90N-V.AH75A5 - Dark Silver</h2>
                            <div class="quickview-ratting-review">
                                <div class="quickview-ratting-wrap">
                                    <div class="quickview-ratting">
                                        <i class="yellow fa fa-star"></i>
                                        <i class="yellow fa fa-star"></i>
                                        <i class="yellow fa fa-star"></i>
                                        <i class="yellow fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <a href="#"> (100 người đã đánh giá)</a>
                                </div>

                            </div>
                            <h3 style="color: red;">38.990.000₫</h3>
                            <div class="quickview-peragraph">
                                <p>Laptop LG Gram 17Z90N-V.AH75A5 là sản phẩm mà LG coi chủ lực của hãng trong thời
                                    gian tới đây. Sản phẩm với thiết kế đẹp ấn tượng được LG trang bị rất nhiều công
                                    nghệ hiện đại hứa hẹn sẽ là người bạn đồng hành tin cậy cho người sử dụng.</p>
                            </div>
                            <div class="size">
                                <div class="row">

                                    <div class="col-lg-12 col-12">
                                        <h5 class="title">Màu sắc</h5>
                                        <select>
                                            <option>Gold</option>
                                            <option>Sliver</option>
                                            <option>Black</option>
                                            <option>White</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="quantity">
                                <!-- Input Order -->
                                <div class="input-group">
                                    <div class="button minus">
                                        <button type="button" class="btn btn-primary btn-number" disabled="disabled"
                                                data-type="minus" data-field="quant[1]">
                                            <i class="ti-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" name="quant[1]" class="input-number" data-min="1"
                                           data-max="1000" value="1">
                                    <div class="button plus">
                                        <button type="button" class="btn btn-primary btn-number" data-type="plus"
                                                data-field="quant[1]">
                                            <i class="ti-plus"></i>
                                        </button>
                                    </div>
                                </div>
                                <!--/ End Input Order -->
                            </div>
                            <div class="add-to-cart">
                                <a href="#" class="btn">Thêm vào giỏ</a>
                                <a href="#" class="btn min"><i class="ti-heart"></i></a>

                            </div>
                            <div class="default-social">
                                <h4 class="share-now">Chia sẻ:</h4>
                                <ul>
                                    <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a class="dribbble" href="#"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal end -->
<script type="text/javascript">
    $('input.input-qty').each(function () {
        var $this = $(this),
            qty = $this.parent().find('.is-form'),
            min = Number($this.attr('min')),
            max = Number($this.attr('max'))
        if (min == 0) {
            var d = 0
        } else d = min
        $(qty).on('click', function () {
            if ($(this).hasClass('minus')) {
                if (d > min) d += -1
            } else if ($(this).hasClass('plus')) {
                var x = Number($this.val()) + 1
                if (x <= max) d += 1
            }
            $this.attr('value', d).val(d)
        })
    })
</script>
</body>
</html>