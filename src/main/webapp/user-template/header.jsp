<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="qht.shopmypham.com.vn.model.ListProductByCart" %>
<%@ page import="qht.shopmypham.com.vn.service.CartService" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.service.ShopService" %>
<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/15/2023
  Time: 10:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Offcanvas Menu Begin -->
<%
    Account acc = (Account) request.getSession().getAttribute("a");
%>
<link href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro-v6@44659d9/css/all.min.css" rel="stylesheet"
      type="text/css"/>

<div id="notification" class="hidden-noti">Đã thêm vào giỏ hàng thành công</div>
<div id="notification1" class="hidden-noti">Đã thêm vào danh sách sản phẩm yêu thích</div>

<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
    <div class="offcanvas__option">
        <div class="offcanvas__links">
            <%if (acc == null) {%>
            <a href="login.jsp">ĐĂNG NHẬP</a>
            <% }%>
            <% if (acc != null) {
                if (acc.getOrderManage() == 0 && acc.getHomeManage() == 0 && acc.getProductManage() == 0
                        && acc.getAccountManage() == 0 && acc.getBlogManage() == 0 && acc.getGeneralManage() == 0) {
                    String rs = "";
                    if (acc.getIdGoogle() != null) {
                        rs = acc.getEmail();
                    }
                    if (acc.getIdGoogle() == null) {
                        rs = acc.getFullName();
                    }
                    if (acc.getFullName() == null && acc.getIdGoogle() == null) {
                        rs = acc.getUser();
                    }
            %>
            <a href="profile?command=profile"> Xin chào <%=rs%>
            </a>
            <%} else {%>
            <a href="admin-home"> Xin chào
                ADMIN </a>
            <% }
            } %>
            <a href="faqs">FAQs</a>
        </div>
        <div class="offcanvas__top__hover">
            <span>Usd <i class="arrow_carrot-down"></i></span>
            <ul>
                <li>USD</li>
                <li>EUR</li>
                <li>USD</li>
            </ul>
        </div>
    </div>
    <div class="offcanvas__nav__option">
        <a href="#" class="search-switch"><i class="fa-light fa-magnifying-glass"></i></a>
        <% if (acc != null) {
            List<ListProductByCart> list = CartService.getAllByIda(String.valueOf(acc.getIdA()));
            List<Product> productList = ProductService.getFavoriteProductByIdA(acc.getIdA());
        %>
        <a href="product?command=favorite"><i class="fa-light fa-heart"></i>
        <span id="favorite-count1" style="left: 18px;top: -5px"><%=productList.size()%></span></a>
        <a href="auto-load?command=show"><i class="fa-light fa-cart-shopping"></i>
            <span id="cart-count1" style="left: 18px;top: -5px"><%=list.size()%></span></a>
        <%} else {%>
        <a href="login.jsp"><i class="fa-light fa-heart"></i>
            <span style="left: 18px;top: -5px">0</span></a>
        <a href="login.jsp"><i class="fa-light fa-cart-shopping"></i>
            <span style="left: 18px;top: -5px">0</span></a>
        <%}%>

    </div>
    <div id="mobile-menu-wrap"></div>
    <div class="offcanvas__text">
        <p>Miễn phí vẫn chuyển, bảo đảm đổi trả hoặc hoàn tiền trong 30 ngày.</p>
    </div>
</div>
<!-- Offcanvas Menu End -->
<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-7 header_height">
                    <div class="header__top__left">
                        <p>Miễn phí vẫn chuyển, bảo đảm đổi trả hoặc hoàn tiền trong 30 ngày.</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-5">
                    <div class="header__top__right">
                        <div class="header__top__links">
                            <%if (acc == null) {%>
                            <a href="login.jsp">ĐĂNG NHẬP</a>
                            <% }%>
                            <% if (acc != null) {
                                if (acc.getOrderManage() == 0 && acc.getHomeManage() == 0 && acc.getProductManage() == 0
                                        && acc.getAccountManage() == 0 && acc.getBlogManage() == 0 && acc.getGeneralManage() == 0) {
                                    String rs = "";
                                    if (acc.getIdGoogle() != null) {
                                        rs = acc.getEmail();
                                    }
                                    if (acc.getIdGoogle() == null) {
                                        rs = acc.getFullName();
                                    }
                                    if (acc.getFullName() == null && acc.getIdGoogle() == null) {
                                        rs = acc.getUser();
                                    }
                            %>
                            <a href="profile?command=profile"> Xin chào <%=rs%>
                            </a>
                            <%} else {%>
                            <a href="admin-home"> Xin chào
                                ADMIN </a>
                            <% }
                            } %>
                            <a href="faqs">FAQs</a>
                        </div>
                        <div class="header__top__hover">
                            <span>Usd <i class="arrow_carrot-down"></i></span>
                            <ul>
                                <li>USD</li>
                                <li>EUR</li>
                                <li>USD</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="navbar">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 pading-profile">
                    <div class="header__logo">
                        <a href="home"><img src="<%=ShopService.getShop().getLogo_header()%>" alt="Logo QST"></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 pading-profile">
                    <nav class="header__menu mobile-menu">
                            <% String activeHome = (String) request.getAttribute("activeHome");
                                String activeProduct = (String) request.getAttribute("activeProduct");
                                String activePage = (String) request.getAttribute("activePage");
                                String activeBlog = (String) request.getAttribute("activeBlog");
                                String activeContact = (String) request.getAttribute("activeContact");
                            %>
                        <ul>
                            <li class="<%=activeHome%>"><a href="./home">Trang chủ</a></li>
                            <li class="<%=activeProduct%>"><a href="product?command=product">Sản phẩm</a></li>
                            <li class="<%=activePage%>"><a href="#">Trang</a>
                                <ul class="dropdown">
                                    <%if (acc != null) {%>
                                    <li><a href="./cart-show"> Giỏ hàng</a></li>
                                    <li><a href="product?command=favorite">Sản phẩm yêu thích</a></li>
                                    <%} else {%>
                                    <li><a href="login.jsp"> Giỏ hàng</a></li>
                                    <li><a href="login.jsp">Sản phẩm yêu thích</a></li>
                                    <%}%>
                                </ul>
                            </li>
                            <li class="<%=activeBlog%>"><a href="./blog">Blog</a></li>
                            <li class="<%=activeContact%>"><a href="./contact">Liên hệ </a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 col-md-3 pading-profile">
                    <div class="header__nav__option">

                        <a href="#" class="search-switch"><i class="fa-light fa-magnifying-glass"></i></a>
                        <% if (acc != null) {
                            List<ListProductByCart> list = CartService.getAllByIda(String.valueOf(acc.getIdA()));
                            List<Product> productList = ProductService.getFavoriteProductByIdA(acc.getIdA());
                        %>
                        <a href="product?command=favorite"><i class="fa-light fa-heart"></i>
                            <span id="favorite-count"><%=productList.size()%></span></a>
                        <a href="auto-load?command=show"><i class="fa-light fa-cart-shopping"></i>
                            <span id="cart-count" style=""><%=list.size()%></span></a>
                        <%} else {%>
                        <a href="login.jsp"><i class="fa-light fa-heart"></i>
                            <span>0</span></a>
                        <a href="login.jsp"><i class="fa-light fa-cart-shopping"></i>
                            <span>0</span></a>
                        <%}%>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </div>
</header>