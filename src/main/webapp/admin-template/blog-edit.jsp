﻿<%@ page import="qht.shopmypham.com.vn.model.Blog" %>
<%@ page import="java.util.Map" %>
<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
    <link rel="stylesheet" href="admin-template/assets/plugins/summernote/dist/summernote.css"/>
    <link rel="stylesheet" href="admin-template/assets/plugins/bootstrap-select/css/bootstrap-select.css"/>
    <link rel="stylesheet" href="admin-template/assets/plugins/dropify/css/dropify.min.css" type="text/css">

    <!-- Custom Css -->
    <link rel="stylesheet" href="admin-template/assets/css/style.min.css">
</head>

<body class="theme-blush">

<jsp:include page="header.jsp"></jsp:include>

<section class="content blog-page">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Chỉnh sửa Blog</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="admin-home"><i class="zmdi zmdi-home"></i>Admin</a>
                        </li>
                        <li class="breadcrumb-item">Quản lí Blog</li>
                        <li class="breadcrumb-item"><a href="admin-blog?command=list">Danh sách Blog</a></li>
                        <li class="breadcrumb-item active">Chỉnh sửa Blog</li>
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
            <div class="row">
                <% Blog blog = (Blog) request.getAttribute("blog");%>
                <div class="col-lg-12">
                    <div class="card">
                        <div class="body">
                            <label>Tiêu đề</label>
                            <div class="form-group">
                                <input value="<%=blog.getTopic()%>" id="blog_topic" type="text" class="form-control"
                                       placeholder="Tiêu đề Blog"/>
                            </div>

                            <label>Hình ảnh</label>
                            <div class="form-group">
                                <%
                                    Map<String, String> imgBlog = (Map<String, String>) request.getSession().getAttribute("imgBlog");
                                    String img = "";
                                    String path = "";
                                    if (imgBlog != null) {
                                        for (Map.Entry<String, String> entry : imgBlog.entrySet()) {
                                            img = entry.getKey();
                                            path = entry.getValue();
                                        }
                                    } else {
                                        img = blog.getImg();
                                    }
                                %>
                                <%if (imgBlog != null) {%>
                                <input value="<%=img%>" required type="text" class="form-control"
                                       placeholder="Hình đại đại diện"/>
                                <input value="<%=path%>" required id="blog_img" type="hidden"/>
                                <%} else {%>
                                <input value="<%=img%>" required  id="blog_img" type="text" class="form-control"
                                       placeholder="Hình đại đại diện"/>
                                <%}%>

                                <button class="btn-primary btn" onclick="show()">Tải ảnh lên
                                </button>
                                <div id="show" class="promotion">
                                    <div class="promotion-box">
                                        <label class="title">Tải lên ảnh sản phẩm</label>
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
                            <label>Link bài viết chính thức</label>
                            <div class="form-group">
                                <input value="<%=blog.getLinkBlog()%>" id="blog_link"
                                       required
                                       type="text" class="form-control"
                                       placeholder="Link bài viết"/>
                            </div>
                            <input value="<%=blog.getIdBl()%>" type="hidden" id="IdBl">
                        </div>
                    </div>
                    <div class="card">
                        <div class="body">
                            <div class="form-line">
                             <textarea rows="4" class="form-control no-resize"
                                       id="blog_content"
                                       name="description"
                                       placeholder="Hãy nhập khái quát nội dung"><%=blog.getShortContent()%></textarea>
                            </div>
                            <button onclick="saveBlog()" type="submit" class="btn btn-info waves-effect m-t-20">CẬP NHẬT
                            </button>
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

<script src="admin-template/assets/plugins/dropzone/dropzone.js"></script> <!-- Dropzone Plugin Js -->

<script src="admin-template/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
<script src="admin-template/assets/plugins/summernote/dist/summernote.js"></script>
<script src="admin-template/assets/plugins/dropify/js/dropify.min.js"></script>

<script>
    $('.dropify').dropify();

    const form = document.getElementById('upload-form');
    const fileInput = document.getElementById('file-input');

    form.addEventListener('submit', (event) => {
        event.preventDefault();
        const formData = new FormData();
        formData.append('file', fileInput.files[0]);
        const xhr = new XMLHttpRequest();
        xhr.open('POST', 'UploadImgBlog', true);
        xhr.onload = function () {
            if (xhr.status === 200) {
                console.log('File uploaded successfully.');
                window.location.href = "admin-blog?command=edit&IdBl=<%=blog.getIdBl()%>";
            } else {
                console.log('An error occurred while uploading the file.');
            }
        };
        xhr.send(formData);
    });

    function saveBlog() {
        var blog_topic = document.getElementById("blog_topic").value;
        var blog_img = document.getElementById("blog_img").value;
        var blog_content = document.getElementById("blog_content").value;
        var blog_link = document.getElementById("blog_link").value;
        var IdBl = document.getElementById("IdBl").value;
        if (blog_topic.trim() === '' && blog_img.trim() === '' && blog_content.trim() === '' && blog_link.trim() === '') {
            alert("Vui lòng nhập đủ thông tin!");
        } else {
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "admin-blog", true);
            xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhr.onreadystatechange = function () {
                if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                    alert("Bài viết đã được cập nhật thành công.");
                }
            };
            xhr.send("topic=" + encodeURIComponent(blog_topic)
                + "&img=" + encodeURIComponent(blog_img)
                + "&content=" + encodeURIComponent(blog_content)
                + "&link=" + encodeURIComponent(blog_link)
                + "&IdBl=" + encodeURIComponent(IdBl)
                + "&command=edit");
        }
    }

    function show() {
        var box = document.getElementById('show');
        box.style.display = 'flex';
    }

    function closeNew() {

        var box = document.getElementById('show');
        box.style.display = 'none';

    }
</script><!-- Custom Js -->
</body>


</html>