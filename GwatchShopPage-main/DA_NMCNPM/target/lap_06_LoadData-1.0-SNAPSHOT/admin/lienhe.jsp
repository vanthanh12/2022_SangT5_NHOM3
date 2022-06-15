<%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 15/12/2020
  Time: 9:16 CH
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Tino | Lien He</title>
    <!-- Bootstrap core CSS -->
    <link href="admin/css/bootstrap.min.css" rel="stylesheet">
    <link href="admin/css/style.css" rel="stylesheet">
    <script src="http://cdn.ckeditor.com/4.6.1/standard/ckeditor.js"></script>
</head>

<body>

<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="logoadmin">
                <a  href="CT_IndexAdmin"><img class="logo" src="../admin/image/logo.jpg" alt=""></a>
                <a class="navbar-brand" href="#">Admin - WatchShop</a>
            </div>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="CT_IndexAdmin">Trang quản trị</a></li>
                <li><a href="pages.html">Quản lý trang</a></li>
                <li><a href="posts.html">Quản lý bài viết</a></li>
                <li><a href="CT_User">Quản lý tài khoản</a></li>
                <li><a href="CT_Customer">Quản lý khách hàng</a></li>
                <li><a href="CT_Product">Quản lý sản phẩm</a></li>
                <li><a href="CT_HoaDon">Quản lý hóa đơn</a></li>
                <li><a href="lienhe.jsp">Liên hệ</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="CT_IndexAdmin">Chào bạn , Watch-Shop</a></li>
                <li><a href="login.jsp">Đăng xuất</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<header id="header">
    <div class="container">
        <div class="row">
            <div class="col-md-10">
                <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Liên Hệ <small>Manage Site Contact</small>
                </h1>
            </div>
            <div class="col-md-2">
                <div class="dropdown create">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="true">
                        Thêm nội dung
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                        <li><a type="button" data-toggle="modal" data-target="#addPage">Thêm trang</a></li>
                        <li><a href="blog_add.html">Thêm bài viết</a></li>
                        <li><a href="../admin/user_add.jsp">Thêm tài khoản</a></li>
                        <li><a href="../admin/product_add.jsp" type="button" >Thêm sản phẩm</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>

<section id="breadcrumb">
    <div class="container">
        <ol class="breadcrumb">
            <li><a href="CT_IndexAdmin">Trang quản trị</a></li>
            <li class="active">Quản lý liên hệ</li>
        </ol>
    </div>
</section>

