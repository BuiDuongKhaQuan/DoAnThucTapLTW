<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.model.ListProductByCart" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Male-Fashion | Template</title>

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
</head>

<body>
<%

    NumberFormat nf = NumberFormat.getInstance();
    nf.setMinimumFractionDigits(0);
%>
<!-- Page Preloder -->


<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>

<!-- Header Section Begin -->
<jsp:include page="header.jsp"></jsp:include>
<!-- Header Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__text">
                    <h4>Thanh to??n</h4>
                    <div class="breadcrumb__links">
                        <a href="./home">Trang ch???</a>
                        <a href="./product">S???n Ph???m</a>
                        <span>Thanh to??n</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Checkout Section Begin -->
<section class="checkout spad">
    <div class="container">
        <div class="checkout__form">
            <form method="post"
                  action="checkout">
                <div class="row">
                    <div class="col-lg-8 col-md-6">
                        <% String success = (String) request.getAttribute("success");
                            if (success != null) {%>
                        <div class="alert-danger"
                             style="margin-bottom: 20px;
                        color: white;
                        background-color: #16ab03;
                        font-size: 20px;
                        font-weight: 900;
                        padding: 10px;
                        border-radius: 5px;
                        margin-left: 16px;">
                            <%= success %>
                        </div>
                        <%}%>
                        <h6 class="checkout__title">Th??ng tin thanh to??n</h6>
                        <div class="checkout__input">
                            <p>H??? v?? t??n<span>*</span></p>
                            <input
                                    type="text"
                                    class="form-control from-border"
                                    name="name"
                                    id="name"
                                    placeholder="H??? v?? t??n"
                                    required="required"
                                    data-validation-required-message="H??y nh???p t??n c???a b???n">
                        </div>
                        <div class="checkout__input">
                            <p>?????a ch???<span>*</span></p>
                            <input type="text"
                                   class="form-control from-border"
                                   id="subject"
                                   name="address"
                                   placeholder="?????a ch???"
                                   required="required"
                                   data-validation-required-message="?????a ch???" class="checkout__input__add">
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>S??? ??i???n tho???i<span>*</span></p>
                                    <input type="number"
                                           class="form-control from-border"
                                           id="txtTelephone"
                                           name="phone"
                                           placeholder="S??? ??i???n tho???i"
                                           required="required"
                                           data-validation-required-message="Please enter your email">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Ghi ch?? cho ????n h??ng<span>*</span></p>
                                    <input class="form-control from-border"
                                           rows="6"
                                           id="message"
                                           name="note"
                                           placeholder="L??u ?? c???a b???n v??? ????n h??ng"
                                           data-validation-required-message="Please enter your message">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">

                        <div class="checkout__order">

                            <h4 class="order__title">T???ng ????n h??ng</h4>
                            <%
                                List<ListProductByCart> list = (List<ListProductByCart>) request.getAttribute("list");
                                double totalPrice = 0;
                                for (ListProductByCart l : list) {
                                    Product p = ProductService.getProductById(String.valueOf(l.getIdP()));
                                    totalPrice += (p.getPrice() * l.getQuantity());
                            %>
                            <div class="checkout__order__products">S???n ph???m <span>????n gi??</span></div>
                            <ul class="checkout__total__products">
                                <li><%=p.getName()%> <span><%=nf.format(p.getPrice())%>??</span></li>

                            </ul>
                            <%}%>
                            <ul class="checkout__total__all">
                                <li>T???ng ti???n h??ng <span><%=nf.format(totalPrice)%>??</span></li>
                                <li>Ph?? v???n chuy???n <span>25,000??</span></li>
                                <li>T???ng thanh to??n <span><%=nf.format(totalPrice + 25000)%></span></li>
                            </ul>
                            <div class="checkout__input__checkbox">
                            </div>
                            <p>H??NH TH???C THANH TO??N</p>
                            <div class="checkout__input__checkbox">
                                <label for="payment">
                                    Ti???n m???t
                                    <input type="checkbox" id="payment">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="checkout__input__checkbox">
                                <label for="paypal">
                                    Th???
                                    <input type="checkbox" id="paypal">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <%if (list.size() != 0) {%>
                            <button type="submit" class="site-btn">?????T H??NG</button>
                            <%} else {%>
                            <button type="submit" class="site-btn">GI??? H??NG B???N KH??NG C?? S???N PH???M</button>
                            <%}%>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<!-- Checkout Section End -->

<!-- Footer Section Begin -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->

<!-- Js Plugins -->
<script src="user-template/js/jquery-3.3.1.min.js"></script>
<script src="user-template/js/bootstrap.min.js"></script>
<script src="user-template/js/jquery.nice-select.min.js"></script>
<script src="user-template/js/jquery.nicescroll.min.js"></script>
<script src="user-template/js/jquery.magnific-popup.min.js"></script>
<script src="user-template/js/jquery.countdown.min.js"></script>
<script src="user-template/js/jquery.slicknav.js"></script>
<script src="user-template/js/mixitup.min.js"></script>
<script src="user-template/js/owl.carousel.min.js"></script>
<script src="user-template/js/main.js"></script>
<script src="user-template/js/autoLoadCart.js"></script>

</body>

</html>