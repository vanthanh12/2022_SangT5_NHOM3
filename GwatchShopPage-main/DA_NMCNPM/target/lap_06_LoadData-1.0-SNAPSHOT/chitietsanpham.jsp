<%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 19/01/2021
  Time: 10:22 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="header.jsp"/>

<section id="content" class="clearfix container">
    <div class="row">
        <div id="product" class="content-pages" data-sticky_parent>
            <div class="col-md-3 col-sm-12 col-xs-12  leftsidebar-col" data-sticky_column>
                <div class="group_sidebar">

                    <div  class="list-group navbar-inner ">


                        <div class="mega-left-title btn-navbar title-hidden-sm">
                            <h3 class="sb-title">Danh mục </h3>
                        </div>

                        <ul class="nav navs sidebar menu" id='cssmenu'>




                            <li class="item  first">
                                <a href="dssanpham.html">
                                    <span>Sản phẩm khuyến mãi</span>
                                </a>
                            </li>





                            <li class="item  ">
                                <a href="dssanpham.html">
                                    <span>Sản phẩm nổi bật</span>
                                </a>
                            </li>





                            <li class="item  last">
                                <a href="dssanpham.html">
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
            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12" data-sticky_column>
                <div  id="wrapper-detail" class="product-page">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div id="surround">

                                <div class="product-sale">

							<span>
								<label class="sale-lb">-</label> ${p.sale}
							</span>
                                </div>


                                <a class="slide-prev slide-nav" href="javascript:">
                                    <i class="fa fa-arrow-circle-o-left fa-2"></i>
                                </a>
                                <a class="slide-next slide-nav" href="javascript:">
                                    <i class="fa fa-arrow-circle-o-right fa-2"></i>
                                </a>

                                <img class="product-image-feature" src="${p.img1}" alt="ĐỒNG HỒ NAM TEVISE 1952 CHẠY CƠ CỰC CHẤT">



                                <div id="sliderproduct" class="">
                                    <ul class="slides" >

                                        <li class="product-thumb">
                                        <a href="javascript:"
                                           data-image="${n.img1}"
                                           data-zoom-image="${n.img1}"
                                           src="${n.img1}">
                                            <img alt=""
                                                 data-image="${n.img1}"
                                                 src="${n.img2}">
                                        </a></li>

                                        <li class="product-thumb">
                                            <a href="javascript:"
                                               data-image="${n.img3}"
                                               data-zoom-image="${n.img3}"
                                               src="${n.img3}">
                                                <img alt=""
                                                     data-image="${n.img3}"
                                                     src="${n.img4}">
                                            </a></li>

                                        <li class="product-thumb">
                                            <a href="javascript:"
                                               data-image="${n.img5}"
                                               data-zoom-image="${n.img5}"
                                               src="${n.img5}">
                                                <img alt=""
                                                     data-image="${n.img5}"
                                                     src="${n.img6}">
                                            </a></li>

                                        <li class="product-thumb">
                                            <a href="javascript:"
                                               data-image="${n.img7}"
                                               data-zoom-image="${n.img7}"
                                               src="${n.img7}">
                                                <img alt=""
                                                     data-image="${n.img7}"
                                                     src="${n.img8}">
                                            </a></li>

                                    </ul>
                                </div>



                            </div>

                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="product-title">
                                <h1>${p.name}</h1>

                                <span id="pro_sku"></span>

                            </div>
                            <div class="product-price" id="price-preview">

                                <span>${p.compare_price}₫</span><del>${p.price}₫</del>


                            </div>







                                <div class="row">
                                    <div class="col-lg-6 col-md-12 col-sm-6 col-xs-12">
                                        <a href="<c:url value="/CT_Cart">
                                                            <c:param name="command" value="addCart"/>
                                                            <c:param name="id" value="${p.id}"/>
                                                            </c:url>">
                                            <input style="background-color: darkblue ; color: white ;margin-top: 20px ;padding: 20px" value="Thêm vào giỏ hàng" type="button">
                                        </a>
                                    </div>

                                </div>

                            <div class="pt20">
                                <!-- Begin tags -->

                                <div class="tag-wrapper">
                                    <label>
                                        Tags:
                                    </label>
                                    <ul class="tags">

                                        <li class="active">
                                            <a href="#">phụ kiện nam</a>
                                        </li>

                                        <li class="active">
                                            <a href="#">thời trang nam</a>
                                        </li>

                                        <li class="active">
                                            <a href="#">đồng hồ cơ</a>
                                        </li>

                                        <li class="active">
                                            <a href="#">đồng hồ</a>
                                        </li>

                                        <li class="active">
                                            <a href="#">tevise</a>
                                        </li>

                                    </ul>
                                </div>


                                <!-- End tags -->
                            </div>


                            <div class="pt20">
                                <!-- Begin social icons -->
                                <div class="addthis_toolbox addthis_default_style ">

                                    <div class="info-socials-article clearfix">
                                        <div class="box-like-socials-article">
                                            <div class="fb-send" data-href="/products/dong-ho-nam-tevise-1952-chay-co-cuc-chat">
                                            </div>
                                        </div>
                                        <div class="box-like-socials-article">
                                            <div class="fb-like" data-href="/products/dong-ho-nam-tevise-1952-chay-co-cuc-chat" data-layout="button_count" data-action="like">
                                            </div>
                                        </div>
                                        <div class="box-like-socials-article">
                                            <div class="fb-share-button" data-href="/products/dong-ho-nam-tevise-1952-chay-co-cuc-chat" data-layout="button_count">
                                            </div>
                                        </div>
                                    </div>


                                </div>
                                <!-- End social icons -->
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin-top:20px;">
                            <div role="tabpanel" class="product-comment">
                                <!-- Nav tabs -->
                                <ul class="nav visible-lg visible-md" role="tablist">
                                    <li role="presentation" class="active"><a data-spy="scroll" data-target="#mota" href="#mota" aria-controls="mota" role="tab">Mô tả sản phẩm</a></li>

                                    <li role="presentation">
                                        <a data-spy="scroll" href="#binhluan" aria-controls="binhluan" role="tab">Bình luận</a>
                                    </li>


                                    <li role="presentation">
                                        <a data-spy="scroll" href="#like" aria-controls="like" role="tab">Sản phẩm khác</a>
                                    </li>

                                </ul>
                                <!-- Tab panes -->

                                <div id="mota">

                                    <div class="title-bl visible-xs visible-sm">
                                        <h2>Mô tả</h2>
                                    </div>

                                    <div class="product-description-wrapper">

                                        <table border="0" cellpadding="4" cellspacing="4" style="height: 227px; border-color: #000000; width: 633px; float: left;" class="mce-item-table" data-mce-style="height: 227px; border-color: #000000; width: 633px; float: left;"><tbody>
                                        <tr style="height: 13px;" data-mce-style="height: 13px;">
                                            <td style="width: 318.5px; height: 13px;" data-mce-style="width: 318.5px; height: 13px;">
                                                <strong><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">Tình trạng</span></strong></td><td style="width: 332.5px; height: 13px;" data-mce-style="width: 332.5px; height: 13px;"><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">: ${ctsp.trinh_trang}</span></td></tr>
                                        <tr style="height: 13px;" data-mce-style="height: 13px;">
                                            <td style="width: 318.5px; height: 13px;" data-mce-style="width: 318.5px; height: 13px;">
                                                <strong><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">Nguồn gốc</span></strong></td><td style="width: 332.5px; height: 13px;" data-mce-style="width: 332.5px; height: 13px;"><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">: ${ctsp.noi_sx}</span></td></tr>
                                        <tr style="height: 13px;" data-mce-style="height: 13px;">
                                            <td style="width: 318.5px; height: 13px;" data-mce-style="width: 318.5px; height: 13px;">
                                                <strong><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">Bảo hành</span></strong></td><td style="width: 332.5px; height: 13px;" data-mce-style="width: 332.5px; height: 13px;"><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">: 6 tháng</span></td></tr>
                                        <tr style="height: 13px;" data-mce-style="height: 13px;">
                                            <td style="width: 318.5px; height: 13px;" data-mce-style="width: 318.5px; height: 13px;">
                                                <strong><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">Chất liệu vỏ</span></strong></td><td style="width: 332.5px; height: 13px;" data-mce-style="width: 332.5px; height: 13px;"><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">: ${ctsp.clv}</span></td></tr>
                                        <tr style="height: 13px;" data-mce-style="height: 13px;">
                                            <td style="width: 318.5px; height: 13px;" data-mce-style="width: 318.5px; height: 13px;">
                                                <strong><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">Chất liệu mặt&nbsp;</span></strong></td><td style="width: 332.5px; height: 13px;" data-mce-style="width: 332.5px; height: 13px;"><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">: ${ctsp.clm}</span></td></tr>
                                        <tr style="height: 13px;" data-mce-style="height: 13px;">
                                            <td style="width: 318.5px; height: 13px;" data-mce-style="width: 318.5px; height: 13px;">
                                                <strong><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">Năng lượng sử dụng</span></strong></td><td style="width: 332.5px; height: 13px;" data-mce-style="width: 332.5px; height: 13px;"><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">: ${ctsp.nang_luong}</span></td></tr>
                                        <tr style="height: 13px;" data-mce-style="height: 13px;">
                                            <td style="width: 318.5px; height: 13px;" data-mce-style="width: 318.5px; height: 13px;">
                                                <strong><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">Chống nước</span></strong></td><td style="width: 332.5px; height: 13px;" data-mce-style="width: 332.5px; height: 13px;"><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">: ${ctsp.chong_nuoc}</span></td></tr>
                                        <tr style="height: 13px;" data-mce-style="height: 13px;">
                                            <td style="width: 318.5px; height: 13px;" data-mce-style="width: 318.5px; height: 13px;">
                                                <strong><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">Kích thước mặt đồng hồ</span></strong></td><td style="width: 332.5px; height: 13px;" data-mce-style="width: 332.5px; height: 13px;"><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">: ${ctsp.ktm}</span></td></tr>
                                        <tr style="height: 13px;" data-mce-style="height: 13px;">
                                            <td style="width: 318.5px; height: 13px;" data-mce-style="width: 318.5px; height: 13px;">
                                                <strong><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">Kích thước dây đồng hồ</span></strong></td><td style="width: 332.5px; height: 13px;" data-mce-style="width: 332.5px; height: 13px;"><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">: ${ctsp.ktd}</span></td></tr>
                                        <tr style="height: 13px;" data-mce-style="height: 13px;">
                                            <td style="width: 318.5px; height: 13px;" data-mce-style="width: 318.5px; height: 13px;">
                                                <strong><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">Cho hàng kiểm tra trước khi nhận</span></strong></td><td style="width: 332.5px; height: 13px;" data-mce-style="width: 332.5px; height: 13px;"><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">: Ship toàn quốc nhận hàng thu tiền</span></td></tr>
                                        <tr style="height: 13px;" data-mce-style="height: 13px;">
                                            <td style="width: 318.5px; height: 13px;" data-mce-style="width: 318.5px; height: 13px;">
                                                <strong><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">Tư vấn và đặt hàng</span></strong></td><td style="width: 332.5px; height: 13px;" data-mce-style="width: 332.5px; height: 13px;"><span style="font-size: 15pt;" data-mce-style="font-size: 15pt;">: <span style="color: #ff0000;" data-mce-style="color: #ff0000;"> 0978.828.888</span></span></td></tr>
                                        </tbody></table>

                                    </div>
                                </div>

                                <div id="binhluan">
                                    <div class="title-bl">
                                        <h2>Bình luận</h2>
                                        <label  style="background-color: #e6e6e6;padding-bottom: 30px ;border: 2px solid rgb(207, 206, 206);margin-bottom: 20px;width: 100%">
                                            <p># Đời</p>
                                            <h6></h6>
                                        </label >
                                        <form action="CT_Binh_Luan">
                                            <input  style="display: none" name="id" value="${p.id}">
                                            <input style="display: none" name="username" value=" ${ten_dang_nhap}">
                                            <label  style="border: 2px solid rgb(207, 206, 206);" ><textarea name="a1"  cols="60" rows="5"></textarea></label>

                                            <input style="margin-right: 600px;padding: 10px;padding-left: 15px;padding-right: 15px" type="submit"  value="Gửi">

                                        </form>

                                    </div>
                                    <div class="product-comment-fb">

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 col-sm-12 col-xs-12  list-like">
                    <div id="like">
                        <div class="title-like">
                            <h2>Sản phẩm khác</h2>
                        </div>
                        <div class="row product-list ">
                            <div class="content-product-list">
                                <c:forEach items="${list}" var="p">
                                <div class="col-md-3 col-sm-6 col-xs-12 pro-loop">

                                    <div class="product-block product-resize">
                                        <div class="product-img image-resize view view-third">

                                            <div class="product-sale" >
                                                <span><label class="sale-lb">- </label> ${p.sale}</span>
                                            </div>



                                            <a  href="CT_CTSP?masp=${p.id}" title="ĐỒNG HỒ NAM SKMEI KIM XANH DƯƠNG">
                                                <img class="first-image  has-img" alt=" ĐỒNG HỒ NAM SKMEI KIM XANH DƯƠNG " src="${p.img1}"  />

                                                <img  class ="second-image" src="${p.img2}"  alt=" ĐỒNG HỒ NAM SKMEI KIM XANH DƯƠNG " />

                                            </a>
                                            <div class="actionss">
                                                <div class="btn-cart-products">
                                                    <a href="javascript:void(0);" onclick="add_item_show_modalCart(1012030836)">
                                                        <i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                                    </a>
                                                </div>
                                                <div class="view-details">
                                                    <a href="CT_CTSP?masp=${p.id}" class="view-detail" >
                                                        <span><i class="fa fa-clone"> </i></span>
                                                    </a>
                                                </div>
                                                <div class="btn-quickview-products">
                                                    <a href="javascript:void(0);" class="quickview" data-handle="/products/dong-ho-nam-skmei-kim-xanh-duong"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="product-detail clearfix">


                                            <!-- sử dụng pull-left -->
                                            <h3 class="pro-name"><a href="CT_CTSP?masp=${p.id}" title="ĐỒNG HỒ NAM SKMEI KIM XANH DƯƠNG">${p.name} </a></h3>
                                            <div class="pro-prices">
                                                <p class="pro-price">${p.compare_price}VND</p>
                                                <p class="pro-price-del text-left"><del class="compare-price">${p.price}</del></p>


                                            </div>


                                        </div>
                                    </div>

                                </div>
                                </c:forEach>
                            </div>
                        </div>



                        <script>
                            var add_to_wishlist = function(){
                                if(typeof(Storage) !== "undefined")
                                {
                                    if (localStorage.recently_viewed)
                                    {

                                        if(localStorage.recently_viewed.indexOf('1st-birthday-princess-basic-party-kit-18-guests') == -1)
                                            localStorage.recently_viewed = '1st-birthday-princess-basic-party-kit-18-guests_'+localStorage.recently_viewed ;

                                    } else
                                        localStorage.recently_viewed = '1st-birthday-princess-basic-party-kit-18-guests';
                                }
                                else {
                                    console.log('Your Browser does not support storage!');
                                }
                            }
                        </script>
                    </div>
                </div>

            </div>
        </div>



        <script>
            $(".product-thumb img").click(function(){
                $(".product-thumb").removeClass('active');
                $(this).parents('li').addClass('active');
                $(".product-image-feature").attr("src",$(this).attr("data-image"));
                $(".product-image-feature").attr("data-zoom-image",$(this).attr("data-zoom-image"));
            });

            $(".product-thumb").first().addClass('active');

        </script>
        <script>
            $(document).ready(function(){
                $('#add-to-cart').click(function(e){
                    e.preventDefault();
                    $(this).addClass('clicked_buy');
                    add_item_show_modalCart($('#product-select').val());
                });
                $('#buy-now').click(function(e){
                    e.preventDefault();
                    $.ajax({
                        type: 'POST',
                        async: false,
                        url:'/cart/add.js',
                        async:false,
                        data: $('form#add-item-form').serialize(),
                        success:function(line){
                            window.location = "phuongthucthanhtoan.html";
                        },
                        error: function(jqXHR, textStatus, errorThrown) {

                        }
                    });
                });
            });
        </script>

        <script>
            $(document).ready(function(){
                $('a[data-spy=scroll]').click(function(){
                    event.preventDefault() ;
                    $('body').animate({scrollTop: ($($(this).attr('href')).offset().top - 20) + 'px'}, 500);
                })
            });

            /**
             function deleteCart(variant_id){
	var params = {
		type: 'POST',
		url: '/cart/change.js',
		data: 'quantity=0&id=' + variant_id,
		dataType: 'json',
		success: function(cart) {
			if ((typeof callback) === 'function') {
				callback(cart);
			} else {

				getCartAjax();
			}
		},
		error: function(XMLHttpRequest, textStatus) {
			Haravan.onError(XMLHttpRequest, textStatus);
		}
	};
	jQuery.ajax(params);
}
             **/
