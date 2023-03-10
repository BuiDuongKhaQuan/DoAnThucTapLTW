<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin ::</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="admin-template/assets/plugins/footable-bootstrap/css/footable.bootstrap.min.css">
<link rel="stylesheet" href="admin-template/assets/plugins/footable-bootstrap/css/footable.standalone.min.css">
<!-- Custom Css -->
<link rel="stylesheet" href="admin-template/assets/css/style.min.css">
</head>

<body class="theme-blush">

<jsp:include page="header.jsp"></jsp:include>


<section class="content contact">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Contact</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Ứng dụng</a></li>
                        <li class="breadcrumb-item active">Liên hệ</li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                    
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
                    <button class="btn btn-success btn-icon float-right" type="button"><i class="zmdi zmdi-plus"></i></button>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="table-responsive">
                            <table class="table table-hover mb-0 c_list c_table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Tên</th>                                    
                                        <th data-breakpoints="xs">Số điện thoại</th>
                                        <th data-breakpoints="xs sm md">Email</th>
                                        <th data-breakpoints="xs sm md">Địa chỉ</th>
                                        <th data-breakpoints="xs">Thao tác</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="delete_2" type="checkbox">
                                                <label for="delete_2">&nbsp;</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="admin-template/assets/images/xs/avatar1.jpg" class="avatar w30" alt="">
                                            <p class="c_name">John Smith</p>
                                        </td>
                                        <td>
                                            <span class="phone"><i class="zmdi zmdi-whatsapp mr-2"></i>264-625-2583</span>
                                        </td>
                                        <td>
                                            <span class="email"><a href="javascript:void(0);" title="">johnsmith@gmail.com</a></span>
                                        </td>
                                        <td>
                                            <address><i class="zmdi zmdi-pin"></i>123 6th St. Melbourne, FL 32904</address>
                                        </td>
                                        <td>
                                            <button class="btn btn-primary btn-sm"><i class="zmdi zmdi-edit"></i></button>
                                            <button class="btn btn-danger btn-sm"><i class="zmdi zmdi-delete"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="delete_3" type="checkbox">
                                                <label for="delete_3">&nbsp;</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="admin-template/assets/images/xs/avatar3.jpg" class="avatar w30" alt="">
                                            <p class="c_name">Hossein Shams</p>
                                        </td>
                                        <td>
                                            <span class="phone"><i class="zmdi zmdi-whatsapp mr-2"></i>264-625-5689</span>
                                        </td>
                                        <td>
                                            <span class="email"><a href="javascript:void(0);" title="">hosseinshams@gmail.com</a></span>
                                        </td>
                                        <td>
                                            <address><i class="zmdi zmdi-pin"></i>44 Shirley Ave. West Chicago, IL 60185</address>
                                        </td>
                                        <td>
                                            <button class="btn btn-primary btn-sm"><i class="zmdi zmdi-edit"></i></button>
                                            <button class="btn btn-danger btn-sm"><i class="zmdi zmdi-delete"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="delete_4" type="checkbox">
                                                <label for="delete_4">&nbsp;</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="admin-template/assets/images/xs/avatar4.jpg" class="avatar w30" alt="">
                                            <p class="c_name">Maryam Amiri</p>
                                        </td>
                                        <td>
                                            <span class="phone"><i class="zmdi zmdi-whatsapp mr-2"></i>264-625-9513</span>
                                        </td>
                                        <td>
                                            <span class="email"><a href="javascript:void(0);" title="">maryamamiri@gmail.com</a></span>
                                        </td>
                                        <td>
                                            <address><i class="zmdi zmdi-pin"></i>123 6th St. Melbourne, FL 32904</address>
                                        </td>
                                        <td>
                                            <button class="btn btn-primary btn-sm"><i class="zmdi zmdi-edit"></i></button>
                                            <button class="btn btn-danger btn-sm"><i class="zmdi zmdi-delete"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="delete_5" type="checkbox">
                                                <label for="delete_5">&nbsp;</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="admin-template/assets/images/xs/avatar6.jpg" class="avatar w30" alt="">
                                            <p class="c_name">Tim Hank</p>
                                        </td>
                                        <td>
                                            <span class="phone"><i class="zmdi zmdi-whatsapp mr-2"></i>264-625-1212</span>
                                        </td>
                                        <td>
                                            <span class="email"><a href="javascript:void(0);" title="">timhank@gmail.com</a></span>
                                        </td>
                                        <td>
                                            <address><i class="zmdi zmdi-pin"></i>70 Bowman St. South Windsor, CT 06074</address>
                                        </td>
                                        <td>
                                            <button class="btn btn-primary btn-sm"><i class="zmdi zmdi-edit"></i></button>
                                            <button class="btn btn-danger btn-sm"><i class="zmdi zmdi-delete"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="delete_6" type="checkbox">
                                                <label for="delete_6">&nbsp;</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="admin-template/assets/images/xs/avatar7.jpg" class="avatar w30" alt="">
                                            <p class="c_name">Fidel Tonn</p>
                                        </td>
                                        <td>
                                            <span class="phone"><i class="zmdi zmdi-whatsapp mr-2"></i>264-625-2323</span>
                                        </td>
                                        <td>
                                            <span class="email"><a href="javascript:void(0);" title="">fideltonn@gmail.com</a></span>
                                        </td>
                                        <td>
                                            <address><i class="zmdi zmdi-pin"></i>514 S. Magnolia St. Orlando, FL 32806</address>
                                        </td>
                                        <td>
                                            <button class="btn btn-primary btn-sm"><i class="zmdi zmdi-edit"></i></button>
                                            <button class="btn btn-danger btn-sm"><i class="zmdi zmdi-delete"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="delete_7" type="checkbox">
                                                <label for="delete_7">&nbsp;</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="admin-template/assets/images/xs/avatar8.jpg" class="avatar w30" alt="">
                                            <p class="c_name">Gary Camara</p>
                                        </td>
                                        <td>
                                            <span class="phone"><i class="zmdi zmdi-whatsapp mr-2"></i>264-625-1005</span>
                                        </td>
                                        <td>
                                            <span class="email"><a href="javascript:void(0);" title="">garycamara@gmail.com</a></span>
                                        </td>
                                        <td>
                                            <address><i class="zmdi zmdi-pin"></i>44 Shirley Ave. West Chicago, IL 60185</address>
                                        </td>
                                        <td>
                                            <button class="btn btn-primary btn-sm"><i class="zmdi zmdi-edit"></i></button>
                                            <button class="btn btn-danger btn-sm"><i class="zmdi zmdi-delete"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="delete_8" type="checkbox">
                                                <label for="delete_8">&nbsp;</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="admin-template/assets/images/xs/avatar9.jpg" class="avatar w30" alt="">
                                            <p class="c_name">Frank Camly</p>
                                        </td>
                                        <td>
                                            <span class="phone"><i class="zmdi zmdi-whatsapp mr-2"></i>264-625-9999</span>
                                        </td>
                                        <td>
                                            <span class="email"><a href="javascript:void(0);" title="">frankcamly@gmail.com</a></span>
                                        </td>
                                        <td>
                                            <address><i class="zmdi zmdi-pin"></i>123 6th St. Melbourne, FL 32904</address>
                                        </td>
                                        <td>
                                            <button class="btn btn-primary btn-sm"><i class="zmdi zmdi-edit"></i></button>
                                            <button class="btn btn-danger btn-sm"><i class="zmdi zmdi-delete"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="delete_9" type="checkbox">
                                                <label for="delete_9">&nbsp;</label>
                                            </div>
                                        </td>
                                        <td>
                                            <img src="admin-template/assets/images/xs/avatar10.jpg" class="avatar w30" alt="">
                                            <p class="c_name">Tim Hank</p>
                                        </td>
                                        <td>
                                            <span class="phone"><i class="zmdi zmdi-whatsapp mr-2"></i>264-625-1212</span>
                                        </td>
                                        <td>
                                            <span class="email"><a href="javascript:void(0);" title="">timhank@gmail.com</a></span>
                                        </td>
                                        <td>
                                            <address><i class="zmdi zmdi-pin"></i>70 Bowman St. South Windsor, CT 06074</address>
                                        </td>
                                        <td>
                                            <button class="btn btn-primary btn-sm"><i class="zmdi zmdi-edit"></i></button>
                                            <button class="btn btn-danger btn-sm"><i class="zmdi zmdi-delete"></i></button>
                                        </td>
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
<script src="admin-template/assets/bundles/libscripts.bundle.js"></script>
<script src="admin-template/assets/bundles/vendorscripts.bundle.js"></script>

<script src="admin-template/assets/bundles/footable.bundle.js"></script> <!-- Lib Scripts Plugin Js -->

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script>
<script src="admin-template/assets/js/pages/tables/footable.js"></script><!-- Custom Js -->
</body>

</html>