<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>L.A.N | Thêm tài khoản</title>
</head>

<style>
    * {
        font-size: 16px;
    }

    span {
        color: red;
    }
</style>

<body>
<div class="info-product">
    <div class="container-fluid">
        <div class="row ">
            <div class="col-lg-12 col-md-12 ">
                <div class="card">
                    <div class="card-body">
                        <div class="gap-xs"></div>
                        <div class="row">
                            <div class="col-lg-2 col-md-2 col-6">
                                <p>Loại tài khoản:</p>
                            </div>

                            <div class="col-lg-4 col-md-4 col-6">
                                <select class="form-control" aria-placeholder="Ch">
                                    <option>Quản trị viên</option>
                                    <option>Quản trị giao diện</option>
                                    <option>Nhân viên SEO</option>

                                </select>
                            </div>
                            <div class="col-lg-2 col-md-2 col-6">
                                <p>Tên tài khoản:<span class="span-title-product">*</span></p>
                            </div>
                            <div class="col-lg-4 col-md-4 col-6">
                                <input type="text" class="form-control" placeholder="Nhập tên tài khoản...">
                            </div>

                        </div>
                        <div class="gap-sm"></div>
                        <div class="row">
                            <div class="col-lg-2 col-md-2 col-6">
                                <p>Họ tên:<span class="span-title-product">*</span></p>
                            </div>


                            <div class="col-lg-10 col-md-10 col-6">
                                <input type="text" class="form-control" placeholder="Nhập đầy đủ họ và tên...">
                            </div>

                        </div>
                        <div class="gap-sm"></div>
                        <div class="row">
                            <div class="col-lg-2 col-md-2 col-6">
                                <p>Mật khẩu:<span class="span-title-product">*</span></p>
                            </div>
                            <div class="col-lg-10 col-md-10 col-6">
                                <input type="password" class="form-control" placeholder="Nhập mật khẩu...">
                            </div>

                        </div>
                        <div class="gap-sm"></div>
                        <div class="row">
                            <div class="col-lg-2 col-md-2 col-6">
                                <p>Nhập lại mật khẩu:<span class="span-title-product">*</span></p>
                            </div>

                            <div class="col-lg-10 col-md-10 col-6">
                                <input type="text" class="form-control" placeholder="Nhập lại mật khẩu...">
                            </div>

                        </div>
                        <div class="gap-sm"></div>
                        <div class="row">
                            <div class="col-lg-2 col-md-2 col-6">
                                <p>Hiện thị:<span class="span-title-product">*</span></p>
                            </div>


                            <div class="col-lg-10 col-md-10 col-6">
                                <input type="checkbox" name="">
                            </div>

                        </div>

                        <div class="gap-sm"></div>
                        <div class="row">
                            <div class="col-lg-2 col-md-2 col-6">
                                <p>Quyền hạn:<span class="span-title-product">*</span></p>
                            </div>


                            <div class="col-lg-2 col-md-2 col-2">
                                <input type="checkbox" name=""> Quản trị danh mục
                            </div>
                            <div class="col-lg-2 col-md-2 col-2">
                                <input type="checkbox" name=""> Quản trị giao diện
                            </div>
                            <div class="col-lg-2 col-md-2 col-2">
                                <input type="checkbox" name=""> Quản trị thông tin
                            </div>
                            <div class="col-lg-2 col-md-2 col-2">
                                <input type="checkbox" name=""> Quản trị bài viết
                            </div>
                            <div class="col-lg-2 col-md-2 col-2">
                                <input type="checkbox" name=""> SEO Website
                            </div>


                        </div>
                        <div class="row">
                            <div class="col-lg-2 col-md-2 col-6">

                            </div>


                            <div class="col-lg-2 col-md-2 col-2">
                                <input type="checkbox" name=""> Danh sách đơn hàng
                            </div>
                            <div class="col-lg-2 col-md-2 col-2">
                                <input type="checkbox" name=""> Sản phẩm
                            </div>
                            <div class="col-lg-2 col-md-2 col-2">
                                <input type="checkbox" name=""> Danh mục
                            </div>
                            <div class="col-lg-2 col-md-2 col-2">
                                <input type="checkbox" name="">Hình ảnh
                            </div>
                            <div class="col-lg-2 col-md-2 col-2">
                                <input type="checkbox" name=""> Hỗ trợ trực tuyến
                            </div>


                        </div>
                        <div class="gap-md"></div>
                        <div class="row">
                            <div class="col-12" style="text-align: center;">
                                <button class="btn btn-outline-primary"
                                        style="padding-left: 1.2rem; padding-right: 1.2rem; margin-right: 40px;">
                                    Lưu
                                </button>
                                <button type="button" class="btn btn-outline-danger">Thoát</button>
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