// The following piece of code can be ignored.
            $(function(){
                $(window).resize(function() {
                    $('#info').text("Page width: "+$(this).width());
                });
                $(window).trigger('resize');
            });


            var selectCallback = function(variant, selector) {
                if (variant && variant.available) {
                    if(variant.featured_image != null)
                    {
                        $(".product-thumb").removeClass('active');
                        $(".product-thumb img[data-image='"+Haravan.resizeImage(variant.featured_image.src,'master')+"']").click().parents('li').addClass('active');
                    }
                    if (variant.sku != null ){
                        jQuery('#pro_sku').html('SKU: ' +variant.sku);
                    }
                    jQuery('#add-to-cart').removeAttr('disabled').removeClass('disabled').html("Thêm vào giỏ");;
                    jQuery('#buy-now').removeAttr('disabled').removeClass('disabled').html("Mua ngay").show();

                    if(variant.price < variant.compare_at_price){
                        jQuery('#price-preview').html("<span>" + Haravan.formatMoney(variant.price, "{{amount}}₫") + "</span><del>" + Haravan.formatMoney(variant.compare_at_price, "{{amount}}₫") + "</del>");
                        var pro_sold = variant.price ;
                        var pro_comp = variant.compare_at_price / 100;
                        var sale = 100 - (pro_sold / pro_comp) ;
                        var kq_sale = Math.round(sale);
                        jQuery('#surround .product-sale span').html("<label class='sale-lb'>- </label> "+kq_sale + '%');
                    } else {
                        jQuery('#price-preview').html("<span>" + Haravan.formatMoney(variant.price, "{{amount}}₫" + "</span>"));
                    }

                } else {
                    jQuery('#add-to-cart').addClass('disabled').attr('disabled', 'disabled').html("Hết hàng");
                    jQuery('#buy-now').addClass('disabled').attr('disabled', 'disabled').html("Hết hàng").hide();
                    var message = variant ? "Hết hàng" : "Không có hàng";
                    jQuery('#price-preview').html("<span>"+message+ "</span>");
                }
            };

            jQuery(document).ready(function($){



            });
        </script>


        <script>
            $(document).ready(function(){
                if($(".slides .product-thumb").length>4){
                    $('#sliderproduct').flexslider({
                        animation: "slide",
                        controlNav: false,
                        animationLoop: false,
                        slideshow: false,
                        itemWidth:95,
                        itemMargin: 10,
                    });
                }
                if($(window).width() > 960){
                    jQuery(".product-image-feature").elevateZoom({
                        gallery:'sliderproduct',
                        scrollZoom : true
                    });
                } else {

                }
                jQuery('.slide-next').click(function(){
                    if($(".product-thumb.active").prev().length>0){
                        $(".product-thumb.active").prev().find('img').click();
                    }
                    else{
                        $(".product-thumb:last img").click();
                    }
                });
                jQuery('.slide-prev').click(function(){
                    if($(".product-thumb.active").next().length>0){
                        $(".product-thumb.active").next().find('img').click();
                    }
                    else{
                        $(".product-thumb:first img").click();
                    }
                });
            });
        </script>

    </div>
</section>
<jsp:include page="footer.jsp"/>