<%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 15/12/2020
  Time: 9:16 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="cc" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Tino | Hoa don</title>
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
                <a  href="CT_IndexAdmin"><img class="logo" src="image/logo.jpg" alt=""></a>
                <a class="navbar-brand" href="#">Admin - WatchShop</a>
            </div>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="CT_IndexAdmin">Trang quản trị</a></li>
                <li><a href="#">Quản lý bài viết</a></li>
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
                <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Trang quản trị <small>Manage Your Site</small></h1>
            </div>
            <div class="col-md-2">
                <div class="dropdown create">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                        Thêm nội dung
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                        <li><a type="button" data-toggle="modal" data-target="#addPage">Thêm trang</a></li>
                        <li><a href="#">Thêm bài viết</a></li>
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
            <li class="active"> Trang quảng trị</li>
        </ol>
    </div>
</section>

<section id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <a href="CT_IndexAdmin" class="list-group-item active main-color-bg">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>  Trang quảng trị
                    </a>
                    <a href="#" class="list-group-item"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Quản lý bài viết <span class="badge">6</span></a>
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
                        <h3 class="panel-title">Hóa đơn</h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-12">
                                <input class="form-control" type="text" placeholder="Tìm hóa đơn...">
                            </div>
                        </div>
                        <br>
                        <table class="table table-striped table-hover">
                            <style>
                                .xem button{
                                    background-color: #c0392b;
                                    color: white;
                                }
                            </style>
                            <tr>
                                <th>Mã hóa đơn </th>
                                <th>Mã khách hàng</th>
                                <th>Ngày mua</th>
                                <th>Trị giá</th>
                                <th>CTHD</th>

                            </tr>
                            <cc:forEach items="${list}" var="h">
                            <tr>
                                <td>${h.ma_hd}</td>
                                <td>${h.ma_kh}</td>
                                <td>${h.ngay_mua}</td>
                                <td>${h.tri_gia}</td>
                                <td> <a style="background-color: #a6e1ec; font-weight: 300; margin-right: 3px; padding: 4px ; color: red" name="count" href="CT_CTHD?count=${h.ma_hd}">xem...</a></td>
                            </tr>
                            </cc:forEach>

                        </table>
                        <div class="paging">
                            <cc:forEach begin="1" end="${endPage}" var="i">
                                <a style="background-color: #a6e1ec; font-weight: 300; margin-right: 3px; padding: 4px ; color: red" name="count_page" href="CT_HoaDon?count_page=${i}">${i}</a>
                            </cc:forEach>
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
