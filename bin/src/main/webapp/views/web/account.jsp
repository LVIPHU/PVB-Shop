<%@ page import="com.ltweb.model.ProductModel" %>
<%@ page import="com.ltweb.service.impl.ProductService" %>
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
    <title>Tài khoản</title>

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
                        <li class="active"><a href="<c:url value="/tai-khoan"/>">Tài khoản</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<c:if test="${not empty user}">
    <div class="container">
        <br><br>
        <div class="row my-2 user__border">

            <ul class="nav nav-tabs">
                <li class="">
                    <a href="" data-target="#profile" data-toggle="tab" class="nav-link active nav-link-2"><i
                            class="fas fa-user" style="color: #f9a31d;"></i>&nbsp;Tài Khoản Của Tôi</a>
                </li>
                <li class="">
                    <a href="" data-target="#edit" data-toggle="tab" class="nav-link nav-link-2"><i
                            class="fas fa-sticky-note" style="color: #f9a31d;"></i>&nbsp;Đơn Mua Của Tôi</a>
                </li>
                <li class="">
                    <a href="" data-target="#messages" data-toggle="tab" class="nav-link nav-link-2"><i
                            class="fas fa-unlock-alt" style="color: #f9a31d;"></i>&nbsp;Thay Đổi Mật Khẩu</a>
                </li>
            </ul>
            <div class="tab-content py-5" style="width: 100%">
                <div class="tab-pane active" id="profile">
                    <div class="row">
                        <div class="col-md-12">
                            <header>
                                <h5>Hồ Sơ Của Tôi</h5>
                                <div class="content">Quản lý thông tin hồ sơ để bảo mật tài khoản</div>
                            </header>
                            <hr>
                            <div class="row">
                                <label class="col-md-3 control-label">Tên Đăng Nhập</label>
                                <div class="col-lg-6 col-md-9">
                                        ${user.getUsername()}
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <label class="col-md-3 control-label"> Tên </label>
                                <div class="col-lg-6 col-md-9">
                                        ${user.getName()}
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <label class="col-md-3 control-label">Email </label>
                                <div class="col-lg-6 col-md-9">
                                        ${user.getEmail()}
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <label class="col-md-3 control-label">Số Điện Thoại </label>
                                <div class="col-lg-6 col-md-9">
                                        ${user.getPhone()}
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <label class="col-md-3 control-label">Địa Chỉ</label>
                                <div class="col-lg-6 col-md-9">
                                        ${user.getAddress()}
                                    <br>
                                    <br>
                                    <form action="/sua-thong-tin">
                                        <a class="form-control" type="text" data-toggle="modal"
                                           data-target="#exampleModal" name=""
                                           style="width: 150px;height: 50px;background-color: #F6F7FB;border: none;">
                                            Sửa thông tin</a>
                                        <div class="modal fade" id="exampleModal" tabindex="-1"
                                             aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content"
                                                     style="width: 500px; margin: auto;padding: 15px; padding-top: 56px; padding-left: 34px;">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="">
                                                            <div class="">
                                                                <h5>Thông Tin</h5>
                                                                <div class="form-group">
                                                                    <label>Họ tên</label>
                                                                    <input type="text" class="form-control"
                                                                           style=" height: 42px;" name="name">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Số điện thoại</label>
                                                                    <input type="text" class="form-control"
                                                                           style=" height: 42px;" name="phone">
                                                                </div>
                                                            </div>

                                                            <div class="">
                                                                <h5>Địa Chỉ</h5>
                                                                <textarea name="address" id="" cols="30"
                                                                          rows="10"></textarea>
                                                            </div>
                                                            <br>
                                                            <div class="modal-footer">
                                                                <button type="submit" class="btn btn-danger"
                                                                        style="background-color: #bd2130;">Đồng ý
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </a>
                                    </form>
                                </div>
                            </div>
                            <br>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="messages">
                    <div class="row">
                        <div class="col-md-12">
                            <header>
                                <h5>Thay Đổi Mật Khẩu</h5>
                                <div class="content">Để bảo mật tài khoản, vui lòng không chia sẻ mật khẩu cho người
                                    khác
                                </div>
                            </header>
                            <hr>
                            <form action="/doi-mat-khau" method="post" class="formAcount validate clearfix">
                                <div class="form-group clearfix">
                                    <div class="row">
                                        <label class="col-md-3 control-label"> Mật khẩu cũ: </label>
                                        <div class="col-lg-6 col-md-9">
                                            <input type="password" name="old_pass"
                                                   class="validate[required,minSize[4],maxSize[32]] form-control input-sm">
                                            <a href="<c:url value="/quen-mat-khau"/>" style="color: blue;">Quên mật
                                                khẩu?</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group clearfix">
                                    <div class="row">
                                        <label class="col-md-3 control-label"> Mật khẩu mới: </label>
                                        <div class="col-lg-6 col-md-9">
                                            <input type="password" name="new_pass"
                                                   class="validate[required,minSize[4],maxSize[32]] form-control input-sm">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group clearfix">
                                    <div class="row">
                                        <label class="col-md-3 control-label"> Xác nhận mật khẩu: </label>
                                        <div class="col-lg-6 col-md-9">
                                            <input type="password" name="repass"
                                                   class="validate[required,minSize[4],maxSize[32]] form-control input-sm">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group clearfix">
                                    <div class="row">
                                        <label class="col-md-3 control-label"></label>
                                        <div class="col-lg-6 col-md-9">
                                            <button type="submit" class="btn btn-warning"
                                                    style="border-color: black;">LƯU THAY ĐỔI
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!--/row-->
                </div>

                <div class="tab-pane myorder__style" id="edit">
                    <div class="row">
                        <div class="col-2">
                            <strong style="margin-left: 26px;">Ảnh </strong>
                        </div>
                        <div class="col-4" style="margin:auto;">
                            <strong style="margin-left: 63px;">Tên Sản Phẩm</strong>
                        </div>
                        <div class="col-2">
                            <strong style="margin-left: 23px;">Giá</strong>

                        </div>
                        <div class="col-2" style="margin:auto;">
                            <strong>Trạng Thái</strong>
                        </div>
                        <div class="col-2" style="margin:auto;">
                            <strong>Thời Gian</strong>
                        </div>
                    </div>
                    <br>
                    <c:forEach items="${order.getList()}" var="o">
                        <div class="row" style="border: 1px solid #F6F7FB;background-color: #F6F7FB;">
                            <div class="col-2">
                                <div class="product-img">
                                    <a href="<c:url value="/chi-tiet-san-pham?id=${o.getMaSP()}"/>">
                                        <img class="default-img"
                                             src="${o.getImg()}"
                                             alt="#" style="width: 100px;">
                                    </a>
                                </div>

                            </div>
                            <div class="col-4" style="margin:auto;">
                                <h5><a href="<c:url value="/chi-tiet-san-pham?id=${o.getMaSP()}"/>">${o.getTen()}</a>
                                </h5><br>x1

                            </div>
                            <div class="col-2" style="margin:auto;">
                                    ${o.getGiaString(o.getGia())} đ

                            </div>
                            <div class="col-2" style="margin:auto;color: red;padding-left: 28px;">
                                    ${o.getTrangthai()}
                            </div>
                            <div class="col-2" style="margin:auto;">
                                    ${o.getTime()}

                            </div>
                        </div>
                    </c:forEach>
                </div>
                <!--/row-->
            </div>
        </div>
    </div>
</c:if>
<!--container end.//-->
</body>
</html>