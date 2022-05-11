<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cấp lại mật khẩu</title>
</head>
<body>
<div class="login-form">
<!--Section: Block Content-->
<section class="mb-5 text-center">
  <form action="${pageContext.servletContext.contextPath}/lam-moi-mat-khau?user_id=${recovery}" method="post">
	<h2 class="text-center">
    	Tạo mật khẩu mới
    </h2>
	<div class="alert alert-${alert}" role="alert">
    	${message}
    </div>
    <div class="md-form md-outline form-group">
      <input type="password" id="newPass" name="password" class="form-control" placeholder="Nhập mật khẩu mới">
    </div>

    <div class="md-form md-outline form-group">
      <input type="password" id="newPassConfirm" name="repassword" class="form-control" placeholder="Nhập xác nhận mật khẩu">
    </div>
    
	<div class="form-group">
		<button type="submit" class="btn btn-primary mb-4 ">Đổi mật khẩu</button>
	</div>
	
	<div class="d-flex justify-content-between align-items-center mb-2">

	    <a href="https://mdbootstrap.com/docs/jquery/admin/auth/login/"><u>Back to Log In</u></a>
	
	    <a href="https://mdbootstrap.com/docs/jquery/admin/auth/register/"><u>Register</u></a>
	
	</div>
  </form>
</section>
<!--Section: Block Content-->
</div>
</body>
</html>