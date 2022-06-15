<%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 15/12/2020
  Time: 7:53 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"/>
<div class="wrap-breadcrumb">
    <div class="clearfix container">
        <div class="row main-header">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pd5  ">
                <ol class="breadcrumb breadcrumb-arrows">
                    <li><a href="index.html" target="_self">Trang chủ</a></li>


                    <li><a href="dssanpham.html" target="_self">Danh mục</a></li>



                    <li class="active"><span>Đồng hồ nam Longbo</span></li>



                </ol>
            </div>
        </div>
    </div>

</div>
<section id="content" class="clearfix container">
    <div class="row">
        <div id="collection" class="content-pages collection-page" data-sticky_parent>

            <!-- Begin collection info -->
            <!-- Content-->
            <div class="col-lg-12 visible-sm visible-xs">
                <div class="visible-sm visible-xs">
                    <h1 class="title-sm" >
                        Đồng hồ nam Longbo
                    </h1>
                </div>

                <div class="filter-by-wrapper">
                    <div class="filter-by" >

                        <div class="sort-filter-option navbar-inactive" id="navbar-inner">
                            <div class="filterBtn txtLeft btn-navbar-collection">
						<span class="list-coll">
							<i class="fa fa-server" aria-hidden="true"></i>
							Danh mục
						</span>
                            </div>
                        </div>


                        <div class="sort-filter-option js-promoteTooltip" >
                            <div class="filterBtn txtLeft showOverlay" >
                                <i class="fa fa-sort-alpha-asc" aria-hidden="true"></i>
                                <span  class="custom-dropdown custom-dropdown--white">
							<select class="sort-by custom-dropdown__select custom-dropdown__select--white">

										<option value="manual">Sản phẩm nổi bật</option>

								<option value="price-ascending">Giá: Tăng dần</option>
								<option value="price-descending">Giá: Giảm dần</option>
								<option value="title-ascending">Tên: A-Z</option>
								<option value="title-descending">Tên: Z-A</option>
								<option value="created-ascending">Cũ nhất</option>
								<option value="created-descending">Mới nhất</option>
								<option value="best-selling">Bán chạy nhất</option>
							</select>
						</span>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <div class=" col-md-3 col-sm-12 col-xs-12 leftsidebar-col" data-sticky_column >
                <div class="group_sidebar">

                    <div  class="list-group navbar-inner ">


                        <div class="mega-left-title btn-navbar title-hidden-sm">
                            <h3 class="sb-title">Danh mục </h3>
                        </div>

                        <ul class="nav navs sidebar menu" id='cssmenu'>




                            <li class="item  first">
                                <a href="CT_Product_Sale">
                                    <span>Sản phẩm khuyến mãi</span>
                                </a>
                            </li>





                            <li class="item  ">
                                <a href="CT_Product_Top">
                                    <span>Sản phẩm nổi bật</span>
                                </a>
                            </li>





                            <li class="item  last">
                                <a href="CT_ProductWebapp">
                                    <span>Tất cả sản phẩm</span>
                                </a>
                            </li>


                        </ul>

                    </div>

                    <!-- Banner quảng cáo -->
                    <div class="list-group_l banner-left hidden-sm hidden-xs">

                        <a href="">
                            <img src="./theme.hstatic.net/1000177652/1000229231/14/left_image_ad.jpg?v=90" >
                        </a>

                    </div>
                </div>
                <script>

                    $(document).ready(function(){
                        //$('ul li:has(ul)').addClass('hassub');
                        $('#cssmenu ul ul li:odd').addClass('odd');
                        $('#cssmenu ul ul li:even').addClass('even');
                        $('#cssmenu > ul > li > a').click(function() {
                            $('#cssmenu li').removeClass('active');
                            $(this).closest('li').addClass('active');
                            var checkElement = $(this).nextS();
                            if((checkElement.is('ul')) && (checkElement.is(':visible'))) {
                                $(this).closest('li').removeClass('active');
                                checkElement.slideUp('normal');
                            }
                            if((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
                                $('#cssmenu ul ul:visible').slideUp('normal');
                                checkElement.slideDown('normal');
                            }
                            if($(this).closest('li').find('ul').children().length == 0) {
                                return true;
                            } else {
                                return false;
                            }
                        });

                        $('.drop-down').click(function(e){
                            if ( $(this).parents('li').hasClass('has-sub') ){
                                e.preventDefault();
                                if($(this).hasClass('open-nav')){
                                    $(this).removeClass('open-nav');
                                    $(this).parents('li').children('ul.lve2').slideUp('normal').removeClass('in');
                                }else {
                                    $(this).addClass('open-nav');
                                    $(this).parents('li').children('ul.lve2').slideDown('normal').addClass('in');
                                }
                            }else {

                            }
                        });

                    });

                    $("#list-group-l ul.navs li.active").parents('ul.children').addClass("in");
                </script>
            </div>
            <div class="content-col col-md-9 col-sm-12 col-xs-12" data-sticky_column>
                <div class="row">
                    <div class="main-content">
                        <div class="col-md-12 hidden-sm hidden-xs">
                            <div class="sort-collection">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                        <h1>
                                            Đồng hồ nam Longbo
                                        </h1>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">


                                        <div class="browse-tags">
                                            <span>Sắp xếp theo:</span>
                                            <span  class="custom-dropdown custom-dropdown--white">
										<select class="sort-by custom-dropdown__select custom-dropdown__select--white">

										<option value="manual">Sản phẩm nổi bật</option>

											<option value="price-ascending">Giá: Tăng dần</option>
											<option value="price-descending">Giá: Giảm dần</option>
											<option value="title-ascending">Tên: A-Z</option>
											<option value="title-descending">Tên: Z-A</option>
											<option value="created-ascending">Cũ nhất</option>
											<option value="created-descending">Mới nhất</option>
											<option value="best-selling">Bán chạy nhất</option>
										</select>
									</span>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-12 col-sm-12 col-xs-12 content-product-list">
                            <div class="row product-list">
                                <c:forEach items="${list}" var="p">
                                    <div class="col-md-4  col-sm-6 col-xs-12 pro-loop">
                                        <div class="product-block product-resize">
                                            <div class="product-img image-resize view view-third">

                                                <div class="product-sale" >
                                                    <span><label class="sale-lb">- </label> ${p.sale}</span>
                                                </div>



                                                <a href="CT_CTSP?masp=${p.id}" title="ĐỒNG HỒ LONGBO MẶT VUÔNG MÀU ĐEN">
                                                    <img class="first-image  has-img" alt=" ĐỒNG HỒ LONGBO MẶT VUÔNG MÀU ĐEN " src="${p.img1}"  />

                                                    <img  class ="second-image" src="${p.img2}"  alt=" ĐỒNG HỒ LONGBO MẶT VUÔNG MÀU ĐEN " />

                                                </a>
                                                <div class="actionss">
                                                    <div class="btn-cart-products">
                                                        <a href="<c:url value="/CT_Cart">
                                                            <c:param name="command" value="addCart"/>
                                                            <c:param name="id" value="${p.id}"/>
                                                            </c:url>">
                                                            <i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                                        </a>
                                                    </div>
                                                    <div class="view-details">
                                                        <a href="CT_CTSP?masp=${p.id}" class="view-detail" >
                                                            <span><i class="fa fa-clone"> </i></span>
                                                        </a>
                                                    </div>
                                                    <div class="btn-quickview-products">
                                                        <a href="javascript:void(0);" class="quickview" data-handle="/products/dong-ho-longbo-mat-vuong-mau-trang-1"><i class="fa fa-eye"></i></a>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="product-detail clearfix">


                                                <!-- sử dụng pull-left -->
                                                <h3 class="pro-name"> <a href="CT_CTSP?masp=${p.id}" title="ĐỒNG HỒ LONGBO MẶT VUÔNG MÀU ĐEN">${p.name} </a></h3>
                                                <div class="pro-prices">
                                                    <p class="pro-price">${p.price}</p>
                                                    <p class="pro-price-del text-left"><del class="compare-price">${p.compare_price}</del></p>


                                                </div>


                                            </div>
                                        </div>

                                    </div>
                                </c:forEach>


                                <div class="col-md-12 col-sm-12 col-xs-12 ">
                                    <div class="clearfix">
                                        <div id="pagination" class="">


                                            <div class="col-lg-2 col-md-2 col-sm-3 hidden-xs">

                                            </div>
                                            <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12 text-center">
                                                <c:forEach begin="1" end="${endPage}" var="i">
                                                    <span class="page-node current">
                                                        <a href="<c:url value="/CT_ProductWebapp">
                                                        <c:param name="productSearch" value="${name}"/>
                                                        <c:param name="count_page" value="${i}"/>

                                                         </c:url>" >
                                                                ${i}
                                                        </a></span>
                                                </c:forEach>
                                            </div>
                                            <div class="col-lg-2 col-md-2 col-sm-3 hidden-xs">

                                                <a name="count_page" class="pull-right next fa fa-angle-right" href="CT_ProductWebapp?count_page=${endPage}"><span>Trang cuối</span></a>

                                            </div>



                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- End collection info -->
                    <!-- Begin no products -->


                    <!-- End no products -->
                </div>
                <script>
                    Haravan.queryParams = {};
                    if (location.search.length) {
                        for (var aKeyValue, i = 0, aCouples = location.search.substr(1).split('&'); i < aCouples.length; i++) {
                            aKeyValue = aCouples[i].split('=');
                            if (aKeyValue.length > 1) {
                                Haravan.queryParams[decodeURIComponent(aKeyValue[0])] = decodeURIComponent(aKeyValue[1]);
                            }
                        }
                    }
                    var collFilters = jQuery('.coll-filter');
                    collFilters.change(function() {
                        var newTags = [];
                        var newURL = '';
                        delete Haravan.queryParams.page;
                        collFilters.each(function() {
                            if (jQuery(this).val()) {
                                newTags.push(jQuery(this).val());
                            }
                        });

                        newURL = '/collections/' + 'dong-ho-nam-longbo';
                        if (newTags.length) {
                            newURL += '/' + newTags.join('+');
                        }
                        var search = jQuery.param(Haravan.queryParams);
                        if (search.length) {
                            newURL += '?' + search;
                        }
                        location.href = newURL;

                    });
                    jQuery('.sort-by')
                        .val('title-ascending')
                        .bind('change', function() {
                            Haravan.queryParams.sort_by = jQuery(this).val();
                            location.search = jQuery.param(Haravan.queryParams);
                        });
                </script>
            </div>
        </div>
    </div>
</section>

<jsp:include page="footer.jsp"/>
