<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="java.util.Map" %>
<%@ page import="qht.shopmypham.com.vn.model.ImageTrend" %>
<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js " lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

    <title>:: Aero Bootstrap4 Admin :: Product detail</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <!-- Favicon-->
    <link rel="stylesheet" href="admin-template/assets/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Custom Css -->
    <link rel="stylesheet" href="admin-template/assets/css/style.min.css">
    <link rel="stylesheet" href="admin-template/assets/plugins/dropify/css/dropify.min.css" type="text/css">

</head>


<body class="theme-blush">
<jsp:include page="header.jsp"></jsp:include>


<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Chỉnh sửa ảnh Cosmetics Trends</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="admin-home"><i class="zmdi zmdi-home"></i> Admin</a>
                        </li>
                        <li class="breadcrumb-item">Quản lí trang chủ</li>
                        <li class="breadcrumb-item active"><a href="AdminHomeAll?command=imageTrend" style="color: #000000c4">Ảnh Cosmetics Trends</a></li>
                        <li class="breadcrumb-item">Chỉnh sửa</li>
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
                <div class="col-lg-12">
                    <div class="card">
                        <div class="body">
                            <div class="row">
                                <% ImageTrend imageTrend = (ImageTrend) request.getAttribute("imgTrend");
                                    Map<String, String> map = (Map<String, String>) request.getSession().getAttribute("imgsTrends");
                                    String img = "";
                                    String img1 = "";
                                    if (map != null) {
                                        for (Map.Entry<String, String> entry : map.entrySet()) {
                                            img = "data:image/jpeg;base64," + entry.getValue();
                                            img1 = entry.getKey();
                                        }
                                %>
                                <div class="col-xl-3 col-lg-4 col-md-12">
                                    <div class="preview preview-pic tab-content">
                                        <div class="tab-pane active" id="product_1"><img
                                                src="<%=img%>" style="height: 330px"
                                                class="img-fluid" alt=""/>
                                        </div>
                                    </div>
                                    <button class="btn-primary btn" onclick="show()">Tải ảnh lên</button>
                                    <div id="show" class="promotion">
                                        <div class="promotion-box">
                                            <label class="title">Tải hình ảnh</label>
                                            <img src="user-template/img/icon/close.png" width="22px"
                                                 class="zmdi zmdi-close icon-close"
                                                 onclick="closeNew()">
                                            <div class="promotion-content">
                                                <form id="upload-form" method="post"
                                                      enctype="multipart/form-data">
                                                    <input type="file" name="file-input"
                                                           class="dropify" id="file-input">
                                                    <button type="submit">Tải lên</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%} else {%>

                                <div class="col-xl-3 col-lg-4 col-md-12">
                                    <div class="preview preview-pic tab-content">
                                        <div class="tab-pane active" id="product_a"><img
                                                src="<%=imageTrend.getImg()%>" class="img-fluid"
                                                alt=""/>
                                        </div>
                                    </div>
                                    <button class="btn-primary btn" onclick="show()">Tải ảnh lên</button>
                                    <div id="show" class="promotion">
                                        <div class="promotion-box">
                                            <label class="title">Tải hình ảnh</label>
                                            <img src="user-template/img/icon/close.png" width="22px"
                                                 class="zmdi zmdi-close icon-close"
                                                 onclick="closeNew()">
                                            <div class="promotion-content">
                                                <form id="upload-form" method="post"
                                                      enctype="multipart/form-data">
                                                    <input type="file" name="file-input"
                                                           class="dropify" id="file-input">
                                                    <button type="submit">Tải lên</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%}%>
                                <div class="col-xl-9 col-lg-8 col-md-12">


                                    <label for="status">Trạng thái</label>
                                    <select id="status"
                                            class="form-control show-tick ms select2"
                                            data-placeholder="Select">

                                        <% String s2 = "";
                                            if (imageTrend.getStatus() == 1) {
                                                s2 = "selected";
                                            }%>
                                        <option value="0">Ẩn
                                        </option>
                                        <option value="1" <%=s2%>>Hiển
                                        </option>
                                    </select>
                                    <%if (img1.equals("")) {%>
                                    <input type="hidden" id="imgT" value="<%=imageTrend.getImg()%>">
                                    <%} else {%>
                                    <input type="hidden" id="imgT" value="<%=img1%>">
                                    <%}%>
                                    <button type="submit" onclick="save(<%=imageTrend.getId()%>)"
                                            class="btn btn-raised btn-primary btn-round waves-effect">Lưu
                                    </button>
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
<script src="admin-template/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="admin-template/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
<script src="admin-template/assets/plugins/dropify/js/dropify.min.js"></script>
<script src="admin-template/assets/js/notification.js"></script>

<script>
    $('.dropify').dropify();

    const form = document.getElementById('upload-form');
    const fileInput = document.getElementById('file-input');

    form.addEventListener('submit', (event) => {
        event.preventDefault();
        const formData = new FormData();
        formData.append('file', fileInput.files[0]);
        const xhr = new XMLHttpRequest();
        xhr.open('POST', 'UploadImgTrends', true);
        xhr.onload = function () {
            if (xhr.status === 200) {
                window.location.href = "AdminHomeAll?command=editTrend&idT=<%=imageTrend.getId()%>";
            }
        };
        xhr.send(formData);
    });

    function save(idT) {
        var imgT = document.getElementById("imgT").value;
        var status = document.getElementById("status").value;

        var xhr = new XMLHttpRequest();
        xhr.open("POST", "AdminHomeAll", true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                showNotification("Cập nhật hình ảnh thành công.");
                window.location.href = "AdminHomeAll?command=imageTrend";
            }
        };
        xhr.send("idT=" + idT
            + "&status=" + encodeURIComponent(status)
            + "&imgT=" + encodeURIComponent(imgT)
            + "&command=imgtrend&action=trend");
    }


</script><!-- Custom Js -->
</body>

</html>