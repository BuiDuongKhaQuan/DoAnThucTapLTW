<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.service.CategoryService" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%@ page import="qht.shopmypham.com.vn.model.*" %>
<%@ page import="qht.shopmypham.com.vn.service.ReviewService" %>
<%@ page import="qht.shopmypham.com.vn.service.TrademarkService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shop Mỹ Phẩm QST</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
          rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="user-template/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/style.css" type="text/css">
    <link rel="stylesheet" href="user-template/css/product.css" type="text/css">
    <link href="user-template/css/rating.css" rel="stylesheet"/>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/simplePagination.js/1.6/jquery.simplePagination.min.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/simplePagination.js/1.4/simplePagination.min.css">

</head>

<body>
<!-- Page Preloder -->


<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<jsp:include page="header.jsp"></jsp:include>
<!-- Header Section End -->
<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__text">
                    <h4>Shop</h4>
                    <div class="breadcrumb__links">
                        <a href="./home">Trang chủ</a>
                        <span>Sản phẩm</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Shop Section Begin -->
<section class="shop spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="shop__sidebar">
                    <div class="shop__sidebar__search" style="display: flex; position: relative">
                        <input style="width: 100%;font-size: 15px;color: #b7b7b7;padding-left: 20px;border: 1px solid #e5e5e5;height: 42px;"
                               type="text"
                               id="name"
                               oninput="search(this)"
                               placeholder="Tìm kiếm..."
                               required
                        />
                        <button type="button"
                                style="color: #b7b7b7;font-size: 15px;border: none;background: transparent;position: absolute;right: 0;padding: 0 15px;top: 0;height: 100%;"
                                onclick="search()"><span class="icon_search"></span></button>
                    </div>
                    <div class="shop__sidebar__accordion">
                        <div class="accordion" id="accordionExample">
                            <div class="card">
                                <div class="card-heading">
                                    <a data-toggle="collapse" data-target="#collapseOne">DANH MỤC</a>
                                </div>
                                <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="shop__sidebar__categories">
                                            <ul class="nice-scroll">
                                                <% List<Categories> listCategories = CategoryService.getAllCategory();
                                                    for (Categories c : listCategories) {
                                                %>
                                                <li><a href="product?command=category&cid=<%=c.getIdC()%>">
                                                    <%= c.getNameC()%>
                                                </a>
                                                </li>
                                                <%}%>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-heading">
                                    <a data-toggle="collapse" data-target="#collapseTwo">THƯƠNG HIỆU</a>
                                </div>
                                <div id="collapseTwo" class="collapse show" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="shop__sidebar__brand">

                                            <ul>
                                                <%
                                                    List<Trademark> list = TrademarkService.getTrademarkAll();
                                                    for (Trademark t : list) {
                                                %>
                                                <li>
                                                    <a href="product?command=trademark&idT=<%=t.getIdTrademark()%>"><%=t.getName()%>
                                                    </a></li>
                                                <%}%>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-heading">
                                    <a data-toggle="collapse" data-target="#collapseThree">LỌC GIÁ</a>
                                </div>
                                <div id="collapseThree" class="collapse show" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="shop__sidebar__price">
                                            <ul>
                                                <li><a href="product?command=filterPrice&price1=0&price2=100000">0-100.000
                                                    đ</a></li>
                                                <li><a href="product?command=filterPrice&price1=100000&price2=300000">100.000
                                                    - 300.000 đ</a></li>
                                                <li><a href="product?command=filterPrice&price1=300000&price2=600000">300.000
                                                    - 600.000 đ</a></li>
                                                <li><a href="product?command=filterPrice&price1=600000&price2=600000">600.000đ
                                                    trở lên</a></li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-heading">
                                    <a data-toggle="collapse" data-target="#collapseSix">Tags</a>
                                </div>
                                <div id="collapseSix" class="collapse show" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="shop__sidebar__tags">
                                            <a href="#">KEM CHỐNG NẮNG</a>
                                            <a href="#">KEM CHỐNG SẸO</a>
                                            <a href="#">NƯỚC TẨY TRANG</a>
                                            <a href="#">SỬA RỬA MẬT</a>
                                            <a href="#">NƯỚC HOA</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="shop__product__option">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="shop__product__option__left">
                                <p>Hiển thị 1- 12 trong 126 kết quả</p>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <nav class="header__menu" style="padding: 0;text-align: right;">
                                <ul>
                                    <li><a href="javascript:void(0);" style="font-weight: 100;">Sắp xếp theo giá <i
                                            class="fa fa-level-down" aria-hidden="true"></i></a>
                                        <ul class="dropdown">
                                            <li><a href="javascript:void(0);" onclick="arrange('arrange','decrease')">Giá
                                                giảm dần</a></li>
                                            <li><a href="javascript:void(0);" onclick="arrange('arrange','ascending')">Giá
                                                tăng dần</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="row" id="product_list">
                    <%
                        List<Product> productList = (List<Product>) request.getAttribute("listProduct");
                        NumberFormat nf = NumberFormat.getInstance();
                        nf.setMinimumFractionDigits(0);
                        for (Product p : productList) {
                            List<Image> imageList = ProductService.getImages(String.valueOf(p.getIdP()));
                    %>
                    <div class="col-lg-4 col-md-6 col-sm-6" id="product_item">
                        <div class="product__item" style="background-color: rgba(130,140,230,0.11)">
                            <div class="product__item__pic set-bg" data-setbg="<%=imageList.get(0).getImg()%>">
                                <ul class="product__hover">
                                    <%
                                        Account acc = (Account) request.getSession().getAttribute("a");
                                        if (acc != null) {
                                    %>
                                    <li><a href="javascript:void(0);"><img onclick="addFavorite(<%=p.getIdP()%>)"
                                                                           src="user-template/img/icon/heart.png"
                                                                           alt=""><span>Yêu thích</span></a></li>
                                    <%} else {%>
                                    <li><a href="javascript:void(0);"><img onclick="inform(<%=p.getIdP()%>)"
                                                                           src="user-template/img/icon/heart.png"
                                                                           alt=""><span>Yêu thích</span></a></li>
                                    <%}%>
                                    <li><a href="javascript:void(0);"><img onclick="category(<%=p.getIdC()%>)"
                                                                           src="user-template/img/icon/compare.png"
                                                                           alt="">
                                        <span>Cùng loại</span></a></li>
                                    <li><a href="javascript:void(0);"><img onclick="detailProduct(<%=p.getIdP()%>)"
                                                                           src="user-template/img/icon/view.png"
                                                                           alt=""><span>Chi tiết</span></a></li>
                                    <%
                                        if (acc != null) {
                                    %>
                                    <li><a href="javascript:void(0);"><img onclick="insertItem(<%=p.getIdP()%>)"
                                                                           src="user-template/img/icon/add-to-basket.png"
                                                                           alt=""><span>Thêm vào giỏ</span></a></li>
                                    <%} else {%>
                                    <li><a href="javascript:void(0);"><img onclick="inform()"
                                                                           src="user-template/img/icon/add-to-basket.png"
                                                                           alt=""><span>Thêm vào giỏ</span></a></li>
                                    <%}%>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6 onclick="detailProduct(<%=p.getIdP()%>)"
                                    style="cursor: pointer"><%=p.getName()%>
                                </h6>
                                <div class="rating">
                                    <%
                                        List<Review> reviewList = ReviewService.getAllReviewByIdP(String.valueOf(p.getIdP()));
                                        double avgStart = 0;
                                        double sum = 0;
                                        for (Review r : reviewList) {
                                            sum += r.getStar();

                                        }
                                        avgStart = sum / reviewList.size();
                                        String start1 = "";
                                        String s = "style=\"margin-right: 0;\"";
                                        String q = "style=\"margin-right: 0;\"";
                                        if (avgStart == 0) {
                                            start1 = "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    " <i class=\"fa fa-star-o\"" + s + "></i>";

                                        }
                                        if (avgStart > 0 && avgStart < 0.5) {
                                            start1 = "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    " <i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    " <i class=\"fa fa-star-o\"" + s + "></i>";
                                        }
                                        if (avgStart >= 0.5 && avgStart < 1) {
                                            start1 = "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>";
                                        }
                                        if (avgStart >= 1 && avgStart < 1.5) {
                                            start1 = "<i class=\"fa fa-star\"></i> " +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>";
                                        }
                                        if (avgStart >= 1.5 && avgStart < 2) {
                                            start1 = "<i class=\"fa fa-star\"></i> " +
                                                    "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>";
                                        }
                                        if (avgStart >= 2 && avgStart < 2.5) {
                                            start1 = "<i class=\"fa fa-star\"></i> " +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>";
                                        }
                                        if (avgStart >= 2.5 && avgStart < 3) {
                                            start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i> ";
                                        }
                                        if (avgStart >= 3 && avgStart < 3.5) {
                                            start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>";
                                        }
                                        if (avgStart >= 3.5 && avgStart < 4) {
                                            start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-half-o\"" + q + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>";
                                        }
                                        if (avgStart >= 4 && avgStart < 4.5) {
                                            start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-o\"" + s + "></i>";
                                        }
                                        if (avgStart >= 4.5 && avgStart < 5) {
                                            start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star-half-o\"" + q + "></i>";
                                        }
                                        if (avgStart == 5) {
                                            start1 = "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>" +
                                                    "<i class=\"fa fa-star\"" + s + "></i>";
                                        }
                                        if (reviewList.size() == 0) {
                                            start1 = "Chưa có đánh giá";
                                        }
                                    %>
                                    <%=start1%>
                                </div>
                                <h5><%=nf.format(p.getPrice())%>đ</h5>
                                <div class="product__color__select">
                                    <label for="pc-4">
                                        <input type="radio" id="pc-4">
                                    </label>
                                    <label class="active black" for="pc-5">
                                        <input type="radio" id="pc-5">
                                    </label>
                                    <label class="grey" for="pc-6">
                                        <input type="radio" id="pc-6">
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%}%>


                </div>
                <div class="row" style="width: 100%;">
                    <div class="col-lg-12">
                        <div class="product__pagination">
                            <div class="pagination" id="pagination" style="justify-content: center">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shop Section End -->

<!-- Footer Section Begin -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Footer Section End -->


<!-- Js Plugins -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="user-template/js/bootstrap.min.js"></script>
<script src="user-template/js/jquery.nice-select.min.js"></script>
<script src="user-template/js/jquery.nicescroll.min.js"></script>
<script src="user-template/js/jquery.magnific-popup.min.js"></script>
<script src="user-template/js/jquery.countdown.min.js"></script>
<script src="user-template/js/jquery.slicknav.js"></script>
<script src="user-template/js/mixitup.min.js"></script>
<script src="user-template/js/owl.carousel.min.js"></script>
<script src="user-template/js/main.js"></script>
<script src="user-template/js/product.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/simplePagination.js/1.6/jquery.simplePagination.min.js"></script>

</body>

</html>