<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<!-- Meta Tag -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name='copyright' content=''>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Title Tag  -->
	<title>Liên hệ</title>

</head>

<body class="js">

	<!-- Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="bread-inner">
						<ul class="bread-list">
							<li><a href="<c:url value="/trang-chu"/>">Trang chủ<i class="ti-arrow-right"></i></a></li>
							<li class="active"><a href="<c:url value="/lien-he"/>">Liên hệ</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Breadcrumbs -->

	<!-- Start Contact -->
	<section id="contact-us" class="contact-us section">
		<div class="container">
			<div class="contact-head">
				<div class="row">
					<div class="col-lg-8 col-12">
						<div class="form-main">
							<div class="title">
								<h3>Viết tin nhắn của bạn...</h3>
							</div>
							<form class="form" method="post" action="/lien-he">
								<div class="row">
									<div class="col-lg-6 col-12">
										<div class="form-group">
											<label>Họ và tên<span>*</span></label>
											<input name="name" type="text" placeholder="Vui lòng nhập họ và tên...">
										</div>
									</div>
									<div class="col-lg-6 col-12">
										<div class="form-group">
											<label>Tiêu đề<span>*</span></label>
											<input name="subject" type="text" placeholder="Vui lòng nhập tiêu đề...">
										</div>
									</div>
									<div class="col-lg-6 col-12">
										<div class="form-group">
											<label>Địa chỉ gmail<span>*</span></label>
											<input name="email" type="email" placeholder="Vui lòng nhập gmail...">
										</div>
									</div>
									<div class="col-lg-6 col-12">
										<div class="form-group">
											<label>Sô điện thoại<span>*</span></label>
											<input name="company_name" type="text" placeholder="Vui lòng nhập số điện thoại..">
										</div>
									</div>
									<div class="col-12">
										<div class="form-group message">
											<label>Tin nhắn:<span>*</span></label>
											<textarea name="message" placeholder="Vui lòng nhập tin nhắn của bạn..."></textarea>
										</div>
									</div>
									<div class="col-12">
										<div class="form-group button">
											<button type="submit" class="btn ">Gửi tin nhắn</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="col-lg-4 col-12">
						<div class="single-head">
							<div class="single-info">
								<i class="fa fa-phone"></i>
								<h4 class="title">Liên hệ ngay:</h4>
								<ul>
									<li>+84 111 000 111</li>
									<li>+84 000 110 123</li>
								</ul>
							</div>
							<div class="single-info">
								<i class="fa fa-envelope-open"></i>
								<h4 class="title">Gmail:</h4>
								<ul>
									<li><a href="#">anhdq.1999@gmail.com</a></li>
									<li><a href="#">Nhatooo@gmail.com</a></li>
									<li><a href="#">linhmyyy17@gmail.com</a></li>
									<li><a href="#">L.A.N@gmail.com</a></li>
								</ul>
							</div>
							<div class="single-info">
								<i class="fa fa-location-arrow"></i>
								<h4 class="title">Địa chỉ:</h4>
								<ul>
									<li>Trụ sở chính: KP6, Phường Linh Trung, Quận Thủ Đức, TP. Hồ Chí Minh, Việt Nam</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/ End Contact -->
</body>

</html>