<section id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <a href="CT_IndexAdmin" class="list-group-item ">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Trang quản trị
                    </a>
                    <a href="pages.html" class="list-group-item"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Quản lý trang <span class="badge">4</span></a>
                    <a href="posts.html" class="list-group-item"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Quản lý bài viết <span class="badge">6</span></a>
                    <a href="CT_User" class="list-group-item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Quản lý tài khoản <span class="badge">4</span></a>
                    <a href="CT_Customer" class="list-group-item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Quản lý khách hàng <span class="badge">8</span></a>
                    <a href="CT_Product" class="list-group-item"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Quản lý sản phẩm <span class="badge">6</span></a>
                    <a href="CT_HoaDon" class="list-group-item"><span class="glyphicon glyphicon-book" aria-hidden="true"></span> Quản lý hóa đơn<span class="badge">5</span></a>
                    <a href="CT_LienHe" class="list-group-item"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Liên hệ <span class="badge">6</span></a>

                </div>


            </div>
            <div class="col-md-9">
                <!-- Website Overview -->
                <div class="panel panel-default">
                    <div class="panel-heading main-color-bg">
                        <h3 class="panel-title">Liên hệ</h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-12">
                                <input class="form-control" type="text" placeholder="Tìm liên hệ...">
                            </div>
                        </div>
                        <br>
                        <table class="table table-striped table-hover">
                            <tr>
                                <th>STT</th>
                                <th>Mã liên hệ </th>
                                <th>Tên khách hàng</th>
                                <th>Số điện thoại</th>
                                <th>Email</th>
                                <th>Tiêu đề</th>
                                <th>Nội dung</th>
                                <th>Số sao</th>
                                <th>Phản hồi</th>

                            </tr>
                            <tr>
                                <td>01</td>
                                <td>LH-235</td>
                                <td>Trần Văn Đời</td>
                                <td>01020305564</td>
                                <td>doitino@gmail.com</td>
                                <td>Đánh giá sản phẩm</td>
                                <td>Đánh giá: Đây là một chiếc đồng hồ tiện dụng và thoải mái,
                                    và tôi thích cảm giác đáng kể của nó. Nó thực sự trông thanh lịch, mặc dù là thực dụng.
                                    Và tất nhiên, múi giờ thứ hai và chức năng E6B rất hữu ích. </td>
                                <td><img style="width: 60px; height: 20px;" src="../adminstrap_theme/image/danhgia.jpg" alt=""></td>
                                <td>
                                    <a  data-toggle="modal" data-target="#modalContactForm"  class="list-group-item"><span class="glyphicon glyphicon-send"
                                                                                                                           aria-hidden="true"></span></a>
                                </td>
                            </tr>
                            <tr>
                                <td>02</td>
                                <td>LH-235</td>
                                <td>Trần Văn Đời</td>
                                <td>01020305564</td>
                                <td>doitino@gmail.com</td>
                                <td>Đánh giá sản phẩm</td>
                                <td>Đánh giá: Đây là một chiếc đồng hồ tiện dụng và thoải mái,
                                    và tôi thích cảm giác đáng kể của nó. Nó thực sự trông thanh lịch, mặc dù là thực dụng.
                                    Và tất nhiên, múi giờ thứ hai và chức năng E6B rất hữu ích. </td>
                                <td><img style="width: 60px; height: 20px;" src="../adminstrap_theme/image/danhgia.jpg" alt=""></td>
                                <td>
                                    <a  data-toggle="modal" data-target="#modalContactForm"  class="list-group-item"><span class="glyphicon glyphicon-send"
                                                                                                                           aria-hidden="true"></span></a>
                                </td>

                            </tr>
                            <tr>
                                <td>03</td>
                                <td>LH-235</td>
                                <td>Trần Văn Đời</td>
                                <td>01020305564</td>
                                <td>doitino@gmail.com</td>
                                <td>Đánh giá sản phẩm</td>
                                <td>Đánh giá: Đây là một chiếc đồng hồ tiện dụng và thoải mái,
                                    và tôi thích cảm giác đáng kể của nó. Nó thực sự trông thanh lịch, mặc dù là thực dụng.
                                    Và tất nhiên, múi giờ thứ hai và chức năng E6B rất hữu ích. </td>
                                <td><img style="width: 60px; height: 20px;" src="../adminstrap_theme/image/danhgia.jpg" alt=""></td>
                                <td>
                                    <a  data-toggle="modal" data-target="#modalContactForm"  class="list-group-item"><span class="glyphicon glyphicon-send"
                                                                                                                           aria-hidden="true"></span></a>
                                </td>

                            </tr>
                            <tr>
                                <td>04</td>
                                <td>LH-235</td>
                                <td>Trần Văn Đời</td>
                                <td>01020305564</td>
                                <td>doitino@gmail.com</td>
                                <td>Đánh giá sản phẩm</td>
                                <td>Đánh giá: Đây là một chiếc đồng hồ tiện dụng và thoải mái,
                                    và tôi thích cảm giác đáng kể của nó. Nó thực sự trông thanh lịch, mặc dù là thực dụng.
                                    Và tất nhiên, múi giờ thứ hai và chức năng E6B rất hữu ích. </td>
                                <td><img style="width: 60px; height: 20px;" src="../adminstrap_theme/image/danhgia.jpg" alt=""></td>
                                <td>
                                    <a  data-toggle="modal" data-target="#modalContactForm"  class="list-group-item"><span class="glyphicon glyphicon-send"
                                                                                                                           aria-hidden="true"></span></a>
                                </td>

                            </tr>
                            <tr>
                                <td>05</td>
                                <td>LH-235</td>
                                <td>Trần Văn Đời</td>
                                <td>01020305564</td>
                                <td>doitino@gmail.com</td>
                                <td>Đánh giá sản phẩm</td>
                                <td>Đánh giá: Đây là một chiếc đồng hồ tiện dụng và thoải mái,
                                    và tôi thích cảm giác đáng kể của nó. Nó thực sự trông thanh lịch, mặc dù là thực dụng.
                                    Và tất nhiên, múi giờ thứ hai và chức năng E6B rất hữu ích.</td>
                                <td><img style="width: 60px; height: 20px;" src="../adminstrap_theme/image/danhgia.jpg" alt=""></td>
                                <td>
                                    <a  data-toggle="modal" data-target="#modalContactForm"  class="list-group-item"><span class="glyphicon glyphicon-send"
                                                                                                                           aria-hidden="true"></span></a>
                                </td>

                            </tr>
                            <tr>
                                <td>06</td>
                                <td>LH-235</td>
                                <td>Trần Văn Đời</td>
                                <td>01020305564</td>
                                <td>doitino@gmail.com</td>
                                <td>Đánh giá sản phẩm</td>
                                <td>Đánh giá: Đây là một chiếc đồng hồ tiện dụng và thoải mái,
                                    và tôi thích cảm giác đáng kể của nó. Nó thực sự trông thanh lịch, mặc dù là thực dụng.
                                    Và tất nhiên, múi giờ thứ hai và chức năng E6B rất hữu ích.</td>
                                <td><img style="width: 60px; height: 20px;" src="../adminstrap_theme/image/danhgia.jpg" alt=""></td>
                                <td>
                                    <a  data-toggle="modal" data-target="#modalContactForm"  class="list-group-item"><span class="glyphicon glyphicon-send"
                                                                                                                           aria-hidden="true"></span></a>
                                </td>

                            </tr>

                        </table>
                    </div>
                </div>

                <div class="modal fade" id="modalContactForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header text-center">
                                <h4 class="modal-title w-100 font-weight-bold">Write to us</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body mx-3">
                                <div class="md-form mb-5">
                                    <i class="fas fa-user prefix grey-text"></i>
                                    <label data-error="wrong" data-success="right" for="form34">Your name</label>
                                    <input type="text" id="form34" class="form-control validate">

                                </div>

                                <div class="md-form mb-5">
                                    <i class="fas fa-envelope prefix grey-text"></i>
                                    <label data-error="wrong" data-success="right" for="form29">Your email</label>
                                    <input type="email" id="form29" class="form-control validate">

                                </div>

                                <div class="md-form mb-5">
                                    <i class="fas fa-tag prefix grey-text"></i>
                                    <label data-error="wrong" data-success="right" for="form32">Subject</label>
                                    <input type="text" id="form32" class="form-control validate">

                                </div>

                                <div class="md-form">
                                    <i class="fas fa-pencil prefix grey-text"></i>
                                    <label data-error="wrong" data-success="right" for="form8">Your message</label>
                                    <textarea type="text" id="form8" class="md-textarea form-control" rows="4"></textarea>

                                </div>

                            </div>
                            <div class="modal-footer d-flex justify-content-center">
                                <button class="btn btn-unique">Send <i class="fas fa-paper-plane-o ml-1"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<footer id="footer">
    <p>Admin - Gwatch-Shop &copy; 2020</p>
</footer>

<!-- Modals -->

<!-- Add Page -->
<div class="modal fade" id="addPage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Add Page</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Page Title</label>
                        <input type="text" class="form-control" placeholder="Page Title">
                    </div>
                    <div class="form-group">
                        <label>Page Body</label>
                        <textarea name="editor1" class="form-control" placeholder="Page Body"></textarea>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"> Published
                        </label>
                    </div>
                    <div class="form-group">
                        <label>Meta Tags</label>
                        <input type="text" class="form-control" placeholder="Add Some Tags...">
                    </div>
                    <div class="form-group">
                        <label>Meta Description</label>
                        <input type="text" class="form-control" placeholder="Add Meta Description...">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    CKEDITOR.replace('editor1');
</script>

<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>

</html>
