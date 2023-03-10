<!doctype html><%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: Chat App</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
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
                    <h2>Chat</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp"><i class="zmdi zmdi-home"></i> Admin</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Ứng dụng</a></li>
                        <li class="breadcrumb-item active">Trò chuyện</li>
                    </ul>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>                                
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="chat_list">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="zmdi zmdi-search"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Tìm kiếm..." required>
                            </div>
                            <ul class="user_list list-unstyled mb-0 mt-3">
                                <li>
                                    <a href="javascript:void(0);">
                                        <img src="admin-template/assets/images/xs/avatar1.jpg" alt="avatar" />
                                        <div class="about">
                                            <div class="name">Vincent Porter</div>
                                            <div class="status offline"> <i class="zmdi zmdi-circle"></i> left 7 mins ago </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="active">
                                    <a href="javascript:void(0);">
                                        <img src="admin-template/assets/images/xs/avatar2.jpg" alt="avatar" />
                                        <div class="about">
                                            <div class="name">Aiden Chavez</div>
                                            <div class="status me"> <i class="zmdi zmdi-circle"></i> online </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <img src="admin-template/assets/images/xs/avatar3.jpg" alt="avatar" />
                                        <div class="about">
                                            <div class="name">Mike Thomas</div>
                                            <div class="status online"> <i class="zmdi zmdi-circle"></i> online </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <img src="admin-template/assets/images/xs/avatar4.jpg" alt="avatar" />
                                        <div class="about">
                                            <div class="name">Erica Hughes</div>
                                            <div class="status online"> <i class="zmdi zmdi-circle"></i> online </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <img src="admin-template/assets/images/xs/avatar5.jpg" alt="avatar" />
                                        <div class="about">
                                            <div class="name">Ginger Johnston</div>
                                            <div class="status online"> <i class="zmdi zmdi-circle"></i> online </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <img src="admin-template/assets/images/xs/avatar6.jpg" alt="avatar" />
                                        <div class="about">
                                            <div class="name">Tracy Carpenter</div>
                                            <div class="status offline"> <i class="zmdi zmdi-circle"></i> left 30 mins ago </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <img src="admin-template/assets/images/xs/avatar7.jpg" alt="avatar" />
                                        <div class="about">
                                            <div class="name">Christian Kelly</div>
                                            <div class="status offline"> <i class="zmdi zmdi-circle"></i> left 10 hours ago </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <img src="admin-template/assets/images/xs/avatar8.jpg" alt="avatar" />
                                        <div class="about">
                                            <div class="name">Monica Ward</div>
                                            <div class="status online"><i class="zmdi zmdi-circle"></i> online</div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);">
                                        <img src="admin-template/assets/images/xs/avatar9.jpg" alt="avatar" />
                                        <div class="about">
                                            <div class="name">Dean Henry</div>
                                            <div class="status offline"><i class="zmdi zmdi-circle"></i> offline since Oct 28</div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="chat_window body">
                            <div class="chat-header">
                                <div class="user">
                                    <img src="admin-template/assets/images/xs/avatar2.jpg" alt="avatar" />
                                    <div class="chat-about">
                                        <div class="chat-with">Aiden Chavez</div>
                                        <div class="chat-num-messages">already 8 messages</div>
                                    </div>
                                </div>
                                <div class="setting">
                                    <a href="javascript:void(0);" class="btn btn-sm btn-warning"><i class="zmdi zmdi-camera"></i></a>
                                    <a href="javascript:void(0);" class="btn btn-sm btn-info"><i class="zmdi zmdi-file-text"></i></a>
                                </div>
                                <a href="javascript:void(0);" class="list_btn btn btn-info btn-round float-md-right"><i class="zmdi zmdi-comments"></i></a>
                            </div>
                            <hr>
                            <ul class="chat-history">
                                <li class="clearfix">
                                    <div class="status online message-data text-right">
                                        <span class="time">10:10 AM, Today</span>
                                        <span class="name">Michael</span>
                                        <i class="zmdi zmdi-circle me"></i>
                                    </div>
                                    <div class="message other-message float-right"> Hi Aiden, how are you? How is the project coming along? </div>
                                </li>
                                <li>
                                    <div class="status message-data">
                                        <span class="name">Aiden</span>
                                        <span class="time">10:12 AM, Today</span>
                                    </div>
                                    <div class="message my-message">
                                        <p>Are we meeting today? Project has been already finished and I have results to show you.</p>
                                        <div class="attachment">
                                            <a class="w200" href="javascript:void(0);"><img src="admin-template/assets/images/image-gallery/2.jpg" alt="" class="img-fluid img-thumbnail"></a>
                                            <a class="w200" href="javascript:void(0);"><img src="admin-template/assets/images/image-gallery/5.jpg" alt="" class="img-fluid img-thumbnail"></a>
                                        </div>
                                    </div>
                                </li>                        
                                <li>
                                    <div class="status message-data">
                                        <span class="name">Aiden</span>
                                        <span class="time">10:31 AM, Today</span>
                                    </div>
                                    <i class="zmdi zmdi-circle" style="color: #04BE5B; font-size: 10px;"></i>
                                    <i class="zmdi zmdi-circle" style="color: #83d0a7; font-size: 10px;"></i>
                                    <i class="zmdi zmdi-circle" style="color:#DAE9DA; font-size: 10px;"></i>
                                </li>
                            </ul>
                            <div class="chat-box">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="zmdi zmdi-mail-send"></i></span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Nhập tại đây..." required>
                                </div>                                                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script src="admin-template/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="admin-template/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
</body>

</html>