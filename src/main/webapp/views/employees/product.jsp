<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>P.V.B | Danh sách sản phẩm</title>
</head>

<body>
	<form action="<c:url value="/employees-product"/> " method="post">
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
												aria-controls="home" aria-selected="true">Tất Cả</a></li>
											<li class="nav-item"><a class="nav-link" id="online-tab"
												data-toggle="tab" href="#online" role="tab"
												aria-controls="online" aria-selected="false"> Còn Hàng</a></li>
											<li class="nav-item"><a class="nav-link"
												id="soldout-tab" data-toggle="tab" href="#soldout"
												role="tab" aria-controls="soldout" aria-selected="false">Hết
													Hàng</a></li>
											<!-- <li class="nav-item"><a class="nav-link" id="lock-tab"
												data-toggle="tab" href="#lock" role="tab"
												aria-controls="lock" aria-selected="false">Đã tạm khóa</a></li>
											<li class="nav-item"><a class="nav-link" id="hidden-tab"
												data-toggle="tab" href="#hidden" role="tab"
												aria-controls="hidden" aria-selected="false">Đã ẩn</a></li> -->
										
										</ul>
										<div class="tab-content" id="myTabContent">
											<div class="tab-pane fade show active" id="home"
												role="tabpanel" aria-labelledby="home-tab">
												<div class="container-fluid">
													<!-- <div class="gap-md"></div>
													<div class="row">
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="input-group mb-3">
																<div class="input-group-prepend">
																	<button
																		class="btn btn-outline-secondary dropdown-toggle"
																		type="button" data-toggle="dropdown"
																		aria-haspopup="true" aria-expanded="false">
																		Tên sản phẩm</button>
																	<div class="dropdown-menu">
																		<a class="dropdown-item" href="#">Mã sản phẩm</a> <a
																			class="dropdown-item" href="#">SKU sản phẩm</a>

																	</div>
																</div>
																<input type="text" class="form-control"
																	aria-label="Text input with dropdown button">
															</div>
														</div>
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="input-group">
																<div class="input-group mb-3">
																	<div class="input-group-prepend">
																		<span class="input-group-text"
																			id="inputGroup-sizing-default">Danh mục</span>
																	</div>
																	<input type="text" class="form-control"
																		aria-label="Sizing example input"
																		aria-describedby="inputGroup-sizing-default">
																	<button class="btn btn-outline-secondary"
																		data-toggle="modal" data-target="#myModal">
																		<a href=""><i class="fa fa-pencil"
																			aria-hidden="true"
																			style="color: rgba(250, 71, 0, 0.836);"></i></a>
																	</button>
																</div>
															</div>
														</div>
													</div> -->
													<!-- <div class="gap-xs"></div>
													<div class="row">
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="container-fluid">
																<div class="row">
																	<div class="col-lg-3 col-md-12 col-sm-12 col-12">
																		<p>Kho hàng:</p>
																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào..">
																			</div>

																		</form>

																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào..">
																			</div>
																		</form>
																	</div>

																</div>
															</div>
														</div>
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="container-fluid">
																<div class="row">
																	<div class="col-lg-3 col-md-12 col-sm-12 col-12">
																		<p>Đã bán:</p>
																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào...">
																			</div>

																		</form>

																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào...">
																			</div>
																		</form>
																	</div>

																</div>
															</div>
														</div>

													</div> -->
													<%-- <div class="gap-xs"></div>
													<div class="row">

														<div class="col-lg-1 col-md-1 col-4 col-sm-4">
															<button
																class="btn btn-outline-primary btn-custom-timkiem">
																Tìm</button>
														</div>

														<div class="col-lg-2 col-md-2 col-4 col-sm-4">
															<button class="btn btn-outline-danger ">Nhập lại
															</button>

														</div>
													</div>
													<div class="gap-sm"></div>
													<div class="row row-product">
														<div class="col-lg-5 col-md-5 col-sm-5 col-5">
															<p>0 Product</p>

														</div>
														<div class="col-lg-5 col-md-5 col-sm-5 col-5">
															<a
																href="${pageContext.servletContext.contextPath}/employees-product-add">
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
														<div class="col-lg-2 col-md-2 col-sm-2 col-2">
															<button
																class="btn btn-outline-secondary btn-custom-xu-li">
																<i class="fa fa-th-large" aria-hidden="true"></i>
															</button>
															<button
																class="btn btn-outline-secondary btn-custom-xu-li">
																<i class="fa fa-list" aria-hidden="true"></i>
															</button>
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
																					<th>Tên sản phẩm</th>
																					<th>SKU phân loại</th>
																					<th>Giá</th>
																					<th>Số lượng tồn</th>
																					<th>Trạng thái</th>

																				</tr>
																			</thead>
																			<tbody>
																				<c:if test="${not empty product}">
																					<c:forEach items="${product.getList()}" var="p">
																						<tr>
																							<td><a
																								href="<c:url value="/employees-product-import?id=${p.getId()}"/>">${p.getName()}
																							</a></td>
																							<td>${p.getCatalog_id()}</td>
																							<td>${p.getPrice()}₫</td>
																							<td>${p.getQty()}</td>
																							<td><c:choose>
																									<c:when test="${p.getQty() == 0}">
																										<span class="badge bg-danger">Hết hàng</span>
																									</c:when>
																									<c:otherwise>
																										<span class="badge bg-success">Còn hàng</span>
																									</c:otherwise>
																								</c:choose></td>
																							<td><a
																								href="<c:url value="/employees-product-import?id=${p.getId()}"/>"><button
																										type="button"
																										class="btn btn-outline-primary btn-sm">
																										<i class="ti-import"></i>
																									</button></a></td>

																							<%-- <td><a href="<c:url value="/employees-product-delete?action=xoa&id=${p.getId()}"/>"><button type="button"
																										class="btn btn-outline-danger btn-sm">
																										<i class="ti-trash"></i>
																									</button></a></td> --%>
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
													<!-- <div class="gap-md"></div>
													<div class="row">
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="input-group mb-3">
																<div class="input-group-prepend">
																	<button
																		class="btn btn-outline-secondary dropdown-toggle"
																		type="button" data-toggle="dropdown"
																		aria-haspopup="true" aria-expanded="false">
																		Tên sản phẩm</button>
																	<div class="dropdown-menu">
																		<a class="dropdown-item" href="#">Mã sản phẩm</a> <a
																			class="dropdown-item" href="#">SKU sản phẩm</a>

																	</div>
																</div>
																<input type="text" class="form-control"
																	aria-label="Text input with dropdown button">
															</div>
														</div>
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="input-group">
																<div class="input-group mb-3">
																	<div class="input-group-prepend">
																		<span class="input-group-text"
																			id="inputGroup-sizing-default">Danh mục</span>
																	</div>
																	<input type="text" class="form-control"
																		aria-label="Sizing example input"
																		aria-describedby="inputGroup-sizing-default">
																	<button class="btn btn-outline-secondary"
																		data-toggle="modal" data-target="#myModal">
																		<a href=""><i class="fa fa-pencil"
																			aria-hidden="true"
																			style="color: rgba(250, 71, 0, 0.836);"></i></a>
																	</button>
																</div>
															</div>
														</div>
													</div> -->
													<!-- <div class="gap-xs"></div>
													<div class="row">
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="container-fluid">
																<div class="row">
																	<div class="col-lg-3 col-md-12 col-sm-12 col-12">
																		<p>Kho hàng:</p>
																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào...">
																			</div>

																		</form>

																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào...">
																			</div>
																		</form>
																	</div>

																</div>
															</div>
														</div>
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="container-fluid">
																<div class="row">
																	<div class="col-lg-3 col-md-12 col-sm-12 col-12">
																		<p>Đã bán:</p>
																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào...">
																			</div>

																		</form>

																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào...">
																			</div>
																		</form>
																	</div>

																</div>
															</div>
														</div>

													</div> -->
													<!-- <div class="gap-xs"></div>
													<div class="row">

														<div class="col-lg-1 col-md-1 col-4 col-sm-4"
															style="text-align: left !important;">
															<button
																class="btn btn-outline-primary btn-custom-timkiem">
																Tìm</button>
														</div>

														<div class="col-lg-2 col-md-2 col-4 col-sm-4">
															<button class="btn btn-outline-danger ">Nhập lại
															</button>

														</div>
													</div>
													<div class="gap-sm"></div>
													<div class="row row-product">
														<div class="col-lg-5 col-md-5 col-sm-5 col-5">
															<p>0 Product</p>

														</div>
														<div class="col-lg-5 col-md-5 col-sm-5 col-5">
															<a href="/employees-product-add">
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
														<div class="col-lg-2 col-md-2 col-sm-2 col-2">
															<button
																class="btn btn-outline-secondary btn-custom-xu-li">
																<i class="fa fa-th-large" aria-hidden="true"></i>
															</button>
															<button
																class="btn btn-outline-secondary btn-custom-xu-li">
																<i class="fa fa-list" aria-hidden="true"></i>
															</button>
														</div>
													</div>
 -->
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
																					<th>Tên sản phẩm</th>
																					<th>SKU phân loại</th>
																					<th>Giá</th>
																					<th>Số lượng tồn</th>
																					<th>Trạng thái</th>

																				</tr>
																			</thead>
																			<tbody>
																				<c:if test="${not empty product}">
																					<c:forEach items="${product.getList()}" var="p">
																						<c:if test="${p.getQty() > 0}">
																							<tr>
																								<td><a
																								href="<c:url value="/employees-product-import?id=${p.getId()}"/>">${p.getName()}
																							</a></td>
																								<td>${p.getCatalog_id()}</td>
																								<td>${p.getPrice()}₫</td>
																								<td>${p.getQty()}</td>
																								<td><c:choose>
																										<c:when test="${p.getQty() == 0}">
																											<span class="badge bg-danger">Hết hàng</span>
																										</c:when>
																										<c:otherwise>
																											<span class="badge bg-success">Còn
																												hàng</span>
																										</c:otherwise>
																									</c:choose></td>
																								<td><a
																									href="<c:url value="/employees-product-import?id=${p.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-primary btn-sm">
																											<i class="ti-import"></i>
																										</button></a></td>

																								<%-- <td><a href="<c:url value="/employees-product-delete?action=xoa&id=${p.getId()}"/>"><button type="button"
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
													<!-- <div class="gap-md"></div>
													<div class="row">
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="input-group mb-3">
																<div class="input-group-prepend">
																	<button
																		class="btn btn-outline-secondary dropdown-toggle"
																		type="button" data-toggle="dropdown"
																		aria-haspopup="true" aria-expanded="false">
																		Tên sản phẩm</button>
																	<div class="dropdown-menu">
																		<a class="dropdown-item" href="#">Mã sản phẩm</a> <a
																			class="dropdown-item" href="#">SKU sản phẩm</a>

																	</div>
																</div>
																<input type="text" class="form-control"
																	aria-label="Text input with dropdown button">
															</div>
														</div>
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="input-group">
																<div class="input-group mb-3">
																	<div class="input-group-prepend">
																		<span class="input-group-text"
																			id="inputGroup-sizing-default">Danh mục</span>
																	</div>
																	<input type="text" class="form-control"
																		aria-label="Sizing example input"
																		aria-describedby="inputGroup-sizing-default">
																	<button class="btn btn-outline-secondary"
																		data-toggle="modal" data-target="#myModal">
																		<a href=""><i class="fa fa-pencil"
																			aria-hidden="true"
																			style="color: rgba(250, 71, 0, 0.836);"></i></a>
																	</button>
																</div>
															</div>
														</div>
													</div> -->
													<!-- <div class="gap-xs"></div>
													<div class="row">
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="container-fluid">
																<div class="row">
																	<div class="col-lg-3 col-md-12 col-sm-12 col-12">
																		<p>Kho hàng:</p>
																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào..">
																			</div>

																		</form>

																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào...">
																			</div>
																		</form>
																	</div>

																</div>
															</div>
														</div>
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="container-fluid">
																<div class="row">
																	<div class="col-lg-3 col-md-12 col-sm-12 col-12">
																		<p>Đã bán:</p>
																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập va">
																			</div>

																		</form>

																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0>
																			</div>
																		</form>
																	</div>

																</div>
															</div>
														</div>
													</div> -->
													<%-- <div class="gap-xs"></div>
													<div class="row">

														<div class="col-lg-1 col-md-1 col-4 col-sm-4"
															style="text-align: left !important;">
															<button
																class="btn btn-outline-primary btn-custom-timkiem">
																Tìm</button>
														</div>

														<div class="col-lg-2 col-md-2 col-4 col-sm-4">
															<button class="btn btn-outline-danger ">Nhập lại
															</button>

														</div>
													</div>
													<div class="gap-sm"></div>
													<div class="row row-product">
														<div class="col-lg-5 col-md-5 col-sm-5 col-5">
															<p>0 Product</p>
														</div>
														<div class="col-lg-5 col-md-5 col-sm-5 col-5">
															<a
																href="${pageContext.servletContext.contextPath}/employees-product-add">
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
														<div class="col-lg-2 col-md-2 col-sm-2 col-2">
															<button
																class="btn btn-outline-secondary btn-custom-xu-li">
																<i class="fa fa-th-large" aria-hidden="true"></i>
															</button>
															<button
																class="btn btn-outline-secondary btn-custom-xu-li">
																<i class="fa fa-list" aria-hidden="true"></i>
															</button>
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
																					<th>Tên sản phẩm</th>
																					<th>SKU phân loại</th>
																					<th>Giá</th>
																					<th>Số lượng tồn</th>
																					<th>Trạng thái</th>
																				</tr>
																			</thead>
																			<tbody>
																				<c:if test="${not empty product}">
																					<c:forEach items="${product.getList()}" var="p">
																						<c:if test="${p.getQty() == 0}">
																							<tr>
																								<td><a
																									href="<c:url value="/employees-product-import?id=${p.getId()}"/>">${p.getName()}
																								</a></td>
																								<td>${p.getCatalog_id()}</td>
																								<td>${p.getPrice()}₫</td>
																								<td>${p.getQty()}</td>
																								<td><c:choose>
																										<c:when test="${p.getQty() == 0 }">
																											<span class="badge bg-danger">Hết hàng</span>
																										</c:when>
																										<c:otherwise>
																											<span class="badge bg-success">Còn
																												hàng</span>
																										</c:otherwise>
																									</c:choose></td>
																								<td><a
																									href="<c:url value="/employees-product-import?id=${p.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-primary btn-sm">
																											<i class="ti-import"></i>
																										</button></a></td>

																								<%-- <td><a href="<c:url value="/employees-product-delete?action=xoa&id=${p.getId()}"/>"><button type="button"
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
											<%-- <div class="tab-pane fade" id="lock" role="tabpanel"
												aria-labelledby="lock-tab">
												<div class="container-fluid">
													<div class="gap-md"></div>
													<div class="row">
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="input-group mb-3">
																<div class="input-group-prepend">
																	<button
																		class="btn btn-outline-secondary dropdown-toggle"
																		type="button" data-toggle="dropdown"
																		aria-haspopup="true" aria-expanded="false">
																		Tên sản phẩm</button>
																	<div class="dropdown-menu">
																		<a class="dropdown-item" href="#">Mã sản phẩm</a> <a
																			class="dropdown-item" href="#">SKU sản phẩm</a>

																	</div>
																</div>
																<input type="text" class="form-control"
																	aria-label="Text input with dropdown button">
															</div>
														</div>
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="input-group">
																<div class="input-group mb-3">
																	<div class="input-group-prepend">
																		<span class="input-group-text"
																			id="inputGroup-sizing-default">Danh mục</span>
																	</div>
																	<input type="text" class="form-control"
																		aria-label="Sizing example input"
																		aria-describedby="inputGroup-sizing-default">
																	<button class="btn btn-outline-secondary"
																		data-toggle="modal" data-target="#myModal">
																		<a href=""><i class="fa fa-pencil"
																			aria-hidden="true"
																			style="color: rgba(250, 71, 0, 0.836);"></i></a>
																	</button>
																</div>
															</div>
														</div>
													</div>
													<div class="gap-xs"></div>
													<div class="row">
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="container-fluid">
																<div class="row">
																	<div class="col-lg-3 col-md-12 col-sm-12 col-12">
																		<p>Kho hàng:</p>
																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào...">
																			</div>

																		</form>

																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào...">
																			</div>
																		</form>
																	</div>

																</div>
															</div>
														</div>
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="container-fluid">
																<div class="row">
																	<div class="col-lg-3 col-md-12 col-sm-12 col-12">
																		<p>Đã bán:</p>
																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào...">
																			</div>

																		</form>

																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào...">
																			</div>
																		</form>
																	</div>

																</div>
															</div>
														</div>

													</div>
													<div class="gap-xs"></div>
													<div class="row">

														<div class="col-lg-1 col-md-1 col-4 col-sm-4"
															style="text-align: left !important;">
															<button
																class="btn btn-outline-primary btn-custom-timkiem ">
																Tìm</button>
														</div>

														<div class="col-lg-2 col-md-2 col-4 col-sm-4">
															<button class="btn btn-outline-danger ">Nhập lại
															</button>

														</div>
													</div>
													<div class="gap-sm"></div>
													<div class="row row-product">
														<div class="col-lg-5 col-md-5 col-sm-5 col-5">
															<p>0 Product</p>

														</div>
														<div class="col-lg-5 col-md-5 col-sm-5 col-5">
															<a
																href="${pageContext.servletContext.contextPath}/employees-product-add">
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
														<div class="col-lg-2 col-md-2 col-sm-2 col-2">
															<button
																class="btn btn-outline-secondary btn-custom-xu-li">
																<i class="fa fa-th-large" aria-hidden="true"></i>
															</button>
															<button
																class="btn btn-outline-secondary btn-custom-xu-li">
																<i class="fa fa-list" aria-hidden="true"></i>
															</button>
														</div>
													</div>
													<div class="gap-sm"></div>
													<div class="row">
														<div class="col-12">
															<section class="section">
																<div class="card">
																	<!-- bị khóa -->
																	<div class="card-body">
																		<table class='table table-striped' id="table1">
																			<thead>
																				<tr>
																					<th>Tên sản phẩm</th>
																					<th>SKU phân loại</th>
																					<th>Giá</th>
																					<th>Số lượng đã bán</th>
																					<th>Trạng thái</th>

																				</tr>
																			</thead>
																			<tbody>


																				<tr>
																					<td>CPU - AMD Threadripper™ 3970X Socket
																						sTRX4/128MB/3.7Ghz/32 nhân 64 luồng</td>
																					<td>CPUAMDS3970</td>
																					<td>4,190,000₫</td>
																					<td>23</td>
																					<td><span class="badge bg-warning">Bị
																							tạm khóa</span></td>
																				</tr>

																				<tr>
																					<td>CPU - Core i7 9700 / 12M / 3.0GHz upto
																						4.70GHz / 8 nhân 8 luồng</td>
																					<td>CPUITI79100</td>
																					<td>1,190,000₫</td>
																					<td>04</td>
																					<td><span class="badge bg-warning">Bị
																							tạm khóa</span></td>
																				</tr>

																				<tr>
																					<td>Mainboard - ASROCK H310CM HDV/M2</td>
																					<td>MBASRH310</td>
																					<td>5,190,000₫</td>
																					<td>45</td>
																					<td><span class="badge bg-warning">Bị
																							tạm khóa</span></td>
																				</tr>

																				<tr>
																					<td>RAM - (4GB DDR4 1x4G 2400) Ram G.skill
																						Ripjaws Laptop</td>
																					<td>RAM4X22400</td>
																					<td>9,190,000₫</td>
																					<td>93</td>
																					<td><span class="badge bg-warning">Bị
																							tạm khóa</span></td>
																				</tr>

																			</tbody>
																		</table>
																	</div>
																</div>

															</section>
														</div>
													</div>
												</div>
											</div> --%>
											<%-- <div class="tab-pane fade" id="hidden" role="tabpanel"
												aria-labelledby="hidden-tab">
												<div class="container-fluid">
													<div class="gap-md"></div>
													<div class="row">
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="input-group mb-3">
																<div class="input-group-prepend">
																	<button
																		class="btn btn-outline-secondary dropdown-toggle"
																		type="button" data-toggle="dropdown"
																		aria-haspopup="true" aria-expanded="false">
																		Tên sản phẩm</button>
																	<div class="dropdown-menu">
																		<a class="dropdown-item" href="#">Mã sản phẩm</a> <a
																			class="dropdown-item" href="#">SKU sản phẩm</a>

																	</div>
																</div>
																<input type="text" class="form-control"
																	aria-label="Text input with dropdown button">
															</div>
														</div>
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="input-group">
																<div class="input-group mb-3">
																	<div class="input-group-prepend">
																		<span class="input-group-text"
																			id="inputGroup-sizing-default">Danh mục</span>
																	</div>
																	<input type="text" class="form-control"
																		aria-label="Sizing example input"
																		aria-describedby="inputGroup-sizing-default">
																	<button class="btn btn-outline-secondary"
																		data-toggle="modal" data-target="#myModal">
																		<a href=""><i class="fa fa-pencil"
																			aria-hidden="true"
																			style="color: rgba(250, 71, 0, 0.836);"></i></a>
																	</button>
																</div>
															</div>
														</div>
													</div>
													<div class="gap-xs"></div>
													<div class="row">
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="container-fluid">
																<div class="row">
																	<div class="col-lg-3 col-md-12 col-sm-12 col-12">
																		<p>Kho hàng:</p>
																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào...">
																			</div>

																		</form>

																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào...">
																			</div>
																		</form>
																	</div>

																</div>
															</div>
														</div>
														<div class="col-lg-6 col-md-6 col-sm-12 col-12">
															<div class="container-fluid">
																<div class="row">
																	<div class="col-lg-3 col-md-12 col-sm-12 col-12">
																		<p>Đã bán:</p>
																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào...">
																			</div>

																		</form>

																	</div>

																	<div class="col-lg-4 col-md-4 col-sm-6 col-6">
																		<form>
																			<div class="form-group">
																				<input type="number" name="" id="" min=0
																					placeholder="Nhập vào...">
																			</div>
																		</form>
																	</div>

																</div>
															</div>
														</div>

													</div>
													<div class="gap-xs"></div>
													<div class="row">

														<div class="col-lg-1 col-md-1 col-4 col-sm-4"
															style="text-align: left !important;">
															<button
																class="btn btn-outline-primary btn-custom-timkiem">
																Tìm</button>
														</div>

														<div class="col-lg-2 col-md-2 col-4 col-sm-4">
															<button class="btn btn-outline-danger ">Nhập lại
															</button>

														</div>
													</div>
													<div class="gap-sm"></div>
													<div class="row row-product">
														<div class="col-lg-5 col-md-5 col-sm-5 col-5">
															<p>0 Product</p>

														</div>
														<div class="col-lg-5 col-md-5 col-sm-5 col-5">
															<a
																href="${pageContext.servletContext.contextPath}/employees-product-add">
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
														<div class="col-lg-2 col-md-2 col-sm-2 col-2">
															<button
																class="btn btn-outline-secondary btn-custom-xu-li">
																<i class="fa fa-th-large" aria-hidden="true"></i>
															</button>
															<button
																class="btn btn-outline-secondary btn-custom-xu-li">
																<i class="fa fa-list" aria-hidden="true"></i>
															</button>
														</div>
													</div>
													<div class="gap-sm"></div>
													<div class="row">
														<div class="col-12">
															<section class="section">
																<div class="card">
																	<!-- bị ẩn -->
																	<div class="card-body">
																		<table class='table table-striped' id="table1">
																			<thead>
																				<tr>
																					<th>Tên sản phẩm</th>
																					<th>SKU phân loại</th>
																					<th>Giá</th>
																					<th>Số lượng đã bán</th>
																					<th>Trạng thái</th>

																				</tr>
																			</thead>
																			<tbody>


																				<tr>
																					<td>SSD - SSD Patriot Burst 2.5 Sata III 120Gb
																					</td>
																					<td>SSDKT2TB</td>
																					<td>3,490,000₫</td>
																					<td>12</td>
																					<td><span class="badge bg-secondary">Đã
																							ẩn</span></td>
																				</tr>

																				<tr>
																					<td>Bàn Phím - Chuột Giả Cơ Rapoo V100S</td>
																					<td>KBRPV10S</td>
																					<td>3,790,000₫</td>
																					<td>15</td>
																					<td><span class="badge bg-secondary">Đã
																							ẩn</span></td>
																				</tr>

																				<tr>
																					<td>Bàn phím - DareU EK1280s Pink White</td>
																					<td>KBEK128PW</td>
																					<td>4,290,000₫</td>
																					<td>17</td>
																					<td><span class="badge bg-secondary">Đã
																							ẩn</span></td>
																				</tr>

																				<tr>
																					<td>Chuột - Fuhlen F200</td>
																					<td>MFULF200</td>
																					<td>4,490,000₫</td>
																					<td>18</td>
																					<td><span class="badge bg-secondary">Đã
																							ẩn</span></td>
																				</tr>

																				<tr>
																					<td>Màn hình - Acer K222HQL 22" Full HD</td>
																					<td>MTK222HQL</td>
																					<td>4,790,000₫</td>
																					<td>21</td>
																					<td><span class="badge bg-secondary">Đã
																							ẩn</span></td>
																				</tr>

																			</tbody>
																		</table>
																	</div>
																</div>

															</section>
														</div>
													</div>
												</div>
											</div> --%>
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