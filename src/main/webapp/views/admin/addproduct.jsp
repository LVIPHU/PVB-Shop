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
	<form action="<c:url value="/admin-product-add"/>" method="post" enctype="multipart/form-data">
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
									<h3 class="title-product">
										Thông tin cơ bản <span class="span-title-product">*</span>
									</h3>
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
											placeholder="Nhập tên sản phẩm..." required="required">
									</div>
								</div>

								<div class="gap-sm"></div>
								<div class="row ">

									<div class="col-lg-2 col-md-4 col-6">
										<p>Hình ảnh sản phẩm:</p>
									</div>
									<div class="col-lg-10 col-md-8 col-6">
										<form>
											<div class="form-group">
												<input type="file" class="form-control-file"
													name="image_link" id="i_file" required="required">
													<img id="i_img" width="200" style="display:none;" />
											</div>
										</form>
									</div>
								</div>
								<div class="gap-sm"></div>
								<div class="row">
									<div class="col-lg-2 col-md-4 col-6">
										<p>
											Chi tiết sản phẩm <span class="span-title-product">*</span>
										</p>
									</div>
									<div class="col-lg-10 col-md-8 col-6">
										<input class="form-control" id="3" rows="4" name="content"
											placeholder="Nhập mô tả sản phẩm..." required="required">
									</div>
								</div>

								<div class="gap-sm"></div>
								<div class="row">
									<div class="col-lg-2 col-md-4 col-6">
										<p>Danh mục sản phẩm:</p>
									</div>
									<div class="col-lg-4 col-md-4 col-4">
										<input type="number" class="form-control" name="catalog_id"
											min="0" placeholder="Nhập mã danh mục ...." required="required">
									</div>

								</div>

								<div class="gap-sm"></div>
								<div class="gap-sm"></div>
								<div class="row">

									<div class="col-lg-2 col-md-2 col-2">
										<p>
											Giá bán <span class="span-title-product">*</span>
										</p>
									</div>
									<div class="col-lg-4 col-md-4 col-4">
										<input type="number" class="form-control" name="price" min="0"
											placeholder="Nhập giá bán..." required="required">
									</div>
								</div>

								<div class="gap-sm"></div>
								<div class="row">
									<div class="col-lg-2 col-md-2 col-6">
										<p>
											Số lượng nhập
										</p>
									</div>
									<div class="col-lg-4 col-md-4 col-6">
										<input type="number" class="form-control" min="0" name="qty"
											placeholder="Nhập số lượng sản phẩm nhập...">
									</div>
								</div>

								<div class="gap-sm"></div>
								<div class="row">
									<div class="col-12" style="text-align: center;">
										<button class="btn btn-outline-primary" type="submit" style="padding-left: 1.2rem; padding-right: 1.2rem; margin-right: 40px;">Lưu</button>
										<a href="<c:url value="/admin-product"/>"><button type="button" class="btn btn-outline-danger">Thoát</button></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</form>
<script type="text/javascript">
$('#i_file').change( function(event) {
    $("#i_img").fadeIn("fast").attr('src',URL.createObjectURL(event.target.files[0]));
});
</script>
</body>
</html>
