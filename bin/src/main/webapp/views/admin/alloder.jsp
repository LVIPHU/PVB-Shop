<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>L.A.N | Tất cả đơn hàng</title>
</head>

<body>
<div class="info-product">
    <div class="container-fluid">
        <div class="row ">
            <div class="col-lg-12 col-md-12 ">
                <div class="card">

                    <div class="card-body">
                        <div class="row row-margin-top">
                            <div class="container-fluid">
                                <ul class="nav nav-tabs" id="myTab" role="tablist">


                                    <li class="nav-item">
                                        <a class="nav-link active" id="all-tab" data-toggle="tab" href="#all" role="tab"
                                           aria-controls="all" aria-selected="true">Tất cả</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="waitcofirm-tab" data-toggle="tab" href="#waitcofirm"
                                           role="tab" aria-controls="waitcofirm" aria-selected="false">Chờ xác nhận</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="waittaking-tab" data-toggle="tab" href="#waittaking"
                                           role="tab" aria-controls="waittaking" aria-selected="false">Chờ lấy hàng</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="shipping-tab" data-toggle="tab" href="#shipping"
                                           role="tab" aria-controls="shipping" aria-selected="false">Đang đi giao</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="complete-tab" data-toggle="tab" href="#complete"
                                           role="tab" aria-controls="complete" aria-selected="false">Đã giao</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="cancel.jsp">Đã hủy</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="return.jsp">Trả hàng & Hoàn tiền</a>
                                    </li>

                                </ul>

                                <div class="tab-content" id="myTabContent">


                                    <div class="tab-pane fade show active" id="all" role="tabpanel"
                                         aria-labelledby="all-tab">
                                        <!-- tất cả đơn hàng -->
                                        <div class="container-fluid">
                                            <div class="gap-sm"></div>
                                            <div class="row">
                                                <div class="col-lg-3 col-md-3 col-sm-5 col-5">
                                                    <div class="input-group mb-3">
                                                        <input type="text" class="form-control"
                                                               placeholder="Tìm mã đơn hàng..."
                                                               aria-label="Recipient's username"
                                                               aria-describedby="basic-addon2">
                                                        <div class="input-group-append">
                                                                        <span class="input-group-text" id="basic-addon"><i
                                                                                class="fa fa-search"
                                                                                aria-hidden="true"></i></button>
                                                                        </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-1 col-md-1 "></div>
                                                <div class="col-lg-7 col-md-7 col-sm-12 col-12">
                                                    <div class="container-fluid">
                                                        <div class="row">
                                                            <div class="col-lg-2 col-md-2">
                                                                <p style="margin-top: 10px;">Ngày đặt hàng
                                                                </p>
                                                            </div>
                                                            <div class="col-lg-3 col-md-3col-sm-6 col-6">
                                                                <div class="form-group row">
                                                                    <div class="col-12">
                                                                        <input class="form-control"
                                                                               type="datetime-local"
                                                                               value="2011-08-19T13:45:00"
                                                                        >
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-1 col-md-1">
                                                                <i class="fa fa-arrow-right"
                                                                   aria-hidden="true"
                                                                   style="margin-left: 20px;margin-top: 15px;"></i>
                                                            </div>
                                                            <div class="col-lg-3 col-md-3 col-sm-6 col-6">
                                                                <div class="form-group row">
                                                                    <div class="col-12">
                                                                        <input class="form-control"
                                                                               type="datetime-local"
                                                                               value="2011-08-19T13:45:00"
                                                                        >
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-3 col-md-3">
                                                                <button class="btn btn-primary"><i
                                                                        class="fa fa-print"
                                                                        aria-hidden="true"
                                                                        style="color: white !important;"></i>
                                                                    In hóa đơn
                                                                </button>
                                                            </div>

                                                        </div>
                                                    </div>


                                                </div>
                                                <div class="col-lg-1 col-md-1 "></div>
                                            </div>
                                            <div class="gap-xs"></div>
                                            <div class="row">
                                                <h3 style="color: black;">Đơn hàng</h3>
                                            </div>
                                            <div class="gap-xs"></div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <section class="section">
                                                        <div class="card">
                                                            <!-- all product-tab -->
                                                            <div class="card-body">
                                                                <table class='table table-striped'
                                                                >
                                                                    <thead>
                                                                    <tr>
                                                                        <th>Mã đơn hàng</th>
                                                                        <th>ID Khách hàng</th>
                                                                        <th>Địa chỉ nhận hàng</th>
                                                                        <th>Tổng tiền</th>
                                                                        <th>Ngày đặt hàng</th>
                                                                        <th>Ngày nhận hàng</th>
                                                                        <th>Ghi chú</th>
                                                                        <th>Trạng thái</th>

                                                                    </tr>
                                                                    </thead>
                                                                    <tbody>

                                                                    <tr>
                                                                        <td><a
                                                                                href="chitietdonhang.html">DH02</a>
                                                                        </td>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 13-11-2020</td>
                                                                        <td>09:10 14-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                            <span
                                                                                                    class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH01</a>
                                                                        </td>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-warning">Chờ
                                                                                                xác nhận</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-info">Đang
                                                                                                đi giao</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-warning">Chờ
                                                                                                xác nhận</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-danger">Đã
                                                                                                hủy</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-info">Đang
                                                                                                đi giao</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-warning">Chờ
                                                                                                xác nhận</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-danger">Đã
                                                                                                hủy</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-secondary">Chờ
                                                                                                lấy hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-danger">Đã
                                                                                                hủy</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-secondary">Chờ
                                                                                                lấy hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-info">Đang
                                                                                                đi giao</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-secondary">Chờ
                                                                                                lấy hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-info">Đang
                                                                                                đi giao</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-secondary">Chờ
                                                                                                lấy hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-info">Đang
                                                                                                đi giao</span>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-secondary">Chờ
                                                                                                lấy hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-danger">Đã
                                                                                                hủy</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-danger">Đã
                                                                                                hủy</span>
                                                                        </td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>

                                                    </section>
                                                </div>
                                            </div>
                                        </div>


                                    </div>

                                    <div class="tab-pane fade" id="waitcofirm" role="tabpanel"
                                         aria-labelledby="waitcofirm-tab">
                                        <!-- Chờ xác nhận -->
                                        <div class="container-fluid">
                                            <div class="gap-sm"></div>
                                            <div class="row">
                                                <div class="col-lg-3 col-md-3 col-sm-5 col-5">
                                                    <div class="input-group mb-3">
                                                        <input type="text" class="form-control"
                                                               placeholder="Tìm mã đơn hàng..."
                                                               aria-label="Recipient's username"
                                                               aria-describedby="basic-addon2">
                                                        <div class="input-group-append">
                                                                        <span class="input-group-text"><i
                                                                                class="fa fa-search"
                                                                                aria-hidden="true"></i></span>>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-1 col-md-1 "></div>
                                                <div class="col-lg-7 col-md-7 col-sm-12 col-12">
                                                    <div class="container-fluid">
                                                        <div class="row">
                                                            <div class="col-lg-2 col-md-2">
                                                                <p style="margin-top: 10px;">Ngày đặt hàng
                                                                </p>
                                                            </div>
                                                            <div class="col-lg-3 col-md-3col-sm-6 col-6">
                                                                <div class="form-group row">
                                                                    <div class="col-12">
                                                                        <input class="form-control"
                                                                               type="datetime-local"
                                                                               value="2011-08-19T13:45:00"
                                                                        >
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-1 col-md-1">
                                                                <i class="fa fa-arrow-right"
                                                                   aria-hidden="true"
                                                                   style="margin-left: 20px;margin-top: 15px;"></i>
                                                            </div>
                                                            <div class="col-lg-3 col-md-3 col-sm-6 col-6">
                                                                <div class="form-group row">
                                                                    <div class="col-12">
                                                                        <input class="form-control"
                                                                               type="datetime-local"
                                                                               value="2011-08-19T13:45:00"
                                                                        >
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-3 col-md-3">
                                                                <button class="btn btn-primary"><i
                                                                        class="fa fa-print"
                                                                        aria-hidden="true"
                                                                        style="color: white !important;"></i>
                                                                    In hóa đơn
                                                                </button>
                                                            </div>

                                                        </div>
                                                    </div>


                                                </div>
                                                <div class="col-lg-1 col-md-1 "></div>
                                            </div>
                                            <div class="gap-xs"></div>
                                            <div class="row">
                                                <h3 style="color: black;">Đơn hàng</h3>
                                            </div>
                                            <div class="gap-xs"></div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <section class="section">
                                                        <div class="card">
                                                            <!-- all product-tab -->
                                                            <div class="card-body">
                                                                <table class='table table-striped'
                                                                >
                                                                    <thead>
                                                                    <tr>
                                                                        <th>Mã đơn hàng</th>
                                                                        <th>ID Khách hàng</th>
                                                                        <th>Địa chỉ nhận hàng</th>
                                                                        <th>Tổng tiền</th>
                                                                        <th>Ngày đặt hàng</th>
                                                                        <th>Ngày nhận hàng</th>
                                                                        <th>Ghi chú</th>
                                                                        <th>Trạng thái</th>

                                                                    </tr>
                                                                    </thead>
                                                                    <tbody>


                                                                    <tr>
                                                                        <td><a
                                                                                href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                            <span
                                                                                                    class="badge bg-warning">Chờ
                                                                                                xác nhận</span>
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-warning">Chờ
                                                                                                xác nhận</span>
                                                                        </td>
                                                                    </tr>


                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-warning">Chờ
                                                                                                xác nhận</span>
                                                                        </td>
                                                                    </tr>


                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>

                                                    </section>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="waittaking" role="tabpanel"
                                         aria-labelledby="waittaking-tab">
                                        <!--  Chờ lấy hàng-->
                                        <div class="container-fluid">
                                            <div class="gap-sm"></div>
                                            <div class="row">
                                                <div class="col-lg-3 col-md-3 col-sm-5 col-5">
                                                    <div class="input-group mb-3">
                                                        <input type="text" class="form-control"
                                                               placeholder="Tìm mã đơn hàng..."
                                                               aria-label="Recipient's username"
                                                               aria-describedby="basic-addon2">
                                                        <div class="input-group-append">
                                                                        <span class="input-group-text"><i
                                                                                class="fa fa-search"
                                                                                aria-hidden="true"></i></span>>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-1 col-md-1 "></div>
                                                <div class="col-lg-7 col-md-7 col-sm-12 col-12">
                                                    <div class="container-fluid">
                                                        <div class="row">
                                                            <div class="col-lg-2 col-md-2">
                                                                <p style="margin-top: 10px;">Ngày đặt hàng
                                                                </p>
                                                            </div>
                                                            <div class="col-lg-3 col-md-3col-sm-6 col-6">
                                                                <div class="form-group row">
                                                                    <div class="col-12">
                                                                        <input class="form-control"
                                                                               type="datetime-local"
                                                                               value="2011-08-19T13:45:00"
                                                                        >
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-1 col-md-1">
                                                                <i class="fa fa-arrow-right"
                                                                   aria-hidden="true"
                                                                   style="margin-left: 20px;margin-top: 15px;"></i>
                                                            </div>
                                                            <div class="col-lg-3 col-md-3 col-sm-6 col-6">
                                                                <div class="form-group row">
                                                                    <div class="col-12">
                                                                        <input class="form-control"
                                                                               type="datetime-local"
                                                                               value="2011-08-19T13:45:00"
                                                                        >
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-3 col-md-3">
                                                                <button class="btn btn-primary"><i
                                                                        class="fa fa-print"
                                                                        aria-hidden="true"
                                                                        style="color: white !important;"></i>
                                                                    In hóa đơn
                                                                </button>
                                                            </div>

                                                        </div>
                                                    </div>


                                                </div>
                                                <div class="col-lg-1 col-md-1 "></div>
                                            </div>
                                            <div class="gap-xs"></div>
                                            <div class="row">
                                                <h3 style="color: black;">Đơn hàng</h3>
                                            </div>
                                            <div class="gap-xs"></div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <section class="section">
                                                        <div class="card">
                                                            <!-- all product-tab -->
                                                            <div class="card-body">
                                                                <table class='table table-striped'
                                                                >
                                                                    <thead>
                                                                    <tr>
                                                                        <th>Mã đơn hàng</th>
                                                                        <th>ID Khách hàng</th>
                                                                        <th>Địa chỉ nhận hàng</th>
                                                                        <th>Tổng tiền</th>
                                                                        <th>Ngày đặt hàng</th>
                                                                        <th>Ngày nhận hàng</th>
                                                                        <th>Ghi chú</th>
                                                                        <th>Trạng thái</th>

                                                                    </tr>
                                                                    </thead>
                                                                    <tbody>


                                                                    <tr>
                                                                        <td><a
                                                                                href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                            <span
                                                                                                    class="badge bg-secondary">Chờ
                                                                                                lấy hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-secondary">Chờ
                                                                                                lấy hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-secondary">Chờ
                                                                                                lấy hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-secondary">Chờ
                                                                                                lấy hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-secondary">Chờ
                                                                                                lấy hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>

                                                    </section>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="shipping" role="tabpanel"
                                         aria-labelledby="shipping-tab">
                                        <!-- Đang giao -->
                                        <div class="container-fluid">
                                            <div class="gap-sm"></div>
                                            <div class="row">
                                                <div class="col-lg-3 col-md-3 col-sm-5 col-5">
                                                    <div class="input-group mb-3">
                                                        <input type="text" class="form-control"
                                                               placeholder="Tìm mã đơn hàng..."
                                                               aria-label="Recipient's username"
                                                               aria-describedby="basic-addon2">
                                                        <div class="input-group-append">
                                                                        <span class="input-group-text"><i
                                                                                class="fa fa-search"
                                                                                aria-hidden="true"></i></span>>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-1 col-md-1 "></div>
                                                <div class="col-lg-7 col-md-7 col-sm-12 col-12">
                                                    <div class="container-fluid">
                                                        <div class="row">
                                                            <div class="col-lg-2 col-md-2">
                                                                <p style="margin-top: 10px;">Ngày đặt hàng
                                                                </p>
                                                            </div>
                                                            <div class="col-lg-3 col-md-3col-sm-6 col-6">
                                                                <div class="form-group row">
                                                                    <div class="col-12">
                                                                        <input class="form-control"
                                                                               type="datetime-local"
                                                                               value="2011-08-19T13:45:00"
                                                                        >
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-1 col-md-1">
                                                                <i class="fa fa-arrow-right"
                                                                   aria-hidden="true"
                                                                   style="margin-left: 20px;margin-top: 15px;"></i>
                                                            </div>
                                                            <div class="col-lg-3 col-md-3 col-sm-6 col-6">
                                                                <div class="form-group row">
                                                                    <div class="col-12">
                                                                        <input class="form-control"
                                                                               type="datetime-local"
                                                                               value="2011-08-19T13:45:00"
                                                                        >
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-3 col-md-3">
                                                                <button class="btn btn-primary"><i
                                                                        class="fa fa-print"
                                                                        aria-hidden="true"
                                                                        style="color: white !important;"></i>
                                                                    In hóa đơn
                                                                </button>
                                                            </div>

                                                        </div>
                                                    </div>


                                                </div>
                                                <div class="col-lg-1 col-md-1 "></div>
                                            </div>
                                            <div class="gap-xs"></div>
                                            <div class="row">
                                                <h3 style="color: black;">Đơn hàng</h3>
                                            </div>
                                            <div class="gap-xs"></div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <section class="section">
                                                        <div class="card">
                                                            <!-- all product-tab -->
                                                            <div class="card-body">
                                                                <table class='table table-striped'
                                                                >
                                                                    <thead>
                                                                    <tr>
                                                                        <th>Mã đơn hàng</th>
                                                                        <th>ID Khách hàng</th>
                                                                        <th>Địa chỉ nhận hàng</th>
                                                                        <th>Tổng tiền</th>
                                                                        <th>Ngày đặt hàng</th>
                                                                        <th>Ngày nhận hàng</th>
                                                                        <th>Ghi chú</th>
                                                                        <th>Trạng thái</th>

                                                                    </tr>
                                                                    </thead>
                                                                    <tbody>


                                                                    <tr>
                                                                        <td><a
                                                                                href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                            <span
                                                                                                    class="badge bg-info">Đang
                                                                                                đi giao</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-info">Đang
                                                                                                đi giao</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-info">Đang
                                                                                                đi giao</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-info">Đang
                                                                                                đi giao</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-info">Đang
                                                                                                đi giao</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-info">Đang
                                                                                                đi giao</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-info">Đang
                                                                                                đi giao</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH03</a>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 12-11-2020</td>
                                                                        <td>09:10 13-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-info">Đang
                                                                                                đi giao</span>
                                                                        </td>
                                                                    </tr>

                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </section>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="complete" role="tabpanel"
                                         aria-labelledby="complete-tab">
                                        <!-- Đã giao -->
                                        <div class="container-fluid">
                                            <div class="gap-sm"></div>
                                            <div class="row">
                                                <div class="col-lg-3 col-md-3 col-sm-5 col-5">
                                                    <div class="input-group mb-3">
                                                        <input type="text" class="form-control"
                                                               placeholder="Tìm mã đơn hàng..."
                                                               aria-label="Recipient's username"
                                                               aria-describedby="basic-addon2">
                                                        <div class="input-group-append">
                                                                        <span class="input-group-text"><i
                                                                                class="fa fa-search"
                                                                                aria-hidden="true"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-1 col-md-1 "></div>
                                                <div class="col-lg-7 col-md-7 col-sm-12 col-12">
                                                    <div class="container-fluid">
                                                        <div class="row">
                                                            <div class="col-lg-2 col-md-2">
                                                                <p style="margin-top: 10px;">Ngày đặt hàng
                                                                </p>
                                                            </div>
                                                            <div class="col-lg-3 col-md-3col-sm-6 col-6">
                                                                <div class="form-group row">
                                                                    <div class="col-12">
                                                                        <input class="form-control"
                                                                               type="datetime-local"
                                                                               value="2011-08-19T13:45:00"
                                                                        >
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-1 col-md-1">
                                                                <i class="fa fa-arrow-right"
                                                                   aria-hidden="true"
                                                                   style="margin-left: 20px;margin-top: 15px;"></i>
                                                            </div>
                                                            <div class="col-lg-3 col-md-3 col-sm-6 col-6">
                                                                <div class="form-group row">
                                                                    <div class="col-12">
                                                                        <input class="form-control"
                                                                               type="datetime-local"
                                                                               value="2011-08-19T13:45:00"
                                                                        >
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-3 col-md-3">
                                                                <button class="btn btn-primary"><i
                                                                        class="fa fa-print"
                                                                        aria-hidden="true"
                                                                        style="color: white !important;"></i>
                                                                    In hóa đơn
                                                                </button>
                                                            </div>

                                                        </div>
                                                    </div>


                                                </div>
                                                <div class="col-lg-1 col-md-1 "></div>
                                            </div>
                                            <div class="gap-xs"></div>
                                            <div class="row">
                                                <h3 style="color: black;">Đơn hàng</h3>
                                            </div>
                                            <div class="gap-xs"></div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <section class="section">
                                                        <div class="card">
                                                            <!-- all product-tab -->
                                                            <div class="card-body">
                                                                <table class='table table-striped'
                                                                >
                                                                    <thead>
                                                                    <tr>
                                                                        <th>Mã đơn hàng</th>
                                                                        <th>ID Khách hàng</th>
                                                                        <th>Địa chỉ nhận hàng</th>
                                                                        <th>Tổng tiền</th>
                                                                        <th>Ngày đặt hàng</th>
                                                                        <th>Ngày nhận hàng</th>
                                                                        <th>Ghi chú</th>
                                                                        <th>Trạng thái</th>

                                                                    </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                    <tr>
                                                                        <td><a
                                                                                href="chitietdonhang.html">DH02</a>
                                                                        </td>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 13-11-2020</td>
                                                                        <td>09:10 14-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                            <span
                                                                                                    class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH02</a>
                                                                        </td>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 13-11-2020</td>
                                                                        <td>09:10 14-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH02</a>
                                                                        </td>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 13-11-2020</td>
                                                                        <td>09:10 14-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH02</a>
                                                                        </td>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 13-11-2020</td>
                                                                        <td>09:10 14-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH02</a>
                                                                        </td>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 13-11-2020</td>
                                                                        <td>09:10 14-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH02</a>
                                                                        </td>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 13-11-2020</td>
                                                                        <td>09:10 14-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH02</a>
                                                                        </td>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 13-11-2020</td>
                                                                        <td>09:10 14-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><a href="chitietdonhang.html">DH02</a>
                                                                        </td>
                                                                        </td>
                                                                        <td>THAONHA01
                                                                        </td>
                                                                        <td>ĐH Nông Lâm TPHCM</td>
                                                                        <td>10.000.000</td>
                                                                        <td>21:10 13-11-2020</td>
                                                                        <td>09:10 14-11-2020</td>
                                                                        <td>Không</td>
                                                                        <td>
                                                                                <span class="badge bg-success">Đã
                                                                                                giao hàng</span>
                                                                        </td>
                                                                    </tr>

                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>

                                                    </section>
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
        </div>
    </div>
</div>
</body>

</html>