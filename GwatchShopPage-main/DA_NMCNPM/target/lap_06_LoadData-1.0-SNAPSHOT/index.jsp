<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="header.jsp"/>


<!-- Begin slider -->
<div class="slider-default bannerslider">
    <div class="hrv-banner-container">
        <div class="hrvslider">
            <ul class="slides">
                <li>
                    <a href="chitietsanpham.jsp" class="hrv-url">
                        <img class="img-responsive"
                             src="./theme.hstatic.net/1000177652/1000229231/14/slideshow_1.jpg?v=90"
                             alt="Thời trang nam" />
                    </a>
                    <div id="hrv-banner-caption1" class="hrv-caption hrv-banner-caption">
                        <div class="container">
                            <div class="hrv-caption-inner">
                                <div class="hrv-banner-content slider-1">
                                    <h2 class="hrv-title1">Đẳng cấp về thương hiệu</h2>
                                    <h3 class="hrv-title2">ĐỒNG HỒ ROLEX</h3>
                                    <a href="chitietsanpham.jsp" class="hrv-url">Xem
                                        ngay</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="chitietsanpham.jsp" class="hrv-url">
                        <img class="img-responsive"
                             src="./theme.hstatic.net/1000177652/1000229231/14/slideshow_2.jpg?v=90"
                             alt="" />
                    </a>
                    <div id="hrv-banner-caption2" class="hrv-caption hrv-banner-caption">
                        <div class="container">
                            <div class="hrv-caption-inner">
                                <div class="hrv-banner-content slider-2">
                                    <h2 class="hrv-title1">Tinh tế sang trọng</h2>
                                    <h3 class="hrv-title2">ĐỒNG HỒ TISSOT</h3>
                                    <a href="chitietsanpham.jsp" class="hrv-url">Xem
                                        ngay</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="chitietsanpham.jsp" class="hrv-url">
                        <img class="img-responsive"
                             src="./theme.hstatic.net/1000177652/1000229231/14/slideshow_3.jpg?v=90"
                             alt="" />
                    </a>
                    <div id="hrv-banner-caption3" class="hrv-caption hrv-banner-caption">
                        <div class="container">
                            <div class="hrv-caption-inner">
                                <div class="hrv-banner-content slider-3">
                                    <h2 class="hrv-title1">Món quà hạnh phúc</h2>
                                    <h3 class="hrv-title2">Tiết kiệm đến 50%</h3>
                                    <a href="chitietsanpham.jsp" class="hrv-url">Xem
                                        ngay</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- End slider -->


<script>
    jQuery(document).ready(function () {
        if ($('.slides li').size() > 0) {
            $(".hrv-banner-container .slides").owlCarousel({
                singleItem: true,
                autoPlay: 5000,
                items: 1,
                itemsDesktop: [1199, 1],
                itemsDesktopSmall: [980, 1],
                itemsTablet: [768, 1],
                itemsMobile: [479, 1],
                slideSpeed: 500,
                paginationSpeed: 500,
                rewindSpeed: 500,
                addClassActive: true,
                navigation: true,
                stopOnHover: true,
                pagination: false,
                scrollPerPage: true,
                afterMove: nextslide,
                afterInit: nextslide,
            });
            function nextslide() {
                $(".hrv-banner-container .owl-item .hrv-banner-caption").css('display', 'none');
                $(".hrv-banner-container .owl-item .hrv-banner-caption").removeClass('hrv-caption')
                $(".hrv-banner-container .owl-item.active .hrv-banner-caption").css('display', 'block');

                var heading = $('.hrv-banner-container .owl-item.active .hrv-banner-caption').clone().removeClass();
                $('.hrv-banner-container .owl-item.active .hrv-banner-caption').remove();
                $('.hrv-banner-container .owl-item.active>li').append(heading);
                $('.hrv-banner-container .owl-item.active>li>div').addClass('hrv-banner-caption hrv-caption');
            }

        }
    })

</script>




</div>

