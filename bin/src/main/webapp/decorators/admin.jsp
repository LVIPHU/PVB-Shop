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


<html>
<head>
    <title><dec:title default="Trang chủ"></dec:title></title>
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
    <%--<link rel="stylesheet"  href="<c:url value="/templates/admin/images/favicon.png" />"/>--%>
    <link rel="stylesheet" href="<c:url value="/templates/admin/css/style.css"/>"/>
</head>
<body>

<div id="app">
    <!-- Menu -->
    <%@ include file="/common/admin/menu.jsp" %>
    <!--/ End Menu -->

    <div id="main">
        <!-- Header -->
        <%@ include file="/common/admin/header.jsp" %>
        <!--/ End Header -->


        <div class="gap-sm"></div>

        <dec:body/>


    </div>

</div>
<%@ include file="/common/admin/footer.jsp" %>
<!-- /End Footer Area -->

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
