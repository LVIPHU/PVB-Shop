<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<html>
<head>
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
<%--     <link href="<c:url value="/templates/web/css/reset.css"  />" rel="stylesheet" type="text/css" media="all"/> --%>
    <link href="<c:url value="/templates/web/css/style1.css"  />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value="/templates/web/css/responsive.css"  />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value="/templates/web/css/style-login.css"  />" rel="stylesheet" type="text/css" media="all"/>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet"   href="<c:url value="/templates/admin/css/bootstrap.css"/>"/>
    <link rel="stylesheet"  href="<c:url value="/templates/admin/css/bootstrap.min.css"/>"/>
    <link rel="stylesheet"
          href="<c:url value="/templates/admin/vendors/chartjs/Chart.min.css"/>"/>
    <link rel="stylesheet"
          href="<c:url value="/templates/admin/fonts/font-awesome-4.7.0/fonts/fontawesome-webfont.ttf"/>"/>
    <link rel="stylesheet"
          href="<c:url value="/templates/admin/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>"/>
    <link rel="stylesheet"
          href="<c:url value="/templates/admin/vendors/perfect-scrollbar/perfect-scrollbar.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/templates/admin/css/app.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/templates/admin/css/style.css"/>"/>
</head>
<body>

<div id="app">
    <!-- Menu -->
    <%@ include file="/common/employees/menu.jsp" %>
    <!--/ End Menu -->

    <div id="main">
        <!-- Header -->
        <%@ include file="/common/employees/header.jsp" %>
        <!--/ End Header -->


        <div class="gap-sm"></div>

        <dec:body/>

	<%@ include file="/common/employees/footer.jsp" %>
    </div>
</div>
<!-- /End Footer Area -->
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
<script type="text/javascript" src="<c:url value="/templates/admin/js/feather-icons/feather.min.js"/>"></script>
<script type="text/javascript"
        src="<c:url value="/templates/admin/vendors/perfect-scrollbar/perfect-scrollbar.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/templates/admin/js/app.js"/>"></script>
<script type="text/javascript" src="<c:url value="/templates/admin/vendors/chartjs/Chart.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/templates/admin/vendors/apexcharts/apexcharts.min.js"/>"></script>
<script src="<c:url value="/templates/admin/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/templates/admin/js/pages/dashboard.js"/>"></script>
<script type="text/javascript" src="<c:url value="/templates/admin/js/main.js"/>"></script>
</body>
</html>
