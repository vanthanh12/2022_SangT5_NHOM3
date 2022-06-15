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
    <title>Admin Tino | Products</title>
    <!-- Bootstrap core CSS -->
    <link href="admin/css/bootstrap.min.css" rel="stylesheet">
    <link href="admin/css/font-awesome.css" rel="stylesheet">
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
                <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Sản phẩm <small>Manage Site
                    Product</small></h1>
            </div>
            <div class="col-md-2">
                <div class="dropdown create">
                    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
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
            <li><a href="CT_IndexAdmin"> Trang quảng trị</a></li>
            <li class="active">Trang sản phẩm</li>
        </ol>
    </div>
</section>

<section id="main">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="list-group">
                    <a href="CT_IndexAdmin" class="list-group-item ">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Trang quảng trị
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
                        <h3 class="panel-title">Quản lý sản phẩm</h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-12">
                                <form action="CT_SeachProductAdmin">
                                <input class="form-control" name="productSearch" type="text" placeholder="Tìm sản phẩm...">
                                <input style="margin-left: 500px; background-color: blue;color: white; margin-top: 5px;padding: 5px;padding-right:10px;padding-left:10px;border-radius: 2px" type="submit" value="Tìm">
                                </form>
                            </div>
                        </div>
                        <br>
                        <table class="table table-striped table-hover">
                            <a href="CT_AddProduct"> <button id="btn_them_post">Thêm sản phẩm mới</button></a>

                            <tr>
                                <th>Mã </th>
                                <th>Mã loại</th>
                                <th>Tên sản phẩm</th>
                                <th>Hình ảnh 1</th>
                                <th>Hình ảnh 2</th>
                                <th>Thương iệu</th>
                                <th>Giá sản phẩm</th>
                                <th>Giá sau giảm</th>
                                <th>Ngày cung cấp</th>
                                <th>Thao tác</th>


                            </tr>
                            <cc:forEach items="${list}" var="p">
                            <tr>
                                <td >${p.id}</td>
                                <td >${p.ma_loaisp}</td>
                                <td>${p.name}</td>
                                <td><img src="${p.img1}" style="width: 50px;height: 50px;">
                                </td>
                                <td><img src="${p.img2}" style="width: 50px;height: 50px;">
                                </td>
                                <td>${p.brand}</td>
                                <td>${p.price}VND</td>
                                <td>${p.compare_price}VND</td>
                                <td> - ${p.sale} %</td>

                                <td><a  class="btn btn-default" class="list-group-item" href="CT_GetProductUpdate?id=${p.id}">
                                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                                        <a class="btn btn-danger"  class="list-group-item"
                                         href="CT_DeleteProduct?id=${p.id}"><span class="glyphicon glyphicon-trash"></span></a></td></tr>
                             </tr>
                                    </cc:forEach>

                        </table>
                        <div class="paging">
                            <cc:forEach begin="1" end="${endPage}" var="i">
                                <a style="background-color: #a6e1ec; font-weight: 300; margin-right: 3px; padding: 4px ; color: red" name="count_page" href="CT_Product?count_page=${i}">${i}</a>
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
<!-- Add Page -->
<div class="modal fade" id="addPage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Add Page</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Page Title</label>
                        <input type="text" class="form-control" placeholder="Page Title">
                    </div>
                    <div class="form-group">
                        <label>Page Body</label>
                        <textarea name="editor1" class="form-control"
                                  placeholder="Page Body"></textarea>
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
                        <input type="text" class="form-control"
                               placeholder="Add Meta Description...">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                            data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </form>
        </div>
    </div>
</div>
    <script>
        CKEDITOR.replace( 'editor1' );
    </script>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>

