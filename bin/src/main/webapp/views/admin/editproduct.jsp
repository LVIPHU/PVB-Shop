<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>L.A.N | Sửa sản phẩm</title>
</head>

<body>
<form action=" <c:url value="/admin-product-edit"/>" method="post">

<div class="detail-product">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 ">
                <div class="card">
                    <c:if test="${not empty message}">
                        <div class="alert alert-${alert}" role="alert">
                                ${message}
                        </div>
                    </c:if>
                    <div class="card-header">
                        <h4 class="title-form">
                            <h3 class="title-product">Điền các thông tin cần sửa<span class="span-title-product">*</span></h3>
                        </h4>
                    </div>
                    <div class="card-body">
                        <div class="row row-margin-top">
                            <div class="col-lg-2 col-md-2 col-2">
                                <p>Mã sản phẩm:</p>
                            </div>
                            <div class="col-lg-4 col-md-4 col-4">
                                <form>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="id" value="${product.getId()}" placeholder="${product.getId()}" readonly>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="gap-sm"></div>
                        <div class="row">
                            <div class="col-lg-2 col-md-6 col-6">
                                <p>Tên sản phẩm:<u></u> <span class="span-title-product">*</span></p>
                            </div>
                            <div class="col-lg-4 col-md-6 col-6">
                                <input type="text" class="form-control" name="name" value="${product.getName()}"  placeholder="${product.getName()}">
                            </div>
                            <div class="col-lg-2 col-md-6 col-6">
                                <p>Hình ảnh sản phẩm:</p>
                            </div>
                            <div class="col-lg-4 col-md-6 col-6">
                                <form>
                                    <div class="form-group">
                                        <input type="file" name="image_link" class="form-control-file" id="exampleFormControlFile1">
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="gap-sm"></div>

                        <div class="gap-sm"></div>
                        <div class="row">
                            <div class="col-lg-2 col-md-4 col-6">
                                <p>Chi tiết sản phẩm <span class="span-title-product">*</span></p>
                            </div>
                            <div class="col-lg-10 col-md-8 col-6">
                                <input type="text" class="form-control" id="exampleFormControlTextarea1" name="content" rows="4" data-value="${product.getContent()}"   placeholder="${product.getContent()}">
                            </div>
                        </div>
                        <div class="gap-sm"></div>
                        <div class="row">
                            <div class="col-lg-2 col-md-2 col-2">
                                <p>Giá bán <span class="span-title-product">*</span></p>
                            </div>
                            <div class="col-lg-4 col-md-4 col-4">
                                <input type="number" class="form-control" min="0" name="price" value="${product.getPrice()}"  placeholder="${product.getPrice()}">
                            </div>
                        </div>

                        <div class="gap-sm"></div>
                        <div class="row">
                            <div class="col-lg-2 col-md-2 col-6">
                                <p>Số lượng nhập <span class="span-title-product">*</span></p>
                            </div>
                            <div class="col-lg-4 col-md-4 col-6">
                                <input type="number" class="form-control" min="0" name="qty"  value="${product.getQty()}" placeholder="${product.getQty()}">
                            </div>
                        </div>

                        <div class="gap-sm"></div>
                        <div class="row">
                            <div class="col-12" style="text-align: center;">
                                <button type="submit" class="btn btn-outline-primary" style="padding-left: 1.2rem; padding-right: 1.2rem; margin-right: 40px;">Lưu</button>
                                <button type="button" class="btn btn-outline-danger">Thoát</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>
</body>

</html>