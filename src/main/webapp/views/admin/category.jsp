<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>P.V.B | Danh mục sản phẩm</title>
</head>
<body>
	<form action="<c:url value="/admin-category"/> " method="post">
		<div class="info-product">
			<div class="container-fluid">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<section class="section">
								<div class="card">
									<c:if test="${not empty message}">
										<div class="alert alert-${alert}" role="alert">${message}
										</div>
									</c:if>
									<div class="card-body">
										<table class='table table-striped' id="table1">
											<thead>
												<tr>
													<th style="text-align: center;">Mã danh mục</th>
													<th style="text-align: center;">Tên danh mục</th>
													<th style="text-align: center;">Số sản phẩm</th>
													<th style="text-align: center;">Trạng thái</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<c:if test="${not empty category}">
													<c:forEach items="${category.getList()}" var="c"
														varStatus="s">
														<tr>
															<td style="text-align: center;"><a
																href="<c:url value="/admin-product-edit?id=${c.getId()}"/>">${c.getId()}
															</a></td>
															<td style="text-align: center;"><a
																href="<c:url value="/admin-product-edit?id=${c.getId()}"/>">${c.getName()}
															</a></td>

															<td style="text-align: center;">${qty[s.count]}</td>
															<td style="text-align: center;"><c:choose>
																	<c:when test="${qty[s.count] == 0}">
																		<span class="badge bg-secondary">Không chứa sản
																			phẩm</span>

																	</c:when>
																	<c:otherwise>
																		<span class="badge bg-success">Chứa sản phẩm</span>
																	</c:otherwise>
																</c:choose></td>

															<td><a
																href="<c:url value="/admin-category-edit?id=${c.getId()}"/>"><button
																		type="button" class="btn btn-outline-success btn-sm">
																		<i class="ti-pencil"></i>
																	</button></a></td>
															<c:if test="${qty[s.count] == 0}">
																<td><a href="<c:url value="/admin-category-delete?action=xoa&id=${c.getId()}"/>"><button type="button"
																			class="btn btn-outline-danger btn-sm">
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
		</div>
	</form>
</body>

</html>