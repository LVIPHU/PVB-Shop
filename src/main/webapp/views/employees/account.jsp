<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>P.V.B | Danh sách tài khoản</title>
</head>

<style>
span {
	color: red;
}

td, th {
	text-align: center;
}
</style>

<body>
	<form action="<c:url value="/employees-account"/> " method="post">
		<div class="info-product">
			<div class="container-fluid">
				<div class="row ">
					<div class="col-lg-12 col-md-12 ">
						<div class="card">
							<c:if test="${not empty message}">
								<div class="alert alert-${alert}" role="alert">${message}
								</div>
							</c:if>
							<div class="card-body">
								<div class="row row-margin-top">
									<div class="container-fluid">
										<ul class="nav nav-tabs" id="myTab" role="tablist">
											<li class="nav-item"><a class="nav-link active"
												id="home-tab" data-toggle="tab" href="#home" role="tab"
												aria-controls="home" aria-selected="true">Tất cả</a></li>
											<li class="nav-item"><a class="nav-link" id="online-tab"
												data-toggle="tab" href="#online" role="tab"
												aria-controls="online" aria-selected="false">Nhân Viên</a></li>
											<li class="nav-item"><a class="nav-link"
												id="soldout-tab" data-toggle="tab" href="#soldout"
												role="tab" aria-controls="soldout" aria-selected="false">Khách
													Hàng</a></li>
											<li class="nav-item"><a class="nav-link" id="lock-tab"
												data-toggle="tab" href="#lock" role="tab"
												aria-controls="lock" aria-selected="false">Đã tạm khóa</a>
											<%-- <li class="nav-item"><a class="nav-link"
												href="${pageContext.servletContext.contextPath}/employees-account-add">Thêm
													Tài Khoản</a></li> --%>
										</ul>
										<div class="tab-content" id="myTabContent">
											<div class="tab-pane fade show active" id="home"
												role="tabpanel" aria-labelledby="home-tab">
												<div class="container-fluid">
													<div class="gap-md"></div>
													<div class="row">
														<div class="col-lg-12 col-md-12 col-sm-12 col-12">
															<div class="input-group mb-3">
																<div class="input-group-prepend">
																	<button
																		class="btn btn-outline-secondary dropdown-toggle"
																		type="button" data-toggle="dropdown"
																		aria-haspopup="true" aria-expanded="false">
																		Tên tài khoản</button>
																	<div class="dropdown-menu">
																		<a class="dropdown-item" href="#">Họ và tên</a>
																	</div>
																</div>
																<input type="text" class="form-control" name="search"
																	aria-label="Text input with dropdown button">
																<button
																	class="btn btn-outline-primary btn-custom-timkiem">
																	Tìm</button>
															</div>
														</div>
													</div>
													<%-- <div class="gap-sm"></div>
													<div class="row row-product">
														<div class="col-lg-5 col-md-5 col-sm-5 col-5">
															<a href="<c:url value="/employees-account-add"/>">
																<button type="button"
																	class="btn btn-outline-secondary btn-add-product">
																	<i class="fa fa-plus " aria-hidden="true"></i> Thêm 1
																	Tài khoản mới
																</button>
															</a>
															<div class="btn-group" role="group">
																<button id="btnGroupDrop1" type="button"
																	class="btn btn-outline-secondary dropdown-toggle btn-custom-xu-li"
																	data-toggle="dropdown" aria-haspopup="true"
																	aria-expanded="false">Công cụ xử lí hàng hoạt
																</button>
																<div class="dropdown-menu"
																	aria-labelledby="btnGroupDrop1">
																	<a class="dropdown-item" href="#">Đăng hàng loạt</a> <a
																		class="dropdown-item" href="#">Cập nhật hàng loạt</a>
																	<a class="dropdown-item" href="#">Cập nhật thuộc
																		tính</a>

																</div>
															</div>
														</div>
													</div> --%>
													<div class="gap-sm"></div>
													<div class="row">
														<div class="col-12">
															<section class="section">
																<div class="card">
																	<!-- all product-tab -->
																	<div class="card-body">
																		<table class='table table-striped' id="table1">
																			<thead>
																				<tr>
																					<th style="text-align: center;">Loại tài khoản</th>
																					<th>Tên tài khoản</th>
																					<th>Họ tên</th>
																					<th>Số điện thoại</th>
																					<th>Email</th>
																					<th>Trạng Thái</th>
																				</tr>
																			</thead>
																			<tbody>
																				<c:if test="${not empty user}">
																					<c:forEach items="${user.getList()}" var="u">
																						<tr>
																							<td><c:choose>
																									<c:when test="${u.isRole() == 2}">NHÂN VIÊN</c:when>
																									<c:when test="${u.isRole() == 3}">QUẢN LÝ</c:when>
																									<c:otherwise>KHÁCH HÀNG</c:otherwise>
																								</c:choose></td>
																							<td><a
																								href="<c:url value="/employees-account-edit?id=${u.getId()}"/>">${u.getUsername()}</a>
																							</td>
																							<td>${u.getName()}</td>
																							<td>${u.getPhone()}</td>
																							<td>${u.getEmail()}</td>
																							<td><c:choose>
																									<c:when test="${u.isRole() == 1}">
																										<span class="badge bg-success">Bình
																											thường</span>
																									</c:when>
																									<c:when test="${u.isRole() == 2}">
																										<span class="badge bg-info">Bình thường</span>
																									</c:when>
																									<c:when test="${u.isRole() == 3}">
																										<span class="badge bg-warning">Bình
																											thường</span>
																									</c:when>
																									<c:otherwise>
																										<span class="badge bg-secondary">Tạm
																											khóa</span>
																									</c:otherwise>
																								</c:choose></td>
																							<c:if test="${u.isRole() < 2}">
																								<td><a
																									href="<c:url value="/employees-account-password?id=${u.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-primary btn-sm">
																											<i class="ti-user"></i>
																										</button></a></td>

																								<td><a
																									href="<c:url value="/employees-account-edit?id=${u.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-success btn-sm">
																											<i class="ti-folder"></i>
																										</button></a></td>

																								<%-- <td><a href="<c:url value="/employees-account-delete?action=xoa&id=${u.getId()}"/>"><button type="button"
																											class="btn btn-outline-danger btn-sm">
																											<i class="ti-trash"></i>
																										</button></a></td> --%>
																							</c:if>
																						</tr>
																					</c:forEach>
																				</c:if>
																			</tbody>
																		</table>
																	</div>
																</div>
															</section>
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane fade" id="online" role="tabpanel"
												aria-labelledby="online-tab">
												<div class="container-fluid">
													<div class="gap-md"></div>
													<div class="row">
														<div class="col-lg-12 col-md-12 col-sm-12 col-12">
															<div class="input-group mb-3">
																<div class="input-group-prepend">
																	<button
																		class="btn btn-outline-secondary dropdown-toggle"
																		type="button" data-toggle="dropdown"
																		aria-haspopup="true" aria-expanded="false">
																		Tên tài khoản</button>
																	<div class="dropdown-menu">
																		<a class="dropdown-item" href="#">Họ và tên</a>
																	</div>
																</div>
																<input type="text" class="form-control" name="search"
																	aria-label="Text input with dropdown button">
																<button
																	class="btn btn-outline-primary btn-custom-timkiem">
																	Tìm</button>
															</div>
														</div>
													</div>
													<!-- <div class="gap-sm"></div>
													<div class="row row-product">
														<div class="col-lg-5 col-md-5 col-sm-5 col-5">
															<a href="addproduct.html">
																<button type="button"
																	class="btn btn-outline-secondary btn-add-product">
																	<i class="fa fa-plus " aria-hidden="true"></i> Thêm 1
																	khoản mới
																</button>
															</a>
															<div class="btn-group" role="group">
																<button id="btnGroupDrop1" type="button"
																	class="btn btn-outline-secondary dropdown-toggle btn-custom-xu-li"
																	data-toggle="dropdown" aria-haspopup="true"
																	aria-expanded="false">Công cụ xử lí hàng hoạt
																</button>
																<div class="dropdown-menu"
																	aria-labelledby="btnGroupDrop1">
																	<a class="dropdown-item" href="#">Đăng hàng loạt</a> <a
																		class="dropdown-item" href="#">Cập nhật hàng loạt</a>
																	<a class="dropdown-item" href="#">Cập nhật thuộc
																		tính</a>
																</div>
															</div>
														</div>
													</div> -->
													<div class="gap-sm"></div>
													<div class="row">
														<div class="col-12">
															<section class="section">
																<div class="card">
																	<!-- all product-tab -->
																	<div class="card-body">
																		<table class='table table-striped' id="table1">
																			<thead>
																				<tr>
																					<th style="text-align: center;">Loại tài khoản</th>
																					<th>Tên tài khoản</th>
																					<th>Họ tên</th>
																					<th>Số điện thoại</th>
																					<th>Email</th>
																					<th>Trạng thái</th>
																				</tr>
																			</thead>
																			<tbody>
																				<c:if test="${not empty user}">
																					<c:forEach items="${user.getList()}" var="u">
																						<c:if test="${u.isRole() == 2}">
																							<tr>
																								<td>NHÂN VIÊN</td>
																								<td><a
																									href="<c:url value="/employees-account-edit?id=${u.getId()}"/>">${u.getUsername()}</a>
																								</td>
																								<td>${u.getName()}</td>
																								<td>${u.getPhone()}</td>
																								<td>${u.getEmail()}</td>
																								<td><span class="badge bg-info">Bình
																										thường</span></td>
																								<%-- <td><a
																									href="<c:url value="/employees-account-password?id=${u.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-primary btn-sm">
																											<i class="ti-user"></i>
																										</button></a></td>

																								<td><a
																									href="<c:url value="/employees-account-edit?id=${u.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-success btn-sm">
																											<i class="ti-folder"></i>
																										</button></a></td>

																								<td><a href="<c:url value="/employees-account-delete?action=xoa&id=${u.getId()}"/>"><button type="button"
																											class="btn btn-outline-danger btn-sm">
																											<i class="ti-trash"></i>
																										</button></a></td> --%>
																							</tr>
																						</c:if>
																					</c:forEach>
																				</c:if>
																			</tbody>
																		</table>
																	</div>
																</div>
															</section>
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane fade" id="soldout" role="tabpanel"
												aria-labelledby="soldout-tab">
												<div class="container-fluid">
													<div class="gap-md"></div>
													<div class="row">
														<div class="col-lg-12 col-md-12 col-sm-12 col-12">
															<div class="input-group mb-3">
																<div class="input-group-prepend">
																	<button
																		class="btn btn-outline-secondary dropdown-toggle"
																		type="button" data-toggle="dropdown"
																		aria-haspopup="true" aria-expanded="false">
																		Tên tài khoản</button>
																	<div class="dropdown-menu">
																		<a class="dropdown-item" href="#">Họ và tên</a>
																	</div>
																</div>
																<input type="text" class="form-control" name="search"
																	aria-label="Text input with dropdown button">
																<button
																	class="btn btn-outline-primary btn-custom-timkiem">
																	Tìm</button>
															</div>
														</div>
													</div>
													<!-- <div class="gap-sm"></div>
													<div class="row row-product">
														<div class="col-lg-5 col-md-5 col-sm-5 col-5">
															<a href="addproduct.html">
																<button type="button"
																	class="btn btn-outline-secondary btn-add-product">
																	<i class="fa fa-plus " aria-hidden="true"></i> Thêm 1
																	sản phẩm mới
																</button>
															</a>
															<div class="btn-group" role="group">
																<button id="btnGroupDrop1" type="button"
																	class="btn btn-outline-secondary dropdown-toggle btn-custom-xu-li"
																	data-toggle="dropdown" aria-haspopup="true"
																	aria-expanded="false">Công cụ xử lí hàng hoạt
																</button>
																<div class="dropdown-menu"
																	aria-labelledby="btnGroupDrop1">
																	<a class="dropdown-item" href="#">Đăng hàng loạt</a> <a
																		class="dropdown-item" href="#">Cập nhật hàng loạt</a>
																	<a class="dropdown-item" href="#">Cập nhật thuộc
																		tính</a>

																</div>
															</div>

														</div>
													</div> -->
													<div class="gap-sm"></div>
													<div class="row">
														<div class="col-12">
															<section class="section">
																<div class="card">
																	<!-- all product-tab -->
																	<div class="card-body">
																		<table class='table table-striped' id="table1">
																			<thead>
																				<tr>
																					<th style="text-align: center;">Loại tài khoản</th>
																					<th>Tên tài khoản</th>
																					<th>Họ tên</th>
																					<th>Số điện thoại</th>
																					<th>Email</th>
																					<th>Trạng thái</th>
																				</tr>
																			</thead>
																			<tbody>
																				<c:if test="${not empty user}">
																					<c:forEach items="${user.getList()}" var="u">
																						<c:if test="${u.isRole() == 1}">
																							<tr>
																								<td>KHÁCH HÀNG</td>
																								<td><a
																									href="<c:url value="/employees-account-edit?id=${u.getId()}"/>">
																										${u.getUsername()}</a></td>
																								<td>${u.getName()}</td>
																								<td>${u.getPhone()}</td>
																								<td>${u.getEmail()}</td>
																								<td><span class="badge bg-success">Bình
																										thường</span></td>
																								<td><a
																									href="<c:url value="/employees-account-password?id=${u.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-primary btn-sm">
																											<i class="ti-user"></i>
																										</button></a></td>

																								<td><a
																									href="<c:url value="/employees-account-edit?id=${u.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-success btn-sm">
																											<i class="ti-folder"></i>
																										</button></a></td>

																								<%-- <td><a href="<c:url value="/employees-account-delete?action=xoa&id=${u.getId()}"/>"><button type="button"
																											class="btn btn-outline-danger btn-sm">
																											<i class="ti-trash"></i>
																										</button></a></td> --%>
																							</tr>
																						</c:if>
																					</c:forEach>
																				</c:if>
																			</tbody>
																		</table>
																	</div>
																</div>
															</section>
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane fade" id="lock" role="tabpanel"
												aria-labelledby="lock-tab">
												<div class="container-fluid">
													<div class="gap-md"></div>
													<div class="row">
														<div class="col-lg-12 col-md-12 col-sm-12 col-12">
															<div class="input-group mb-3">
																<div class="input-group-prepend">
																	<button
																		class="btn btn-outline-secondary dropdown-toggle"
																		type="button" data-toggle="dropdown"
																		aria-haspopup="true" aria-expanded="false">
																		Tên tài khoản</button>
																	<div class="dropdown-menu">
																		<a class="dropdown-item" href="#">Họ và tên</a>
																	</div>
																</div>
																<input type="text" class="form-control" name="search"
																	aria-label="Text input with dropdown button">
																<button
																	class="btn btn-outline-primary btn-custom-timkiem">
																	Tìm</button>
															</div>
														</div>
													</div>
													<!-- <div class="gap-sm"></div>
													<div class="row row-product">
														<div class="col-lg-5 col-md-5 col-sm-5 col-5">
															<a href="addproduct.html">
																<button type="button"
																	class="btn btn-outline-secondary btn-add-product">
																	<i class="fa fa-plus " aria-hidden="true"></i> Thêm 1
																	sản phẩm mới
																</button>
															</a>
															<div class="btn-group" role="group">
																<button id="btnGroupDrop1" type="button"
																	class="btn btn-outline-secondary dropdown-toggle btn-custom-xu-li"
																	data-toggle="dropdown" aria-haspopup="true"
																	aria-expanded="false">Công cụ xử lí hàng hoạt
																</button>
																<div class="dropdown-menu"
																	aria-labelledby="btnGroupDrop1">
																	<a class="dropdown-item" href="#">Đăng hàng loạt</a> <a
																		class="dropdown-item" href="#">Cập nhật hàng loạt</a>
																	<a class="dropdown-item" href="#">Cập nhật thuộc
																		tính</a>

																</div>
															</div>

														</div>
													</div> -->
													<div class="gap-sm"></div>
													<div class="row">
														<div class="col-12">
															<section class="section">
																<div class="card">
																	<!-- all product-tab -->
																	<div class="card-body">
																		<table class='table table-striped' id="table1">
																			<thead>
																				<tr>
																					<th style="text-align: center;">Loại tài khoản</th>
																					<th>Tên tài khoản</th>
																					<th>Họ tên</th>
																					<th>Số điện thoại</th>
																					<th>Email</th>
																					<th>Trạng thái</th>
																				</tr>
																			</thead>
																			<tbody>
																				<c:if test="${not empty user}">
																					<c:forEach items="${user.getList()}" var="u">
																						<c:if test="${u.isRole() == 0}">
																							<tr>
																								<td>KHÁCH HÀNG</td>
																								<td><a
																									href="<c:url value="/employees-account-edit?id=${u.getId()}"/>">
																										${u.getUsername()}</a></td>
																								<td>${u.getName()}</td>
																								<td>${u.getPhone()}</td>
																								<td>${u.getEmail()}</td>
																								<td><span class="badge bg-secondary">Tạm
																										khóa</span></td>
																								<td><a
																									href="<c:url value="/employees-account-password?id=${u.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-primary btn-sm">
																											<i class="ti-user"></i>
																										</button></a></td>

																								<td><a
																									href="<c:url value="/employees-account-edit?id=${u.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-success btn-sm">
																											<i class="ti-folder"></i>
																										</button></a></td>

																								<%-- <td><a href="<c:url value="/employees-account-delete?action=xoa&id=${u.getId()}"/>"><button type="button"
																											class="btn btn-outline-danger btn-sm">
																											<i class="ti-trash"></i>
																										</button></a></td> --%>
																							</tr>
																						</c:if>
																					</c:forEach>
																				</c:if>
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
	</form>
</body>

</html>