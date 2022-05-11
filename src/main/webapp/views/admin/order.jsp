<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>P.V.B | Danh sách đơn hàng</title>
</head>

<body>
	<form action="<c:url value="/admin-order"/> " method="post">

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
												id="all-tab" data-toggle="tab" href="#all" role="tab"
												aria-controls="all" aria-selected="true">Tất cả</a></li>
											<li class="nav-item"><a class="nav-link"
												id="waitcofirm-tab" data-toggle="tab" href="#waitcofirm"
												role="tab" aria-controls="waitcofirm" aria-selected="false">Chờ
													xác nhận</a></li>
											<li class="nav-item"><a class="nav-link"
												id="waittaking-tab" data-toggle="tab" href="#waittaking"
												role="tab" aria-controls="waittaking" aria-selected="false">Chờ
													lấy hàng</a></li>
											<li class="nav-item"><a class="nav-link"
												id="shipping-tab" data-toggle="tab" href="#shipping"
												role="tab" aria-controls="shipping" aria-selected="false">Đang
													đi giao</a></li>
											<li class="nav-item"><a class="nav-link"
												id="complete-tab" data-toggle="tab" href="#complete"
												role="tab" aria-controls="complete" aria-selected="false">Đã
													giao</a></li>
											<li class="nav-item"><a class="nav-link"
												href="${pageContext.servletContext.contextPath}/admin-cancel">Đã
													hủy</a></li>
 											<li class="nav-item"><a class="nav-link"
												href="${pageContext.servletContext.contextPath}/admin-return">Trả
													hàng & Hoàn tiền</a></li>

										</ul>

										<div class="tab-content" id="myTabContent">


											<div class="tab-pane fade show active" id="all"
												role="tabpanel" aria-labelledby="all-tab">
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
																		class="fa fa-search" aria-hidden="true"></i>
																		</button> </span>
																</div>
															</div>
														</div>
														<div class="col-lg-1 col-md-1 "></div>
														<div class="col-lg-7 col-md-7 col-sm-12 col-12">
															<div class="container-fluid">
																<div class="row">
																	<div class="col-lg-2 col-md-2">
																		<p style="margin-top: 10px;">Ngày đặt hàng</p>
																	</div>
																	<div class="col-lg-3 col-md-3col-sm-6 col-6">
																		<div class="form-group row">
																			<div class="col-12">
																				<input class="form-control" type="datetime-local"
																					value="2011-08-19T13:45:00">
																			</div>
																		</div>
																	</div>
																	<div class="col-lg-1 col-md-1">
																		<i class="fa fa-arrow-right" aria-hidden="true"
																			style="margin-left: 20px; margin-top: 15px;"></i>
																	</div>
																	<div class="col-lg-3 col-md-3 col-sm-6 col-6">
																		<div class="form-group row">
																			<div class="col-12">
																				<input class="form-control" type="datetime-local"
																					value="2011-08-19T13:45:00">
																			</div>
																		</div>
																	</div>
																	<div class="col-lg-3 col-md-3">
																		<button class="btn btn-primary">
																			<i class="fa fa-print" aria-hidden="true"
																				style="color: white !important;"></i> In hóa đơn
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
																		<table class='table table-striped'>
																			<thead>
																				<tr>
																					<th>Mã đơn hàng</th>
																					<th>Địa chỉ nhận hàng</th>
																					<th>Tổng tiền</th>
																					<th>Ngày đặt hàng</th>
																					<th>Ngày nhận hàng</th>
																					<th>Ghi chú</th>
																					<th>Trạng thái</th>

																				</tr>
																			</thead>
																			<tbody>
																				<c:if test="${not empty transaction}">
																					<c:forEach items="${transaction.getList()}" var="t">
																						<tr>
																							<td><a
																								href="<c:url value="/api-order-detail?id=${t.getId()}"/>">${t.getId()}
																							</a></td>
																							<td>${t.getUser_address()}</td>
																							<td>${t.getAmount()}</td>
																							<td>${t.getShipping_date()}</td>
																							<td>${t.getDelivery_date()}</td>
																							<td>${t.getMessage()}</td>
																							<td><c:choose>
																									<c:when test="${t.getStatus() == 0}">
																										<span class="badge bg-warning">Chờ xác
																											nhận</span>
																									</c:when>
																									<c:when test="${t.getStatus() == 1}">
																										<span class="badge bg-secondary">Chờ
																											lấy hàng</span>
																									</c:when>
																									<c:when test="${t.getStatus() == 2}">
																										<span class="badge bg-info">Đang đi
																											giao</span>
																									</c:when>
																									<c:when test="${t.getStatus() == 3}">
																										<span class="badge bg-success">Đã giao
																											hàng</span>
																									</c:when>
																									<c:when test="${t.getStatus() == 4}">
																										<span class="badge bg-danger">Đã hủy</span>
																									</c:when>
																								</c:choose></td>
																							<td><a
																								href="<c:url value="/api-order-detail?id=${t.getId()}"/>"><button
																										type="button"
																										class="btn btn-outline-primary btn-sm">
																										<i class="ti-printer"></i>
																									</button></a></td>

																							<td><a
																								href="<c:url value="/admin-order-edit?id=${t.getId()}"/>"><button
																										type="button"
																										class="btn btn-outline-success btn-sm">
																										<i class="ti-folder"></i>
																									</button></a></td>
																							<c:if test="${t.getStatus() >= 3}">
																							<td><a href="<c:url value="/admin-order-delete?action=xoa&id=${t.getId()}"/>"><button type="button"
																										class="btn btn-outline-danger btn-sm" >
																										<i class="ti-trash"></i>
																									</button></a></td>
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
																		class="fa fa-search" aria-hidden="true"></i></span>>
																</div>
															</div>
														</div>
														<div class="col-lg-1 col-md-1 "></div>
														<div class="col-lg-7 col-md-7 col-sm-12 col-12">
															<div class="container-fluid">
																<div class="row">
																	<div class="col-lg-2 col-md-2">
																		<p style="margin-top: 10px;">Ngày đặt hàng</p>
																	</div>
																	<div class="col-lg-3 col-md-3col-sm-6 col-6">
																		<div class="form-group row">
																			<div class="col-12">
																				<input class="form-control" type="datetime-local"
																					value="2011-08-19T13:45:00">
																			</div>
																		</div>
																	</div>
																	<div class="col-lg-1 col-md-1">
																		<i class="fa fa-arrow-right" aria-hidden="true"
																			style="margin-left: 20px; margin-top: 15px;"></i>
																	</div>
																	<div class="col-lg-3 col-md-3 col-sm-6 col-6">
																		<div class="form-group row">
																			<div class="col-12">
																				<input class="form-control" type="datetime-local"
																					value="2011-08-19T13:45:00">
																			</div>
																		</div>
																	</div>
																	<div class="col-lg-3 col-md-3">
																		<button class="btn btn-primary">
																			<i class="fa fa-print" aria-hidden="true"
																				style="color: white !important;"></i> In hóa đơn
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
																		<table class='table table-striped'>
																			<thead>
																				<tr>
																					<th>Mã đơn hàng</th>
																					<th>Địa chỉ nhận hàng</th>
																					<th>Tổng tiền</th>
																					<th>Ngày đặt hàng</th>
																					<th>Ngày nhận hàng</th>
																					<th>Ghi chú</th>
																					<th>Trạng thái</th>

																				</tr>
																			</thead>
																			<tbody>
																				<c:if test="${not empty transaction}">
																					<c:forEach items="${transaction.getList()}" var="t">
																						<c:if test="${t.getStatus()==0}">
																							<tr>
																								<td><a
																									href="<c:url value="/api-order-detail?id=${t.getId()}"/>">${t.getId()}
																								</a></td>
																								<td>${t.getUser_address()}</td>
																								<td>${t.getAmount()}</td>
																								<td>${t.getShipping_date()}</td>
																								<td>${t.getDelivery_date()}</td>
																								<td>${t.getMessage()}</td>
																								<td><span class="badge bg-warning">Chờ
																										xác nhận</span></td>
																								<td><a
																									href="<c:url value="/api-order-detail?id=${t.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-primary btn-sm">
																											<i class="ti-printer"></i>
																										</button></a></td>

																								<td><a
																									href="<c:url value="/admin-order-edit?id=${t.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-success btn-sm">
																											<i class="ti-folder"></i>
																										</button></a></td>

																								<%-- <td><a  href="<c:url value="/admin-order-delete?action=xoa&id=${t.getId()}"/>"><button type="button"
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
																		class="fa fa-search" aria-hidden="true"></i></span>>
																</div>
															</div>
														</div>
														<div class="col-lg-1 col-md-1 "></div>
														<div class="col-lg-7 col-md-7 col-sm-12 col-12">
															<div class="container-fluid">
																<div class="row">
																	<div class="col-lg-2 col-md-2">
																		<p style="margin-top: 10px;">Ngày đặt hàng</p>
																	</div>
																	<div class="col-lg-3 col-md-3col-sm-6 col-6">
																		<div class="form-group row">
																			<div class="col-12">
																				<input class="form-control" type="datetime-local"
																					value="2011-08-19T13:45:00">
																			</div>
																		</div>
																	</div>
																	<div class="col-lg-1 col-md-1">
																		<i class="fa fa-arrow-right" aria-hidden="true"
																			style="margin-left: 20px; margin-top: 15px;"></i>
																	</div>
																	<div class="col-lg-3 col-md-3 col-sm-6 col-6">
																		<div class="form-group row">
																			<div class="col-12">
																				<input class="form-control" type="datetime-local"
																					value="2011-08-19T13:45:00">
																			</div>
																		</div>
																	</div>
																	<div class="col-lg-3 col-md-3">
																		<button class="btn btn-primary">
																			<i class="fa fa-print" aria-hidden="true"
																				style="color: white !important;"></i> In hóa đơn
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
																		<table class='table table-striped'>
																			<thead>
																				<tr>
																					<th>Mã đơn hàng</th>
																					<th>Địa chỉ nhận hàng</th>
																					<th>Tổng tiền</th>
																					<th>Ngày đặt hàng</th>
																					<th>Ngày nhận hàng</th>
																					<th>Ghi chú</th>
																					<th>Trạng thái</th>

																				</tr>
																			</thead>
																			<tbody>
																				<c:if test="${not empty transaction}">
																					<c:forEach items="${transaction.getList()}" var="t">
																						<c:if test="${t.getStatus()==1}">
																							<tr>
																								<td><a
																									href="<c:url value="/api-order-detail?id=${t.getId()}"/>">${t.getId()}
																								</a></td>
																								<td>${t.getUser_address()}</td>
																								<td>${t.getAmount()}</td>
																								<td>${t.getShipping_date()}</td>
																								<td>${t.getDelivery_date()}</td>
																								<td>${t.getMessage()}</td>
																								<td><span class="badge bg-secondary">Chờ
																										lấy hàng</span></td>
																								<td><a
																									href="<c:url value="/api-order-detail?id=${t.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-primary btn-sm">
																											<i class="ti-printer"></i>
																										</button></a></td>

																								<td><a
																									href="<c:url value="/admin-order-edit?id=${t.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-success btn-sm">
																											<i class="ti-folder"></i>
																										</button></a></td>

																								<%-- <td><a  href="<c:url value="/admin-order-delete?action=xoa&id=${t.getId()}"/>"><button type="button"
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
																		class="fa fa-search" aria-hidden="true"></i></span>>
																</div>
															</div>
														</div>
														<div class="col-lg-1 col-md-1 "></div>
														<div class="col-lg-7 col-md-7 col-sm-12 col-12">
															<div class="container-fluid">
																<div class="row">
																	<div class="col-lg-2 col-md-2">
																		<p style="margin-top: 10px;">Ngày đặt hàng</p>
																	</div>
																	<div class="col-lg-3 col-md-3col-sm-6 col-6">
																		<div class="form-group row">
																			<div class="col-12">
																				<input class="form-control" type="datetime-local"
																					value="2011-08-19T13:45:00">
																			</div>
																		</div>
																	</div>
																	<div class="col-lg-1 col-md-1">
																		<i class="fa fa-arrow-right" aria-hidden="true"
																			style="margin-left: 20px; margin-top: 15px;"></i>
																	</div>
																	<div class="col-lg-3 col-md-3 col-sm-6 col-6">
																		<div class="form-group row">
																			<div class="col-12">
																				<input class="form-control" type="datetime-local"
																					value="2011-08-19T13:45:00">
																			</div>
																		</div>
																	</div>
																	<div class="col-lg-3 col-md-3">
																		<button class="btn btn-primary">
																			<i class="fa fa-print" aria-hidden="true"
																				style="color: white !important;"></i> In hóa đơn
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
																		<table class='table table-striped'>
																			<thead>
																				<tr>
																					<th>Mã đơn hàng</th>
																					<th>Địa chỉ nhận hàng</th>
																					<th>Tổng tiền</th>
																					<th>Ngày đặt hàng</th>
																					<th>Ngày nhận hàng</th>
																					<th>Ghi chú</th>
																					<th>Trạng thái</th>

																				</tr>
																			</thead>
																			<tbody>
																				<c:if test="${not empty transaction}">
																					<c:forEach items="${transaction.getList()}" var="t">
																						<c:if test="${t.getStatus()==2}">
																							<tr>
																								<td><a
																									href="<c:url value="/api-order-detail?id=${t.getId()}"/>">${t.getId()}
																								</a></td>
																								<td>${t.getUser_address()}</td>
																								<td>${t.getAmount()}</td>
																								<td>${t.getShipping_date()}</td>
																								<td>${t.getDelivery_date()}</td>
																								<td>${t.getMessage()}</td>
																								<td><span class="badge bg-info">Đang
																										đi giao</span></td>
																								<td><a
																									href="<c:url value="/api-order-detail?id=${t.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-primary btn-sm">
																											<i class="ti-printer"></i>
																										</button></a></td>

																								<td><a
																									href="<c:url value="/admin-order-edit?id=${t.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-success btn-sm">
																											<i class="ti-folder"></i>
																										</button></a></td>

																								<%-- <td><a  href="<c:url value="/admin-order-delete?action=xoa&id=${t.getId()}"/>"><button type="button"
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
																		class="fa fa-search" aria-hidden="true"></i></span>
																</div>
															</div>
														</div>
														<div class="col-lg-1 col-md-1 "></div>
														<div class="col-lg-7 col-md-7 col-sm-12 col-12">
															<div class="container-fluid">
																<div class="row">
																	<div class="col-lg-2 col-md-2">
																		<p style="margin-top: 10px;">Ngày đặt hàng</p>
																	</div>
																	<div class="col-lg-3 col-md-3col-sm-6 col-6">
																		<div class="form-group row">
																			<div class="col-12">
																				<input class="form-control" type="datetime-local"
																					value="2011-08-19T13:45:00">
																			</div>
																		</div>
																	</div>
																	<div class="col-lg-1 col-md-1">
																		<i class="fa fa-arrow-right" aria-hidden="true"
																			style="margin-left: 20px; margin-top: 15px;"></i>
																	</div>
																	<div class="col-lg-3 col-md-3 col-sm-6 col-6">
																		<div class="form-group row">
																			<div class="col-12">
																				<input class="form-control" type="datetime-local"
																					value="2011-08-19T13:45:00">
																			</div>
																		</div>
																	</div>
																	<div class="col-lg-3 col-md-3">
																		<button class="btn btn-primary">
																			<i class="fa fa-print" aria-hidden="true"
																				style="color: white !important;"></i> In hóa đơn
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
																		<table class='table table-striped'>
																			<thead>
																				<tr>
																					<th>Mã đơn hàng</th>
																					<th>Địa chỉ nhận hàng</th>
																					<th>Tổng tiền</th>
																					<th>Ngày đặt hàng</th>
																					<th>Ngày nhận hàng</th>
																					<th>Ghi chú</th>
																					<th>Trạng thái</th>

																				</tr>
																			</thead>
																			<tbody>
																				<c:if test="${not empty transaction}">
																					<c:forEach items="${transaction.getList()}" var="t">
																						<c:if test="${t.getStatus()==3}">
																							<tr>
																								<td><a
																									href="<c:url value="/api-order-detail?id=${t.getId()}"/>">${t.getId()}
																								</a></td>
																								<td>${t.getUser_address()}</td>
																								<td>${t.getAmount()}</td>
																								<td>${t.getShipping_date()}</td>
																								<td>${t.getDelivery_date()}</td>
																								<td>${t.getMessage()}</td>
																								<td><span class="badge bg-success">Đã
																										giao hàng</span></td>
																								<td><a
																									href="<c:url value="/api-order-detail?id=${t.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-primary btn-sm">
																											<i class="ti-printer"></i>
																										</button></a></td>

																								<td><a
																									href="<c:url value="/admin-order-edit?id=${t.getId()}"/>"><button
																											type="button"
																											class="btn btn-outline-success btn-sm">
																											<i class="ti-folder"></i>
																										</button></a></td>

																								<td><a href="<c:url value="/admin-order-delete?action=xoa&id=${t.getId()}"/>"><button type="button"
																											class="btn btn-outline-danger btn-sm">
																											<i class="ti-trash"></i>
																										</button></a></td>
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