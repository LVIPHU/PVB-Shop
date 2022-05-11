<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>P.V.B COMPUTER</title>
</head>
<body>
	<div class="jumbotron text-center">
	  <h1 class="display-3">Thank You!</h1>
	  <p class="lead"><strong>Cảm ơn bạn đã mua sắm tại trang web chúng tôi</strong></p>
	  <hr>
	  <p>
	    Nếu có vấn đề? <a href="${pageContext.servletContext.contextPath }/lien-he">Liên hệ chúng tôi</a>
	  </p>
	  <p class="lead">
	    <a class="btn btn-primary btn-sm" href="${pageContext.servletContext.contextPath }/trang-chu" role="button">Continue to homepage</a>
	  </p>
	</div>
</body>
</html>