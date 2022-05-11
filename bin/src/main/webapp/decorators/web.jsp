<%--
  Created by IntelliJ IDEA.
  User: nha
  Date: 01/21/2021
  Time: 2:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title><dec:title default="Trang chủ"></dec:title></title>


    <!--css-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link href="<c:url value="/templates/web/css/flex-slider.min.css"  />" rel="stylesheet" type="text/css"
          media="all"/>
    <link href="<c:url value="/templates/web/css/jquery.fancybox.min.css"  />" rel="stylesheet" type="text/css"
          media="all"/>
    <link href="<c:url value="/templates/web/css/jquery-ui.css"  />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value="/templates/web/css/magnific-popup.css"  />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value="/templates/web/css/nice-select.css"  />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value="/templates/web/css/one-page-wonder.min.css"  />" rel="stylesheet" type="text/css"
          media="all"/>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="<c:url value="/templates/web/css/bootstrap.css"  />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value="/templates/web/css/font-awesome.css"  />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value="/templates/web/css/themify-icons.css"  />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value="/templates/web/css/animate.css"  />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value="/templates/web/css/flex-slider.min.css"  />" rel="stylesheet" type="text/css"
          media="all"/>
    <link href="<c:url value="/templates/web/css/owl-carousel.css"  />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value="/templates/web/css/slicknav.min.css"  />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value="/templates/web/css/reset.css"  />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value="/templates/web/css/style1.css"  />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value="/templates/web/css/responsive.css"  />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value="/templates/web/css/style-login.css"  />" rel="stylesheet" type="text/css" media="all"/>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
</head>
<body>
<!-- Header -->
<%@ include file="/common/web/header.jsp" %>
<!--/ End Header -->
<div class="container"><dec:body/></div>

<!-- Start Footer Area -->
<%@ include file="/common/web/footer.jsp" %>
<!-- /End Footer Area -->
<a id="scrollUp" href="#top" style="position: fixed; z-index: 2147483647;"><span><i
        class="fa fa-angle-up"></i></span></a>


<script>
    window.onload = function (){
        document.getElementById("password").onchange = validatePassword;
        document.getElementById("password2").onchange = validatePassword;
    }
    function validatePassword(){
        var pass = document.getElementById("password").value;
        var pass2 = document.getElementById("password2").value;
        if(pass!=pass2) {
            document.getElementById("password2").setCustomValidity("Mật khẩu không khớp");
        }else{
            document.getElementById("password2").setCustomValidity('');
        }
    }
</script>



<script type="text/javascript" src="<c:url value="/templates/web/js/jquery.min.js" />"></script>
<script src="<c:url value="/templates/web/js/jquery-migrate-3.0.0.js" />" type="text/javascript"></script>
<script src="<c:url value="/templates/web/js/jquery-ui.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/templates/web/js/popper.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/templates/web/js/bootstrap.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/templates/web/js/slicknav.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/templates/web/js/owl-carousel.js"/>" type="text/javascript"></script>
<script src="<c:url value="/templates/web/js/magnific-popup.js"/>" type="text/javascript"></script>
<script src="<c:url value="/templates/web/js/waypoints.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/templates/web/js/finalcountdown.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/templates/web/js/nicesellect.js"/>" type="text/javascript"></script>
<script src="<c:url value="/templates/web/js/flex-slider.js"/>" type="text/javascript"></script>
<script src="<c:url value="/templates/web/js/scrollup.js"/>" type="text/javascript"></script>
<script src="<c:url value="/templates/web/js/onepage-nav.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/templates/web/js/easing.js"/>" type="text/javascript"></script>
<script src="<c:url value="/templates/web/js/active.js"/>" type="text/javascript"></script>
<script src="<c:url value="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnhgNBg6jrSuqhTeKKEFDWI0_5fZLx0vM"/>"></script>
<script src="<c:url value="/templates/web/js/jquery.twbsPagination.min.js"/>" type="text/javascript"></script>


</body>
</html>