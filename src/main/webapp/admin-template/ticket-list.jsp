<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: Ticket List</title>
<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
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
                    <h2>Ticket list</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Aero</a></li>
                        <li class="breadcrumb-item">Project</li>
                        <li class="breadcrumb-item active">Ticket list</li>
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
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card state_w1">
                        <div class="body d-flex justify-content-between">
                            <div>
                                <h5>2,365</h5>
                                <span>Total Tickets</span>
                            </div>
                            <div class="sparkline" data-type="bar" data-width="97%" data-height="55px" data-bar-Width="3" data-bar-Spacing="5" data-bar-Color="#FFC107">5,2,3,7,6,4,8,1</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card state_w1">
                        <div class="body d-flex justify-content-between">
                            <div>                                
                                <h5>365</h5>
                                <span>Pending</span>
                            </div>
                            <div class="sparkline" data-type="bar" data-width="97%" data-height="55px" data-bar-Width="3" data-bar-Spacing="5" data-bar-Color="#46b6fe">8,2,6,5,1,4,4,3</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card state_w1">
                        <div class="body d-flex justify-content-between">
                            <div>
                                <h5>65</h5>
                                <span>Responded</span>
                            </div>
                            <div class="sparkline" data-type="bar" data-width="97%" data-height="55px" data-bar-Width="3" data-bar-Spacing="5" data-bar-Color="#ee2558">4,4,3,9,2,1,5,7</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card state_w1">
                        <div class="body d-flex justify-content-between">
                            <div>                            
                                <h5>2,055</h5>
                                <span>Resolve</span>
                            </div>
                            <div class="sparkline" data-type="bar" data-width="97%" data-height="55px" data-bar-Width="3" data-bar-Spacing="5" data-bar-Color="#04BE5B">7,5,3,8,4,6,2,9</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="card project_list">
                        <div class="table-responsive">
                            <table class="table table-hover c_table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Product</th>
                                        <th>Title</th>
                                        <th>Created by</th>
                                        <th>Date</th>
                                        <th>Agent</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><strong>A2586</strong></td>
                                        <td><a href="ticket-detail.jsp" title="">Lucid Side Menu Open OnClick</a></td>
                                        <td>Lucid Admin</td>
                                        <td>Tim Hank</td>
                                        <td>02 Jan 2019</td>
                                        <td>Maryam</td>
                                        <td><span class="badge badge-warning">In Progress</span></td>
                                    </tr>
                                    <tr>
                                        <td><strong>A4578</strong></td>
                                        <td><a href="ticket-detail.jsp" title="">Update chart library</a></td>
                                        <td>Alpino Bootstrap</td>
                                        <td>Tim Hank</td>
                                        <td>04 Jan 2019</td>
                                        <td>Hossein</td>
                                        <td><span class="badge badge-warning">In Progress</span></td>
                                    </tr>
                                    <tr>
                                        <td><strong>A6523</strong></td>
                                        <td><a href="ticket-detail.jsp" title="">Mega Menu Open OnClick</a></td>
                                        <td>Hexabit Admin</td>
                                        <td>Gary Camara</td>
                                        <td>09 Jan 2019</td>
                                        <td>Maryam</td>
                                        <td><span class="badge badge-info">Opened</span></td>
                                    </tr>
                                    <tr>
                                        <td><strong>A9514</strong></td>
                                        <td><a href="ticket-detail.jsp" title="">Nexa Theme Side Menu Open OnClick</a></td>
                                        <td>Nexa Template</td>
                                        <td>Tim Hank</td>
                                        <td>12 Jan 2019</td>
                                        <td>Hossein</td>
                                        <td><span class="badge badge-info">Opened</span></td>
                                    </tr>
                                    <tr>
                                        <td><strong>A2548</strong></td>
                                        <td><a href="ticket-detail.jsp" title="">Update Angular version</a></td>
                                        <td>Lucid Admin</td>
                                        <td>Fidel Tonn</td>
                                        <td>22 Jan 2019</td>
                                        <td>Frank</td>
                                        <td><span class="badge badge-danger">Closed</span></td>
                                    </tr>
                                    <tr>
                                        <td><strong>A1346</strong></td>
                                        <td><a href="ticket-detail.jsp" title="">Add new hospital</a></td>
                                        <td>Lucid Hospital</td>
                                        <td>Fidel Tonn</td>
                                        <td>13 Jan 2019</td>
                                        <td>Hossein</td>
                                        <td><span class="badge badge-danger">Closed</span></td>
                                    </tr>
                                    <tr>
                                        <td><strong>A7845</strong></td>
                                        <td><a href="ticket-detail.jsp" title="">Update latest bootstrap version</a></td>
                                        <td>Compass Dashboard</td>
                                        <td>Tim Hank</td>
                                        <td>07 Jan 2019</td>
                                        <td>Frank</td>
                                        <td><span class="badge badge-warning">In Progress</span></td>
                                    </tr>
                                    <tr>
                                        <td><strong>A2586</strong></td>
                                        <td><a href="ticket-detail.jsp" title="">Add new extra page</a></td>
                                        <td>Lucid Admin</td>
                                        <td>Tim Hank</td>
                                        <td>02 Jan 2019</td>
                                        <td>Maryam</td>
                                        <td><span class="badge badge-warning">In Progress</span></td>
                                    </tr>
                                    <tr>
                                        <td><strong>A4578</strong></td>
                                        <td><a href="ticket-detail.jsp" title="">Update chart library</a></td>
                                        <td>Alpino Bootstrap</td>
                                        <td>Tim Hank</td>
                                        <td>04 Jan 2019</td>
                                        <td>Hossein</td>
                                        <td><span class="badge badge-warning">In Progress</span></td>
                                    </tr>
                                    <tr>
                                        <td><strong>A6523</strong></td>
                                        <td><a href="ticket-detail.jsp" title="">Mega Menu Open OnClick</a></td>
                                        <td>Hexabit Admin</td>
                                        <td>Gary Camara</td>
                                        <td>09 Jan 2019</td>
                                        <td>Maryam</td>
                                        <td><span class="badge badge-info">Opened</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <ul class="pagination pagination-primary mt-4">
                            <li class="page-item active"><a class="page-link" href="javascript:void(0);">1</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0);">4</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:void(0);">5</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Jquery Core Js --> 
<script src="admin-template/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="admin-template/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 

<script src="admin-template/assets/bundles/sparkline.bundle.js"></script>
<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script>
<script src="admin-template/assets/js/pages/charts/sparkline.js"></script>
</body>


</html>