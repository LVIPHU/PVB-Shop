<%@ page import="com.ltweb.service.impl.CategoryService" %>
<%@ page import="com.ltweb.model.CatalogModel" %>
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
    <title>Danh mục sản phẩm</title>


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
                            <li class="active"><a href="<c:url value="/san-pham?&page=1"/>">Sản phẩm</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumbs -->

    <!-- Product Style -->
    <form action="<c:url value="/chi-tiet-san-pham"/>" method="get" id="formSubmit">
    <section class="product-area shop-sidebar shop section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-12">
                    <div class="shop-sidebar">
                        <!-- Single Widget -->
                        <div class="single-widget category">
                            <h3 class="title">Sản phẩm</h3>
                            <ul class="main-category">
                                <% CategoryService categoryService = new CategoryService();
                                    for (CatalogModel catalogModelOrder : categoryService.findAll()) {
                                        ;%>
                                <li>
                                    <a href="san-pham?catalog_id=<%=catalogModelOrder.getId()%>&page=1" style="color: black"><%=catalogModelOrder.getName()%>
                                    </a>
                                </li>
                                <%}%>
                                </li>
                            </ul>
                        </div>
                        <!--/ End Single Widget -->
                        <!-- Shop By Price -->
                        <!--/ End Single Widget -->
                        <!-- Shop By Price -->
                        <div class="single-widget range">
                            <h3 class="title">Mức giá</h3>

                            <ul class="check-box-list">
                                <li>
                                    <label class="checkbox-inline" for="1"><input name="news" id="1" type="checkbox">0 -
                                        5
                                        triệu<span class="count"></span></label>
                                </li>
                                <li>
                                    <label class="checkbox-inline" for="2"><input name="news" id="2" type="checkbox">5
                                        triệu
                                        - 20 triệu<span class="count"></span></label>
                                </li>
                                <li>
                                    <label class="checkbox-inline" for="3"><input name="news" id="3" type="checkbox">Trên
                                        20
                                        triệu<span class="count"></span></label>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-lg-9 col-md-8 col-12">
                    <div class="row">
                        <div class="col-12">
                            <!-- Shop Top -->
                            <div class="shop-top">
                                <div class="shop-shorter">

                                    <div class="single-shorter">
                                        <label>Sắp xếp theo</label>
                                        <select>
                                            <option selected="selected">Tên sản phẩm</option>
                                            <option>Giá sản phẩm</option>
                                            <option>Sản phẩm mới</option>
                                            <option>Chương trình khuyến mãi</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <!--/ End Shop Top -->
                        </div>
                    </div>
                    <div class="row">
                        <c:if test="${not empty product}">
                            <c:forEach items="${product.getList()}" var="d">
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="<c:url value="/chi-tiet-san-pham?id=${d.getId()}"/>">
                                                <img class="default-img"
                                                     src="${d.getImage_link()}"
                                                     alt="#">
                                            </a>
                                            <div class="button-head">
                                                <div class="product-action">
                                                    <a title="" href="#"><i
                                                            class="ti-bag"></i><span>Mua ngay</span></a>
                                                    <a title="" href="#"><i class=" ti-heart "></i><span>Yêu
														thích</span></a>
                                                    <a title="" href="#"><i
                                                            class="ti-bar-chart-alt"></i><span>So
														Sánh</span></a>
                                                </div>
                                                <div class="product-action-2">
                                                    <a title="" href="<c:url value="/add-cart?id=${d.getId()}"/>">Thêm vào giỏ</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h3><a href="<c:url value="/chi-tiet-san-pham?id=${d.getId()}"/>" >${d.getName()}</a></h3>
                                            <div class="product-price">
                                                <span>${d.getGiaString(d.getPrice())}đ</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:if>
                        <nav aria-label="Page navigation">
                            <ul class="pagination" id="pagination"></ul>
                            <input type="hidden" value="" id="page" name="page"/>
                            <input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
                        </nav>
                    </div>
                </div>

            </div>
        </div>
    </section>
    </form>


<script type="text/javascript">
    $(function () {

        var totalPage =${product.getList().size()};
        var currentPage =${product.getPage()};
        var limit=3;
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPage,
            visiblePages: 5,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if (currentPage != page) {
                    $('#maxPageItem').val(limit);
                    $('#page').val(page);
                    $('#formSubmit').submit();
                }
            }
        })
    });
</script>

</body>
</html>