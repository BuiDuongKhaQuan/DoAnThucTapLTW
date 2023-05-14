﻿<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="qht.shopmypham.com.vn.model.Review" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html class="no-js " lang="en">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
    <title>:: Aero Bootstrap4 Admin :: Home</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon"> <!-- Favicon-->
    <link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="admin-template/assets/plugins/jvectormap/jquery-jvectormap-2.0.3.min.css"/>
    <link rel="stylesheet" href="admin-template/assets/plugins/charts-c3/plugin.css"/>

    <link rel="stylesheet" href="admin-template/assets/plugins/morrisjs/morris.min.css"/>
    <!-- Custom Css -->
    <link rel="stylesheet" href="admin-template/assets/css/style.min.css">
</head>

<body class="theme-blush">

<jsp:include page="header.jsp"></jsp:include>

 <!-- Main Content -->

<section class="content">
    <div class="">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Dashboard</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="admin-home"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item active">Tổng quan</li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i
                            class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i
                            class="zmdi zmdi-arrow-right"></i></button>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon traffic">
                        <% List<Account> accountList = (List<Account>) request.getAttribute("accountList");%>
                        <div class="body">
                            <h6>Tài khoản</h6>
                            <h2><%=accountList.size()%> <small class="info">tài khoản</small></h2>
                            <small>Cao hơn 2% so với tháng trước</small>
                            <div class="progress">
                                <div class="progress-bar l-amber" role="progressbar" aria-valuenow="45"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 45%;"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon sales">
                        <div class="body">
                            <% List<Product> productList = (List<Product>) request.getAttribute("productList");%>
                            <h6>Sản phẩm</h6>
                            <h2><%=productList.size()%> <small class="info">sản phẩm</small></h2>
                            <small>Cao hơn 20% so với tháng trước</small>
                            <div class="progress">
                                <div class="progress-bar l-blue" role="progressbar" aria-valuenow="38" aria-valuemin="0"
                                     aria-valuemax="100" style="width: 38%;"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon email">
                        <div class="body">
                            <%
                                NumberFormat nf = NumberFormat.getInstance();
                                nf.setMinimumFractionDigits(0);
                            %>
                            <h6>Doanh thu</h6>
                            <h2><%=nf.format(Product.revenue())%> <small class="info">vnd</small></h2>
                            <small>Tổng số doanh thu</small>
                            <div class="progress">
                                <div class="progress-bar l-purple" role="progressbar" aria-valuenow="39"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 39%;"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon domains">
                        <div class="body">
                            <% List<Review> reviewList = (List<Review>) request.getAttribute("reviewList");%>
                            <h6>Đánh giá</h6>
                            <h2><%=reviewList.size()%> <small class="info">đánh giá</small></h2>
                            <small>Tổng số lượt đánh giá</small>
                            <div class="progress">
                                <div class="progress-bar l-green" role="progressbar" aria-valuenow="89"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 89%;"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong><i class="zmdi zmdi-chart"></i> Báo cáo</strong> bán hàng</h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle"
                                                        data-toggle="dropdown" role="button" aria-haspopup="true"
                                                        aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right slideUp">
                                        <li><a href="javascript:void(0);">Sửa</a></li>
                                        <li><a href="javascript:void(0);">Xáo</a></li>
                                        <li><a href="javascript:void(0);">Báo cáo</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body mb-2">
                            <div class="row clearfix">
                                <div class="col-lg-3 col-md-6 col-sm-6">
                                    <div class="state_w1 mb-1 mt-1">
                                        <div class="d-flex justify-content-between">
                                            <div>
                                                <h5>2,365</h5>
                                                <span><i class="zmdi zmdi-balance"></i> Doanh thu</span>
                                            </div>
                                            <div class="sparkline" data-type="bar" data-width="97%" data-height="55px"
                                                 data-bar-Width="3" data-bar-Spacing="5" data-bar-Color="#868e96">
                                                5,2,3,7,6,4,8,1
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6">
                                    <div class="state_w1 mb-1 mt-1">
                                        <div class="d-flex justify-content-between">
                                            <div>
                                                <h5>365</h5>
                                                <span><i class="zmdi zmdi-turning-sign"></i> Trở lại</span>
                                            </div>
                                            <div class="sparkline" data-type="bar" data-width="97%" data-height="55px"
                                                 data-bar-Width="3" data-bar-Spacing="5" data-bar-Color="#2bcbba">
                                                8,2,6,5,1,4,4,3
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6">
                                    <div class="state_w1 mb-1 mt-1">
                                        <div class="d-flex justify-content-between">
                                            <div>
                                                <h5>65</h5>
                                                <span><i class="zmdi zmdi-alert-circle-o"></i> TRuy vấn</span>
                                            </div>
                                            <div class="sparkline" data-type="bar" data-width="97%" data-height="55px"
                                                 data-bar-Width="3" data-bar-Spacing="5" data-bar-Color="#82c885">
                                                4,4,3,9,2,1,5,7
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6">
                                    <div class="state_w1 mb-1 mt-1">
                                        <div class="d-flex justify-content-between">
                                            <div>
                                                <h5>2,055</h5>
                                                <span><i class="zmdi zmdi-print"></i> Hóa đơn</span>
                                            </div>
                                            <div class="sparkline" data-type="bar" data-width="97%" data-height="55px"
                                                 data-bar-Width="3" data-bar-Spacing="5" data-bar-Color="#45aaf2">
                                                7,5,3,8,4,6,2,9
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="body">
                            <div id="chart-area-spline-sracked" class="c3_chart d_sales"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card mcard_4">
                        <div class="body">
                            <ul class="header-dropdown list-unstyled">
                                <li class="dropdown">
                                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"
                                       role="button" aria-haspopup="true" aria-expanded="false"> <i
                                            class="zmdi zmdi-menu"></i> </a>
                                    <ul class="dropdown-menu slideUp">
                                        <li><a href="javascript:void(0);">Sửa</a></li>
                                        <li><a href="javascript:void(0);">Xóa</a></li>
                                        <li><a href="javascript:void(0);">Báo cáo</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <div class="img">
                                <img src="admin-template/assets/images/lg/avatar1.jpg" class="rounded-circle" alt="profile-image">
                            </div>
                            <div class="user">
                                <h5 class="mt-3 mb-1">Eliana Smith</h5>
                                <small class="text-muted">Thiết kế UI/UX </small>
                            </div>
                            <ul class="list-unstyled social-links">
                                <li><a href="javascript:void(0);"><i class="zmdi zmdi-dribbble"></i></a></li>
                                <li><a href="javascript:void(0);"><i class="zmdi zmdi-behance"></i></a></li>
                                <li><a href="javascript:void(0);"><i class="zmdi zmdi-pinterest"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card w_data_1">
                        <div class="body">
                            <div class="w_icon pink"><i class="zmdi zmdi-bug"></i></div>
                            <h4 class="mt-3 mb-0">12.1k</h4>
                            <span class="text-muted">Lỗi đã sửa</span>
                            <div class="w_description text-success">
                                <i class="zmdi zmdi-trending-up"></i>
                                <span>15.5%</span>
                            </div>
                        </div>
                    </div>
                    <div class="card w_data_1">
                        <div class="body">
                            <div class="w_icon cyan"><i class="zmdi zmdi-ticket-star"></i></div>
                            <h4 class="mt-3 mb-1">01.8k</h4>
                            <span class="text-muted">Đã gửi Tickers</span>
                            <div class="w_description text-success">
                                <i class="zmdi zmdi-trending-up"></i>
                                <span>95.5%</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="body">
                            <div class="chat-widget">
                                <ul class="list-unstyled">
                                    <li class="left">
                                        <img src="admin-template/assets/images/xs/avatar3.jpg" class="rounded-circle" alt="">
                                        <ul class="list-unstyled chat_info">
                                            <li><small>Frank 11:00AM</small></li>
                                            <li><span class="message bg-blue">Hello, Michael</span></li>
                                            <li><span class="message bg-blue">How are you!</span></li>
                                        </ul>
                                    </li>
                                    <li class="right">
                                        <ul class="list-unstyled chat_info">
                                            <li><small>11:10AM</small></li>
                                            <li><span class="message">Hello, Frank</span></li>
                                        </ul>
                                    </li>
                                    <li class="right">
                                        <ul class="list-unstyled chat_info">
                                            <li><small>11:11AM</small></li>
                                            <li><span class="message">I'm fine what about you?</span></li>
                                        </ul>
                                    </li>
                                    <li class="left">
                                        <img src="admin-template/assets/images/xs/avatar2.jpg" class="rounded-circle" alt="">
                                        <ul class="list-unstyled chat_info">
                                            <li><small>Gary 11:13AM</small></li>
                                            <li><span class="message bg-indigo">Hello, Michael and Frank</span></li>
                                        </ul>
                                    </li>
                                    <li class="left">
                                        <img src="admin-template/assets/images/xs/avatar5.jpg" class="rounded-circle" alt="">
                                        <ul class="list-unstyled chat_info">
                                            <li><small>Hossein 11:14AM</small></li>
                                            <li><span class="message bg-amber">Hello, team</span></li>
                                            <li><span
                                                    class="message bg-amber">Please let me know your requirements.</span>
                                            </li>
                                            <li><span class="message bg-amber">How would like to connect with us?</span>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="right">
                                        <ul class="list-unstyled chat_info">
                                            <li><small>11:15AM</small></li>
                                            <li><span class="message">Hello, Hossein</span></li>
                                            <li><span class="message">Meeting on conference room at 12:00PM</span></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="input-group mt-3">
                                <div class="input-group-prepend">
                                    <button class="btn btn-outline-secondary dropdown-toggle" type="button"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Add
                                    </button>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="javascript:void(0);">Tim Hank</a>
                                        <a class="dropdown-item" href="javascript:void(0);">Hossein Shams</a>
                                        <a class="dropdown-item" href="javascript:void(0);">John Smith</a>
                                    </div>
                                </div>
                                <input type="text" class="form-control" placeholder="Enter text here..."
                                       aria-label="Text input with dropdown button">
                                <div class="input-group-append">
                                    <span class="input-group-text"><i class="zmdi zmdi-mail-send"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-12 col-lg-8">
                    <div class="card">
                        <div class="header">
                            <h2><strong>TRUY CẬP THỐNG KÊ</strong>THỐNG KÊ</h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle"
                                                        data-toggle="dropdown" role="button" aria-haspopup="true"
                                                        aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right slideUp">
                                        <li><a href="javascript:void(0);">Hành động</a></li>
                                        <li><a href="javascript:void(0);">Hành động khác</a></li>
                                        <li><a href="javascript:void(0);">Khác</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div id="world-map-markers" class="jvector-map"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Phân bố</strong></h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle"
                                                        data-toggle="dropdown" role="button" aria-haspopup="true"
                                                        aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right slideUp">
                                        <li><a href="javascript:void(0);">Sửa</a></li>
                                        <li><a href="javascript:void(0);">Xóa</a></li>
                                        <li><a href="javascript:void(0);">Báo cáo</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body text-center">
                            <div id="chart-pie" class="c3_chart d_distribution"></div>
                            <button class="btn btn-primary mt-4 mb-4">Xem thêm</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Nguồn</strong> giao thông</h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle"
                                                        data-toggle="dropdown" role="button" aria-haspopup="true"
                                                        aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right slideUp">
                                        <li><a href="javascript:void(0);">Sửa</a></li>
                                        <li><a href="javascript:void(0);">Xóa</a></li>
                                        <li><a href="javascript:void(0);">Báo cáo</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="row">
                                <div class="col-lg-8 col-md-6 col-sm-12">
                                    <div id="chart-area-step" class="c3_chart d_traffic"></div>
                                </div>
                                <div class="col-lg-4 col-md-6 col-sm-12">
                                    <span> Hơn 30% phần trăm người dùng đến từ các liên kết trực tiếp. Kiểm tra trang chi tiết để biết thêm thông tin.</span>
                                    <div class="progress mt-4">
                                        <div class="progress-bar l-amber" role="progressbar" aria-valuenow="45"
                                             aria-valuemin="0" aria-valuemax="100" style="width: 45%;"></div>
                                    </div>
                                    <div class="d-flex bd-highlight mt-4">
                                        <div class="flex-fill bd-highlight">
                                            <h5 class="mb-0">21,521 <i class="zmdi zmdi-long-arrow-up"></i></h5>
                                            <small>Hôm nay</small>
                                        </div>
                                        <div class="flex-fill bd-highlight">
                                            <h5 class="mb-0">%12.35 <i class="zmdi zmdi-long-arrow-down"></i></h5>
                                            <small>Tháng trước %</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Jquery Core Js -->
<script src="admin-template/assets/bundles/libscripts.bundle.js"></script>
<!-- Lib Scripts Plugin Js ( jquery.v3.2.1, Bootstrap4 js) -->
<script src="admin-template/assets/bundles/vendorscripts.bundle.js"></script> <!-- slimscroll, waves Scripts Plugin Js -->

<script src="admin-template/assets/bundles/jvectormap.bundle.js"></script> <!-- JVectorMap Plugin Js -->
<script src="admin-template/assets/bundles/sparkline.bundle.js"></script> <!-- Sparkline Plugin Js -->
<script src="admin-template/assets/bundles/c3.bundle.js"></script>

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script>
<script src="admin-template/assets/js/pages/index.js"></script>
</body>


</html>