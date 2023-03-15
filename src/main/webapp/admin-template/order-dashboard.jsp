<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

    <title>:: Aero Bootstrap4 Admin :: eCommerce</title>
    <!-- Favicon-->
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="admin-template/assets/plugins/jvectormap/jquery-jvectormap-2.0.3.css"/>
    <link rel="stylesheet" href="admin-template/assets/plugins/morrisjs/morris.css"/>

    <!-- Custom Css -->
    <link rel="stylesheet" href="admin-template/assets/css/style.min.css">
</head>

<body class="theme-blush">

<jsp:include page="header.jsp"></jsp:include>

<!-- Main Content -->
<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Quản lí đơn hàng</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item">Quản lí đơn hàng</li>
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
                <div class="col-lg-3 col-md-6 col-sm-6 col-6 text-center">
                    <div class="card">
                        <div class="body">
                            <input type="text" class="knob" value="42" data-linecap="round" data-width="100"
                                   data-height="100" data-thickness="0.08" data-fgColor="#00adef" readonly>
                            <p>Khách hàng </p>
                            <div class="d-flex bd-highlight text-center mt-4">
                                <div class="flex-fill bd-highlight">
                                    <small class="text-muted">Trực tiếp </small>
                                    <h5 class="mb-0">254</h5>
                                </div>
                                <div class="flex-fill bd-highlight">
                                    <small class="text-muted">Khám phá</small>
                                    <h5 class="mb-0">254</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-6 text-center">
                    <div class="card">
                        <div class="body">
                            <input type="text" class="knob" value="81" data-linecap="round" data-width="100"
                                   data-height="100" data-thickness="0.08" data-fgColor="#ee2558" readonly>
                            <p>Tổng số tài khoản</p>
                            <div class="d-flex bd-highlight text-center mt-4">
                                <div class="flex-fill bd-highlight">
                                    <small class="text-muted">Ngoài nước</small>
                                    <h5 class="mb-0">34GB</h5>
                                </div>
                                <div class="flex-fill bd-highlight">
                                    <small class="text-muted">Trong nước</small>
                                    <h5 class="mb-0">531GB</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-6 text-center">
                    <div class="card">
                        <div class="body">
                            <input type="text" class="knob" value="62" data-linecap="round" data-width="100"
                                   data-height="100" data-thickness="0.08" data-fgColor="#8f78db" readonly>
                            <p>Đầu tư</p>
                            <div class="d-flex bd-highlight text-center mt-4">
                                <div class="flex-fill bd-highlight">
                                    <small class="text-muted">Ngoài nước</small>
                                    <h5 class="mb-0">25<small>(-23%)</small></h5>
                                </div>
                                <div class="flex-fill bd-highlight">
                                    <small class="text-muted">Trong nước</small>
                                    <h5 class="mb-0">12<small>(+150%)</small></h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-6 text-center">
                    <div class="card">
                        <div class="body">
                            <input type="text" class="knob" value="38" data-linecap="round" data-width="100"
                                   data-height="100" data-thickness="0.08" data-fgColor="#f67a82" readonly>
                            <p>Doanh thu</p>
                            <div class="d-flex bd-highlight text-center mt-4">
                                <div class="flex-fill bd-highlight">
                                    <small class="text-muted">Khách trong nước</small>
                                    <h5 class="mb-0">15K</h5>
                                </div>
                                <div class="flex-fill bd-highlight">
                                    <small class="text-muted">Khách nước ngoài</small>
                                    <h5 class="mb-0">2K</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-8 col-md-12">
                    <div class="card product-report">
                        <div class="header">
                            <h2><strong>BÁO CÁO</strong> THƯỜNG NIÊN</h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"><a href="javascript:void(0);" class="dropdown-toggle"
                                                        data-toggle="dropdown" role="button" aria-haspopup="true"
                                                        aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right">
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
                            <div class="row clearfix">
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="icon xl-amber m-b-15"><i class="zmdi zmdi-chart-donut"></i></div>
                                    <div class="col-in">
                                        <small class="text-muted mt-0">Báo cáo bán hàng</small>
                                        <h4 class="mt-0">$4,516</h4>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="icon xl-blue m-b-15"><i class="zmdi zmdi-chart"></i></div>
                                    <div class="col-in">
                                        <small class="text-muted mt-0">Doanh thu hằng năm</small>
                                        <h4 class="mt-0">$6,481</h4>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="icon xl-purple m-b-15"><i class="zmdi zmdi-card"></i></div>
                                    <div class="col-in">
                                        <small class="text-muted mt-0">Tổng lợi nhuận</small>
                                        <h4 class="mt-0">$3,915</h4>
                                    </div>
                                </div>
                            </div>
                            <div id="area_chart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Sản phẩm</strong> Phổ biến</h2>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover theme-color c_table">
                                <thead>
                                <tr>
                                    <th>Tên</th>
                                    <th></th>
                                    <th>Lượt xem</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="w70"><img class="w50" src="admin-template/assets/images/ecommerce/1.png"
                                                         alt=""></td>
                                    <td><a href="javascript:void(0)" class="text-muted">PlayStation 4 1TB (Jet
                                        Black)</a></td>
                                    <td>3,432</td>
                                </tr>
                                <tr>
                                    <td><img class="w50" src="admin-template/assets/images/ecommerce/2.png" alt=""></td>
                                    <td><a href="javascript:void(0)" class="text-muted">Printed color block T-shirt</a>
                                    </td>
                                    <td>852</td>
                                </tr>
                                <tr>
                                    <td><img class="w50" src="admin-template/assets/images/ecommerce/3.png" alt=""></td>
                                    <td><a href="javascript:void(0)" class="text-muted">Wireless headphones</a></td>
                                    <td>1,321</td>
                                </tr>
                                <tr>
                                    <td><img class="w50" src="admin-template/assets/images/ecommerce/4.png" alt=""></td>
                                    <td><a href="javascript:void(0)" class="text-muted">PlayStation 4 1TB (Jet
                                        Black)</a></td>
                                    <td>980</td>
                                </tr>
                                <tr>
                                    <td><img class="w50" src="admin-template/assets/images/ecommerce/5.png" alt=""></td>
                                    <td><a href="javascript:void(0)" class="text-muted">Knit beanie with patch</a></td>
                                    <td>2,518</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-xl-8 col-lg-7 col-md-12">
                    <div class="card">
                        <div class="body">
                            <ul class="row list-unstyled c_review">
                                <li class="col-12">
                                    <div class="avatar">
                                        <a href="javascript:void(0);"><img class="rounded"
                                                                           src="admin-template/assets/images/sm/avatar2.jpg"
                                                                           alt="user" width="60"></a>
                                    </div>
                                    <div class="comment-action">
                                        <h6 class="c_name">Hossein Shams</h6>
                                        <p class="c_msg m-b-0">Cras sit amet nibh libero, in gravida nulla. Nulla vel
                                            metus scelerisque ante sollicitudin commodo. </p>
                                        <div class="badge badge-info">iPhone 8</div>
                                        <span class="m-l-10">
                                            <a href="javascript:void(0);"><i class="zmdi zmdi-star col-amber"></i></a>
                                            <a href="javascript:void(0);"><i class="zmdi zmdi-star col-amber"></i></a>
                                            <a href="javascript:void(0);"><i class="zmdi zmdi-star col-amber"></i></a>
                                            <a href="javascript:void(0);"><i class="zmdi zmdi-star col-amber"></i></a>
                                            <a href="javascript:void(0);"><i class="zmdi zmdi-star col-amber"></i></a>
                                        </span>
                                        <small class="comment-date float-sm-right">Dec 21, 2019</small>
                                    </div>
                                </li>
                                <li class="col-12">
                                    <div class="avatar">
                                        <a href="javascript:void(0);"><img class="rounded"
                                                                           src="admin-template/assets/images/sm/avatar3.jpg"
                                                                           alt="user" width="60"></a>
                                    </div>
                                    <div class="comment-action">
                                        <h6 class="c_name">Tim Hank</h6>
                                        <p class="c_msg m-b-0">It is a long established fact that a reader will be
                                            distracted by the readable content of a page when looking at its layout</p>
                                        <div class="badge badge-info">Nokia 8</div>
                                        <span class="m-l-10">
                                            <a href="javascript:void(0);"><i class="zmdi zmdi-star col-amber"></i></a>
                                            <a href="javascript:void(0);"><i class="zmdi zmdi-star col-amber"></i></a>
                                            <a href="javascript:void(0);"><i
                                                    class="zmdi zmdi-star-outline text-muted"></i></a>
                                            <a href="javascript:void(0);"><i
                                                    class="zmdi zmdi-star-outline text-muted"></i></a>
                                            <a href="javascript:void(0);"><i
                                                    class="zmdi zmdi-star-outline text-muted"></i></a>
                                        </span>
                                        <small class="comment-date float-sm-right">Dec 18, 2019</small>
                                    </div>
                                </li>
                                <li class="col-12">
                                    <div class="avatar">
                                        <a href="javascript:void(0);"><img class="rounded"
                                                                           src="admin-template/assets/images/sm/avatar4.jpg"
                                                                           alt="user" width="60"></a>
                                    </div>
                                    <div class="comment-action">
                                        <h6 class="c_name">Maryam Amiri</h6>
                                        <p class="c_msg m-b-0">There are many variations of passages of Lorem Ipsum
                                            available, but the majority have suffered alteration in some form, by
                                            injected humour,</p>
                                        <div class="badge badge-info">Samsung Galaxy S8</div>
                                        <span class="m-l-10">
                                            <a href="javascript:void(0);"><i class="zmdi zmdi-star col-amber"></i></a>
                                            <a href="javascript:void(0);"><i class="zmdi zmdi-star col-amber"></i></a>
                                            <a href="javascript:void(0);"><i class="zmdi zmdi-star col-amber"></i></a>
                                            <a href="javascript:void(0);"><i
                                                    class="zmdi zmdi-star-outline text-muted"></i></a>
                                            <a href="javascript:void(0);"><i
                                                    class="zmdi zmdi-star-outline text-muted"></i></a>
                                        </span>
                                        <small class="comment-date float-sm-right">Dec 18, 2019</small>
                                    </div>
                                </li>
                                <li class="col-12">
                                    <div class="avatar">
                                        <a href="javascript:void(0);"><img class="rounded"
                                                                           src="admin-template/assets/images/sm/avatar5.jpg"
                                                                           alt="user" width="60"></a>
                                    </div>
                                    <div class="comment-action">
                                        <h6 class="c_name">Gary Camara</h6>
                                        <p class="c_msg m-b-0">Lorem Ipsum is simply dummy text of the printing and
                                            typesetting industry</p>
                                        <div class="badge badge-info">HTC U11</div>
                                        <span class="m-l-10">
                                            <a href="javascript:void(0);"><i class="zmdi zmdi-star col-amber"></i></a>
                                            <a href="javascript:void(0);"><i class="zmdi zmdi-star col-amber"></i></a>
                                            <a href="javascript:void(0);"><i class="zmdi zmdi-star col-amber"></i></a>
                                            <a href="javascript:void(0);"><i class="zmdi zmdi-star col-amber"></i></a>
                                            <a href="javascript:void(0);"><i
                                                    class="zmdi zmdi-star-outline text-muted"></i></a>
                                        </span>
                                        <small class="comment-date float-sm-right">Dec 13, 2019</small>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-5 col-md-12">
                    <div class="card mcard_1">
                        <div class="img">
                            <img src="admin-template/assets/images/image-gallery/2.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="body">
                            <div class="user">
                                <img src="admin-template/assets/images/sm/avatar1.jpg" class="rounded-circle img-raised"
                                     alt="profile-image">
                                <h5 class="mt-3 mb-1">Eliana Smith</h5>
                                <span>Nhà thiết kế, Nhà phát triển sản phẩm</span>
                            </div>
                            <button class="btn btn-primary">FOLLOW</button>
                            <div class="d-flex bd-highlight text-center mt-4">
                                <div class="flex-fill bd-highlight">
                                    <h5 class="mb-0">128</h5>
                                    <small>Bài viết</small>
                                </div>
                                <div class="flex-fill bd-highlight">
                                    <h5 class="mb-0">1,528</h5>
                                    <small>Theo dõi</small>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-12 col-lg-12">
                    <div class="card visitors-map">
                        <div class="header">
                            <h2><strong>Quốc gia bán hàng cao nhất</strong></h2>
                        </div>
                        <div class="row">
                            <div class="col-xl-8 col-lg-8 col-md-12">
                                <div class="body">
                                    <div id="world-map-markers" class="jvector-map"></div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-hover c_table theme-color mb-0">
                                        <thead>
                                        <tr>
                                            <th>Quốc gia</th>
                                            <th>2017</th>
                                            <th>2018</th>
                                            <th>Thay đổi</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>USA</td>
                                            <td>2,009</td>
                                            <td>3,591</td>
                                            <td>7.01% <i class="zmdi zmdi-trending-up text-success"></i></td>
                                        </tr>
                                        <tr>
                                            <td>India</td>
                                            <td>1,129</td>
                                            <td>1,361</td>
                                            <td>3.01% <i class="zmdi zmdi-trending-up text-success"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Canada</td>
                                            <td>2,009</td>
                                            <td>2,901</td>
                                            <td>9.01% <i class="zmdi zmdi-trending-up text-success"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Australia</td>
                                            <td>954</td>
                                            <td>901</td>
                                            <td>5.71% <i class="zmdi zmdi-trending-down text-warning"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Germany</td>
                                            <td>594</td>
                                            <td>500</td>
                                            <td>6.11% <i class="zmdi zmdi-trending-down text-warning"></i></td>
                                        </tr>
                                        <tr>
                                            <td>UK</td>
                                            <td>1,500</td>
                                            <td>1,971</td>
                                            <td>8.50% <i class="zmdi zmdi-trending-up text-success"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Other</td>
                                            <td>4,236</td>
                                            <td>4,591</td>
                                            <td>9.15% <i class="zmdi zmdi-trending-up text-success"></i></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-sm-12 col-md-12 col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Đơn hàng</strong> gần đây</h2>
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
                        <div class="table-responsive">
                            <table class="table table-hover c_table">
                                <thead>
                                <tr>
                                    <th style="width:60px;">#</th>
                                    <th>Tên</th>
                                    <th>Sản phẩm</th>
                                    <th>Địa chỉ</th>
                                    <th>Số lượng</th>
                                    <th>Trạng thái</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><img src="http://via.placeholder.com/60x40" alt="Product img"></td>
                                    <td>Hossein</td>
                                    <td>IPONE-7</td>
                                    <td>Porterfield 508 Virginia Street Chicago, IL 60653</td>
                                    <td>3</td>
                                    <td><span class="badge badge-success">DONE</span></td>
                                </tr>
                                <tr>
                                    <td><img src="http://via.placeholder.com/60x40" alt="Product img"></td>
                                    <td>Camara</td>
                                    <td>NOKIA-8</td>
                                    <td>2595 Pearlman Avenue Sudbury, MA 01776</td>
                                    <td>3</td>
                                    <td><span class="badge badge-success">DONE</span></td>
                                </tr>
                                <tr>
                                    <td><img src="http://via.placeholder.com/60x40" alt="Product img"></td>
                                    <td>Maryam</td>
                                    <td>NOKIA-456</td>
                                    <td>Porterfield 508 Virginia Street Chicago, IL 60653</td>
                                    <td>4</td>
                                    <td><span class="badge badge-success">DONE</span></td>
                                </tr>
                                <tr>
                                    <td><img src="http://via.placeholder.com/60x40" alt="Product img"></td>
                                    <td>Micheal</td>
                                    <td>SAMSANG PRO</td>
                                    <td>508 Virginia Street Chicago, IL 60653</td>
                                    <td>1</td>
                                    <td><span class="badge badge-success">DONE</span></td>
                                </tr>
                                <tr>
                                    <td><img src="http://via.placeholder.com/60x40" alt="Product img"></td>
                                    <td>Frank</td>
                                    <td>NOKIA-456</td>
                                    <td>1516 Holt Street West Palm Beach, FL 33401</td>
                                    <td>13</td>
                                    <td><span class="badge badge-warning">PENDING</span></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Jquery Core Js -->
<script src="admin-template/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="admin-template/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->

<script src="admin-template/assets/bundles/morrisscripts.bundle.js"></script> <!-- Morris Plugin Js -->
<script src="admin-template/assets/bundles/jvectormap.bundle.js"></script> <!-- JVectorMap Plugin Js -->
<script src="admin-template/assets/bundles/sparkline.bundle.js"></script> <!-- Sparkline Plugin Js -->
<script src="admin-template/assets/bundles/knob.bundle.js"></script> <!-- Jquery Knob Plugin Js -->

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script>
<script src="admin-template/assets/js/pages/ecommerce.js"></script>
<script src="admin-template/assets/js/pages/charts/jquery-knob.min.js"></script>
</body>


</html>