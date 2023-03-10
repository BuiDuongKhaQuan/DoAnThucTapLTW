<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: File Manager</title>
<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Font Icon -->
<link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="admin-template/assets/plugins/footable-bootstrap/css/footable.bootstrap.min.css">
<link rel="stylesheet" href="admin-template/assets/plugins/footable-bootstrap/css/footable.standalone.min.css">
<!-- Custom Css -->
<link rel="stylesheet" href="admin-template/assets/css/style.min.css">
</head>

<body class="theme-blush">

<jsp:include page="header.jsp"></jsp:include>


<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Quản lí file</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item"><a href="file-dashboard.jsp">Quản lí file</a></li>
                        <li class="breadcrumb-item active">Tát cả các file</li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
                    <button class="btn btn-success btn-icon float-right" type="button"><i class="zmdi zmdi-upload"></i></button>
                </div>
            </div>
        </div>
        <div class="container-fluid">            
            <div class="row clearfix">
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2">
                        <div class="body big_icon storage">
                            <h6>BỘ NHỚ</h6>
                            <h2>32GB <small class="info">của 1Tb</small></h2>                            
                            <div class="progress m-t-10">
                            <div class="progress-bar l-green" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%;"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2">
                        <div class="body big_icon documents">
                            <h6>TÀI LIỆU</h6>
                            <h2>2GB <small class="info">của 1Tb</small></h2>                            
                            <div class="progress m-t-10">
                            <div class="progress-bar l-blush" role="progressbar" aria-valuenow="12" aria-valuemin="0" aria-valuemax="100" style="width: 12%;"></div>
                            </div>
                        </div>
                    </div>
                </div>                    
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2">
                        <div class="body big_icon images">
                            <h6>HÌNH ẢNH</h6>
                            <h2>20GB <small class="info">của 1Tb</small></h2>
                            <div class="progress m-t-10">
                                <div class="progress-bar l-blue" role="progressbar" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100" style="width: 89%;"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2">
                        <div class="body big_icon media_w">
                            <h6>PHƯƠNG TIỆN</h6>
                            <h2>10GB <small class="info">của 1Tb</small></h2>                            
                            <div class="progress m-t-10">
                                <div class="progress-bar l-purple" role="progressbar" aria-valuenow="39" aria-valuemin="0" aria-valuemax="100" style="width: 39%;"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <ul class="nav nav-tabs pl-0 pr-0">
                            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#list_view">Xem dạng danh sách</a></li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#grid_view">Xem dạng lưới</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="list_view">
                                <div class="table-responsive">
                                    <table class="table table-hover mb-0 c_table">
                                        <thead>
                                            <tr>
                                                <th>Tên</th>
                                                <th data-breakpoints="xs">Chủ nhân</th>
                                                <th data-breakpoints="xs sm md">Sủa đổi lần cuối</th>
                                                <th data-breakpoints="xs">Kích thước tệp</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><span><i class="zmdi zmdi-folder w25"></i> My Projects</span></td>
                                                <td><span class="owner">Me</span></td>
                                                <td><span class="date">Mar 26, 2019</span></td>
                                                <td><span class="size">-</span></td>
                                            </tr>
                                            <tr>
                                                <td><span><i class="zmdi zmdi-folder w25"></i> Sample Website proposals</span></td>
                                                <td><span class="owner">Me</span></td>
                                                <td><span class="date">Apr 09, 2019</span></td>
                                                <td><span class="size">-</span></td>
                                            </tr>
                                            <tr>
                                                <td><span><i class="zmdi zmdi-folder w25"></i> WordPress | Codester</span></td>
                                                <td><span class="owner">Me</span></td>
                                                <td><span class="date">Dec 19, 2016</span></td>
                                                <td><span class="size">-</span></td>
                                            </tr>
                                            <tr>
                                                <td><span><i class="zmdi zmdi-folder w25"></i> VueJs Projects for client</span></td>
                                                <td><span class="owner">Me</span></td>
                                                <td><span class="date">Apr 22, 2018</span></td>
                                                <td><span class="size">-</span></td>
                                            </tr>
                                            <tr>
                                                <td><span><i class="zmdi zmdi-folder w25"></i> Angular Website proposals</span></td>
                                                <td><span class="owner">Me</span></td>
                                                <td><span class="date">Feb 11, 2018</span></td>
                                                <td><span class="size">-</span></td>
                                            </tr>
                                            <tr>
                                                <td><span><i class="zmdi zmdi-folder w25"></i> Dribbble | Website</span></td>
                                                <td><span class="owner">Me</span></td>
                                                <td><span class="date">Aug 13, 2018</span></td>
                                                <td><span class="size">-</span></td>
                                            </tr>
                                            <tr>
                                                <td><span><i class="zmdi zmdi-file-text w25 text-amber"></i> Document of Understanding</span></td>
                                                <td><span class="owner">Me</span></td>
                                                <td><span class="date">Apr 26, 2018</span></td>
                                                <td><span class="size">67Kb</span></td>
                                            </tr>
                                            <tr>
                                                <td><span><i class="zmdi zmdi-chart w25 text-green"></i> Report2016.xls</span></td>
                                                <td><span class="owner">Me</span></td>
                                                <td><span class="date">Apr 26, 2018</span></td>
                                                <td><span class="size">25KB</span></td>
                                            </tr>
                                            <tr>
                                                <td><span><i class="zmdi zmdi-collection-pdf w25 text-blush"></i> asdf  hhkj.pdf</span></td>
                                                <td><span class="owner">Me</span></td>
                                                <td><span class="date">Apr 26, 2018</span></td>
                                                <td><span class="size">1MB</span></td>
                                            </tr>
                                            <tr>
                                                <td><span><i class="zmdi zmdi-collection-pdf w25 text-blush"></i> asdf  hhkj.pdf</span></td>
                                                <td><span class="owner">Me</span></td>
                                                <td><span class="date">Sept 14, 2018</span></td>
                                                <td><span class="size">1MB</span></td>
                                            </tr>
                                            <tr>
                                                <td><span><i class="zmdi zmdi-file-text w25 text-amber"></i> Document of Understanding</span></td>
                                                <td><span class="owner">Me</span></td>
                                                <td><span class="date">Apr 26, 2018</span></td>
                                                <td><span class="size">15KB</span></td>
                                            </tr>
                                            <tr>
                                                <td><span><i class="zmdi zmdi-chart w25 text-green"></i> Report2016.xls</span></td>
                                                <td><span class="owner">Me</span></td>
                                                <td><span class="date">Oct 17, 2018</span></td>
                                                <td><span class="size">08KB</span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane file_manager" id="grid_view">
                                <div class="row clearfix">
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="icon">
                                                    <i class="zmdi zmdi-collection-video"></i>
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">Jee Le Zara Song.mpg4</p>
                                                    <small>Size: 32MB <span class="date">Oct 11, 2016</span></small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="image">
                                                    <img src="admin-template/assets/images/image-gallery/3.jpg" alt="img" class="img-fluid">
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">img21545ds.jpg</p>
                                                    <small>Size: 2MB <span class="date">Nov 11, 2018</span></small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="icon">
                                                    <i class="zmdi zmdi-collection-folder-image"></i>
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">hellonew.mkv</p>
                                                    <small>Size: 720MB <span class="date">Feb 16, 2016</span></small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="icon">
                                                    <i class="zmdi zmdi-chart"></i>
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">Report2018.xls</p>
                                                    <small>Size: 103KB <span class="date">Jan 24, 2016</span></small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="image">
                                                    <img src="admin-template/assets/images/image-gallery/2.jpg" alt="img" class="img-fluid">
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">img21545ds.jpg</p>
                                                    <small>Size: 2MB <span class="date">Dec 11, 2018</span></small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="icon">
                                                    <i class="zmdi zmdi-file-text"></i>
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">Document_2018.doc</p>
                                                    <small>Size: 42KB <span class="date">Nov 02, 2018</span></small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="image">
                                                    <img src="admin-template/assets/images/image-gallery/1.jpg" alt="img" class="img-fluid">
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">img21545ds.jpg</p>
                                                    <small>Size: 2MB <span class="date">Dec 11, 2018</span></small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="icon">
                                                    <i class="zmdi zmdi-collection-folder-image"></i>
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">hellonew.mkv</p>
                                                    <small>Size: 720MB <span class="date">Dec 08, 2018</span></small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="icon">
                                                    <i class="zmdi zmdi-playlist-audio"></i>
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">newsong.mp3</p>
                                                    <small>Size: 8MB <span class="date">Dec 11, 2018</span></small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="icon">
                                                    <i class="zmdi zmdi-collection-pdf"></i>
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">asdf  hhkj.pdf</p>
                                                    <small>Size: 3MB <span class="date">Aug 18, 2018</span></small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="icon">
                                                    <i class="zmdi zmdi-chart"></i>
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">Report2016.xls</p>
                                                    <small>Size: 68KB <span class="date">Dec 12, 2016</span></small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="icon">
                                                    <i class="zmdi zmdi-file-text"></i>
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">Document_2018.doc</p>
                                                    <small>Size: 89KB <span class="date">Dec 15, 2018</span></small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="icon">
                                                    <i class="zmdi zmdi-collection-folder-image"></i>
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">hellonew.mkv</p>
                                                    <small>Size: 720MB <span class="date">Dec 08, 2018</span></small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="icon">
                                                    <i class="zmdi zmdi-playlist-audio"></i>
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">newsong.mp3</p>
                                                    <small>Size: 8MB <span class="date">Dec 11, 2018</span></small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="image">
                                                    <img src="admin-template/assets/images/image-gallery/8.jpg" alt="img" class="img-fluid">
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">img21545ds.jpg</p>
                                                    <small>Size: 2MB <span class="date">Dec 11, 2018</span></small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="icon">
                                                    <i class="zmdi zmdi-collection-pdf"></i>
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">asdf  hhkj.pdf</p>
                                                    <small>Size: 3MB <span class="date">Aug 18, 2018</span></small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="icon">
                                                    <i class="zmdi zmdi-chart"></i>
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">Report2016.xls</p>
                                                    <small>Size: 68KB <span class="date">Dec 12, 2016</span></small>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-4 col-sm-12">
                                        <div class="card">
                                            <a href="javascript:void(0);" class="file">
                                                <div class="hover">
                                                    <button type="button" class="btn btn-icon btn-icon-mini btn-round btn-danger">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                                <div class="icon">
                                                    <i class="zmdi zmdi-file-text"></i>
                                                </div>
                                                <div class="file-name">
                                                    <p class="m-b-5 text-muted">Document_2018.doc</p>
                                                    <small>Size: 89KB <span class="date">Dec 15, 2018</span></small>
                                                </div>
                                            </a>
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
<script src="admin-template/assets/bundles/vendorscripts.bundle.js"></script>

<script src="admin-template/assets/bundles/footable.bundle.js"></script> <!-- Lib Scripts Plugin Js -->

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script>    
<script src="admin-template/assets/js/pages/tables/footable.js"></script><!-- Custom Js -->
</body>

</html>