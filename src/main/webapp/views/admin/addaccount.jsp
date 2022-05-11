<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>P.V.B | Thêm tài khoản</title>
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
	<form action="<c:url value="/admin-account-add"/>" method="post">
		<div class="info-product">
			<div class="container-fluid">
				<div class="row ">
					<div class="col-lg-12 col-md-12 ">
						<c:if test="${not empty message}">
							<div class="alert alert-${alert}" role="alert">${message}</div>
						</c:if>
						<div class="card">
							<div class="card-body">
								<div class="gap-xs"></div>
								<div class="row">
									<div class="col-lg-2 col-md-2 col-6">
										<p>Loại tài khoản:</p>
									</div>
									<div class="col-lg-4 col-md-4 col-6">
										<select class="form-control" aria-placeholder="Ch" name="role">
											<option value="1">Khách hàng</option>
											<option value="2">Nhân viên</option>
										</select>
									</div>
									<div class="col-lg-2 col-md-2 col-6">
										<p>
											Tên tài khoản:<span class="span-title-product">*</span>
										</p>
									</div>
									<div class="col-lg-4 col-md-4 col-6">
										<input type="text" class="form-control" name="username"
											placeholder="Nhập tên tài khoản..." required="required">
									</div>

								</div>
								<div class="gap-sm"></div>
								<div class="row">
									<div class="col-lg-2 col-md-2 col-6">
										<p>
											Họ và tên:<span class="span-title-product">*</span>
										</p>
									</div>


									<div class="col-lg-10 col-md-10 col-6">
										<input type="text" class="form-control" name="name"
											placeholder="Nhập đầy đủ họ và tên..." required="required">
									</div>

								</div>
								<div class="gap-sm"></div>
								<div class="row">
									<div class="col-lg-2 col-md-2 col-6">
										<p>
											Mật khẩu:<span class="span-title-product">*</span>
										</p>
									</div>
									<div class="col-lg-10 col-md-10 col-6">
										<input type="password" class="form-control" id="password"
											name="password" placeholder="Nhập mật khẩu..." required="required">
									</div>

								</div>
								<div class="gap-sm"></div>
								<div class="row">
									<div class="col-lg-2 col-md-2 col-6">
										<p>
											Nhập lại mật khẩu:<span class="span-title-product">*</span>
										</p>
									</div>

									<div class="col-lg-10 col-md-10 col-6">
										<input type="password" class="form-control" id="password2"
											name="repassword" placeholder="Nhập lại mật khẩu..." required="required">
									</div>

								</div>
								<div class="gap-sm"></div>
								<div class="row">
									<div class="col-lg-2 col-md-2 col-6">
										<p>
											Email:<span class="span-title-product">*</span>
										</p>
									</div>

									<div class="col-lg-10 col-md-10 col-6">
										<input type="email" class="form-control" name="email"
											placeholder="Nhập Email..." required="required">
									</div>

								</div>
								<div class="gap-sm"></div>
								<div class="row">
									<div class="col-lg-2 col-md-2 col-6">
										<p>
											Số điện thoại:<span class="span-title-product">*</span>
										</p>
									</div>

									<div class="col-lg-10 col-md-10 col-6">
										<input type="text" class="form-control" name="phone"
											placeholder="Nhập số điện thoại..." required="required">
									</div>

								</div>
								<div class="gap-sm"></div>
								<div class="row">
									<div class="col-lg-2 col-md-2 col-6">
										<p>
											Địa chỉ:<span class="span-title-product">*</span>
										</p>
									</div>

									<div class="col-lg-10 col-md-10 col-6">
										<input type="text" class="form-control" name="address"
											placeholder="Nhập địa chỉ..." required="required">
									</div>

								</div>

								<div class="gap-md"></div>
								<div class="row">
									<div class="col-12" style="text-align: center;">
										<button class="btn btn-outline-primary"
											style="padding-left: 1.2rem; padding-right: 1.2rem; margin-right: 40px;">
											Lưu</button>
										<a href="<c:url value="/admin-account"/>"><button type="button" class="btn btn-outline-danger">Thoát</button></a>
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