<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>P.V.B | Thêm sản phẩm</title>
</head>

<body>
	<form action="<c:url value="/employees-category-add"/>" method="post">
		<div class="detail-product">
			<div class="container-fluid">
				<div class="row">

					<div class="col-lg-12 col-md-12 ">
						<c:if test="${not empty message}">
							<div class="alert alert-${alert}" role="alert">${message}</div>
						</c:if>
						<div class="card">
							<div class="card-header">
								<h4 class="title-form">
									<h3 class="title-product" >Thông tin cơ bản <span class="span-title-product">*</span></h3>
								</h4>
							</div>
							<div class="card-body">
								<!-- <div class="row row-margin-top">
									<div class="col-lg-2 col-md-2 col-2">
										<p>Mã sản phẩm:</p>
									</div>
									<div class="col-lg-4 col-md-4 col-4">
										<form>
											<div class="form-group">
												<input type="text" class="form-control" name="id"
													placeholder="Nhập mã sản phẩm...">
											</div>
										</form>
									</div>

								</div>
								<div class="gap-sm"></div> -->
								<div class="row">
									<div class="col-lg-2 col-md-4 col-6">
										<p>
											Tên sản phẩm:<u></u> <span class="span-title-product">*</span>
										</p>
									</div>
									<div class="col-lg-10 col-md-8 col-6">
										<input type="text" class="form-control" name="name"
											placeholder="Nhập tên danh mục..." required="required">
									</div>
								</div>

								<div class="gap-sm"></div>
								<div class="row">
									<div class="col-lg-2 col-md-4 col-6">
										<p>
											Mã gia đình <span class="span-title-product">*</span>
										</p>
									</div>
									<div class="col-lg-10 col-md-8 col-6">
										<input type="number" id="3" rows="4" name="parent_id"
											placeholder="Nhập mã gia đình..." required="required">
									</div>
								</div>


								<div class="gap-sm"></div>
								<div class="row">
									<div class="col-12" style="text-align: center;">
										<button class="btn btn-outline-primary" type="submit" style="padding-left: 1.2rem; padding-right: 1.2rem; margin-right: 40px;">Lưu</button>
										<a href="<c:url value="/employees-category"/>"><button type="button" class="btn btn-outline-danger">Thoát</button></a>
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