<section id="content" class="clearfix container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <!-- Content-->
            <div class="main-content">
                <!-- Sản phẩm trang chủ -->

                <div class="product-list clearfix">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <aside class="styled_header  use_icon ">
                                <h2>What hot</h2>

                                <h3>Sản phẩm bán chạy</h3>
                                <span class="icon"><img
                                        src="./theme.hstatic.net/1000177652/1000229231/14/icon_featured.png?v=90"
                                        alt=""></span>

                            </aside>
                        </div>
                    </div>
                    <!--Product loop-->
                    <form action="index" method="get">
                        <div class="row content-product-list products-resize">
                            <c:forEach items="${List}" var="p">
                                <div class="col-md-3 col-sm-6 col-xs-6 pro-loop">
                                    <div class="product-block product-resize">
                                        <div class="product-img image-resize view view-third">
                                            <div class="product-sale">
                                                <span><label class="sale-lb">- </label> ${p.sale}</span>
                                            </div>

                                            <a href="CT_CTSP?masp=${p.id}">

                                                <img class="first-image  has-img"
                                                     alt=" ĐỒNG HỒ NAM SKMEI KIM XANH DƯƠNG "
                                                     src="${p.img1}" />

                                                <img class="second-image"
                                                     src="${p.img2}"
                                                     alt=" ĐỒNG HỒ NAM SKMEI KIM XANH DƯƠNG " />

                                            </a>
                                            <div class="actionss">
                                                <div class="btn-cart-products">
                                                    <a href="<c:url value="/CT_Cart">
                                                            <c:param name="command" value="addCart"/>
                                                            <c:param name="id" value="${p.id}"/>
                                                            </c:url>">
                                                            <i  class="fa fa-shopping-bag" aria-hidden="true"></i>
                                                    </a>
                                                </div>
                                                <div class="view-details">
                                                    <a href="CT_CTSP?masp=${p.id}" class="view-detail">
                                                        <span><i class="fa fa-clone"> </i></span>
                                                    </a>
                                                </div>
                                                <div class="btn-quickview-products">
                                                    <a href="javascript:void(0);" class="quickview"
                                                       data-handle="/products/dong-ho-nam-skmei-kim-xanh-duong"><i
                                                            class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="product-detail clearfix">
                                            <!-- sử dụng pull-left -->
                                            <h3 class="pro-name"><a
                                                    href="CT_CTSP?masp=${p.id}"
                                                    title="ĐỒNG HỒ NAM SKMEI KIM XANH DƯƠNG">${p.name}</a></h3>
                                            <div class="pro-prices">
                                                <p class="pro-price">${p.compare_price}</p>
                                                <p class="pro-price-del text-left"><del
                                                        class="compare-price">${p.price}</del></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </form>


                    <div class="row">
                        <div class="col-lg-12 col-sm-12 col-xs-12  pull-center center">


                            <a class="btn btn-readmore" href="CT_index?index=${index +12}"
                               role="button">Xem thêm</a>


                        </div>
                    </div>
                </div>
                <!--Product loop-->



                <div class="row">
                    <div class="col-lg-12 col-sm-12 col-xs-12">
                        <div class="animation fade-in home-banner-1">
                            <aside class="banner-home-1">

                                <div class="divcontent"><span class="ad_banner_1">Miễn phí vận chuyển<strong
                                        class="ad_banner_2">Với tất cả đơn hàng trên 500k thành phố Hà
														Nội</strong></span>
                                    <span class="ad_banner_desc">Miễn phí 2 ngày vận chuyển với đơn hàng
													trên 500k trừ trực tiếp khi thanh toán</span>
                                </div>
                                <div class="divstyle" ></div>
                            </aside>
                        </div>
                    </div>
                </div>







                <div class="product-list clearfix ">
                    <div class="row">
                        <div class="col-lg-12 col-sm-12 col-xs-12">
                            <aside class="styled_header  use_icon ">


                                <h3>Sản phẩm mới</h3>
                                <span class="icon"><img
                                        src="./theme.hstatic.net/1000177652/1000229231/14/icon_sale.png?v=90"
                                        alt="Newest trends"></span>

                            </aside>
                        </div>
                    </div>

                    <div class="row content-product-list products-resize">
                        <c:forEach items="${ProductNew}" var="v">
                            <div class="col-md-3 col-sm-6 col-xs-6 pro-loop">
                                <div class="product-block product-resize">
                                    <div class="product-img image-resize view view-third">

                                        <div class="product-sale">
                                            <span><label class="sale-lb">- </label> ${v.sale}</span>
                                        </div>

                                        <a href="<c:url value="/CT_CTSP">
                                            <c:param name="username" value="${ten_dang_nhap}"/>
                                        </c:url>"
                                           title="${v.name}">
                                            <img class="first-image  has-img"
                                                 alt=" ĐỒNG HỒ NAM SKMEI CÓ LỊCH MỎ RỘNG "
                                                 src="${v.img1}" />

                                            <img class="second-image"
                                                 src="${v.img2}"
                                                 alt=" ĐỒNG HỒ NAM SKMEI CÓ LỊCH MỎ RỘNG " />

                                        </a>
                                        <div class="actionss">
                                            <div class="btn-cart-products">
                                                <a href="xemgiohang.jsp"
                                                >
                                                    <i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                                </a>
                                            </div>
                                            <div class="view-details">
                                                <a href="<c:url value="/CT_CTSP">
                                                <c:param name="username" value="${ten_dang_nhap}"/>
                                            </c:url>"
                                                   class="view-detail">
                                                    <span><i class="fa fa-clone"> </i></span>
                                                </a>
                                            </div>
                                            <div class="btn-quickview-products">
                                                <a href="javascript:void(0);" class="quickview"
                                                   data-handle="/products/dong-ho-nam-skmei-co-lich-mo-rong"><i
                                                        class="fa fa-eye"></i></a>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="product-detail clearfix">
                                        <!-- sử dụng pull-left -->
                                        <h3 class="pro-name"><a href="<c:url value="/CT_CTSP">
                                            <c:param name="username" value="${ten_dang_nhap}"/>
                                        </c:url>"
                                                title="ĐỒNG HỒ NAM SKMEI CÓ LỊCH MỎ RỘNG">${v.name}</a></h3>
                                        <div class="pro-prices">
                                            <p class="pro-price">${v.compare_price}</p>
                                            <p class="pro-price-del text-left"><del
                                                    class="compare-price">${v.price}</del></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>





                    <div class="row">
                        <div class="col-lg-12 pull-center center ">


                            <a class="btn btn-readmore" href="index.jsp"
                               role="button">Xem thêm</a>


                        </div>
                    </div>
                </div>

                <div class="banner-bottom">
                    <div class="row">

                        <div class="col-xs-12 col-sm-6 home-category-item-2">
                            <div class="block-home-category">
                                <a href="http://happylive.vn/collections/dong-ho-nam">
                                    <img class="b-lazy b-loaded"
                                         src="./theme.hstatic.net/1000177652/1000229231/14/block_home_category1.jpg?v=90"
                                         alt="nam">
                                </a>
                            </div>
                        </div>


                        <div class="col-xs-12 col-sm-6 home-category-item-3">
                            <div class="block-home-category">
                                <a href="http://happylive.vn/collections/dong-ho-nu">
                                    <img class="b-lazy b-loaded"
                                         src="./theme.hstatic.net/1000177652/1000229231/14/block_home_category2.jpg?v=90"
                                         alt="nữ">
                                </a>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
            <div class="container-contact100">
                <div class="contact100-map" id="google_map" data-map-x="40.722047" data-map-y="-73.986422" data-pin="images/icons/map-marker.png" data-scrollwhell="0" data-draggable="1">
                    <img src="../OXYWATCH GIAO DIEN/theme.hstatic.net/1000177652/1000229231/14/map2.jpg" style="height: 500px;width: 550px; margin-top: 200px;">
                </div>

                <div style="position: fixed;margin-left: 1075px;margin-top: 200px;border: 2px solid gray; width: 20px;box-shadow: 4px 4px 4px 2px rgba(250, 3, 3, 0.2);" class="contact100-more">
                    <i class="zmdi zmdi-phone-in-talk"></i>
                    <i class="fa fa-volume-control-phone" aria-hidden="true"></i>
                </div>

                <div class="wrap-contact100">
                    <form class="contact100-form validate-form">
									<span class="contact100-form-title">
										Contact Us
									</span>

                        <div class="wrap-input100 validate-input" data-validate="Name is required">
                            <span class="label-input100">Name</span>
                            <input class="input100" type="text" name="name" placeholder="Name...">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                            <span class="label-input100">Email</span>
                            <input class="input100" type="text" name="email" placeholder="Email addess...">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100">
                            <span class="label-input100">Phone</span>
                            <input class="input100" type="text" name="phone" placeholder="Phone Number...">
                            <span class="focus-input100"></span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate = "Message is required">
                            <span class="label-input100">Message</span>
                            <textarea class="input100" name="message" placeholder="Questions/Comments..."></textarea>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="container-contact100-form-btn">
                            <div class="wrap-contact100-form-btn">
                                <div class="contact100-form-bgbtn"></div>
                                <button class="contact100-form-btn">
                                    Send
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>



            <div id="dropDownSelect1"></div>


            <!-- Global site tag (gtag.js) - Google Analytics -->
            <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
            <script>
                window.dataLayer = window.dataLayer || [];
                function gtag(){dataLayer.push(arguments);}
                gtag('js', new Date());

                gtag('config', 'UA-23581568-13');
            </script>
            <!-- end Content-->
        </div>
    </div>
</section>

<jsp:include page="footer.jsp"/>