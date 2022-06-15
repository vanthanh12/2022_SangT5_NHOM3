
<%@ page import="java.util.Collection" %>
<%@ page import="bin.Product" %><%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 15/12/2020
  Time: 7:54 CH
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
                    <li><a href="index.jsp" target="_self">Trang chủ</a></li>


                    <li class="active"><span>Giỏ hàng</span></li>

                </ol>
            </div>
        </div>
    </div>

</div>
<section id="content" class="clearfix container">
    <div class="row">
        <div id="cart" class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <!-- Begin empty cart -->

            <div class="row" >
                <div id="layout-page" class="col-md-12 col-sm-12 col-xs-12">
			<span class="header-page clearfix">
				<h1>Giỏ hàng</h1>
			</span>
                    <form action="/cart" method="post" id="cartformpage">
                        <table>
                            <thead>
                            <tr>
                                <th class="image">&nbsp;Hình ảnh</th>
                                <th class="item">Tên sản phẩm</th>
                                <th class="qty">Số lượng</th>
                                <th class="price">Giá tiền</th>
                                <th class="remove">&nbsp;</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${pp}" var="p">


                                <tr>
                                    <td class="image">
                                        <div class="product_image">
                                            <a href="CT_CTSP?masp=${p.id}">
                                                <img src="${p.img1} " alt="ĐỒNG HỒ NAM SKMEI KIM XANH DƯƠNG" />

                                            </a>
                                        </div>
                                    </td>
                                    <td class="item">
                                        <a href="CT_CTSP?masp=${p.id}">
                                            <strong>${p.name}</strong>

                                        </a>
                                    </td>
                                    <td  class="qty">
                                        <a href="<c:url value="/CT_Cart">
                                            <c:param name="command" value="resetCart"/>
                                            <c:param name="id" value="${p.id}"/>
                                            <c:param name="tino" value="${p.quantity-1}"/>
                                        </c:url>">
                                            -
                                        </a>
                                        <input type="number" size="4" name="tino" min="1" id="updates_1012030836"  value="${p.quantity}" onfocus="this.select();" class="tc item-quantity" />
                                        <a href="<c:url value="/CT_Cart">
                                            <c:param name="command" value="resetCart"/>
                                            <c:param name="id" value="${p.id}"/>
                                            <c:param name="tino" value="${p.quantity+1}"/>
                                        </c:url>">
                                            +
                                        </a>
                                    </td>
                                    <td class="price">${p.compare_price} VND</td>
                                    <td class="remove">
                                        <a href="<c:url value="/CT_Cart">
                                            <c:param name="command" value="deleteCart"/>
                                            <c:param name="id" value="${p.id}"/>
                                        </c:url>">
                                            Xóa
                                        </a>
                                    </td>

                                </tr>
                            </c:forEach>
                            <td class="image">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="text-center"><b>Tổng cộng:</b></td>
                            <td class="price">
								<span class="total">
									<strong>${sum} VND</strong>
								</span>
                            </td>
                            <td>&nbsp;</td>

                            </tbody>
                        </table>
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-12 inner-left inner-right">
                                <div class="checkout-buttons clearfix">
                                    <label for="note">Ghi chú </label>
                                    <textarea id="note" name="note" rows="8" cols="50"></textarea>
                                </div>
                            </div>

                            <div class="col-md-6 col-sm-6 col-xs-12 cart-buttons inner-right inner-left">

                                <div class="buttons clearfix">

                                    <a id="checkout" class="button-default" name="checkout"  href="<c:url value="/CT_Cart">
                                            <c:param name="command" value="thanhtoan"/>
                                            <c:param name="id" value="${p.id}"/>
                                            <c:param name="username" value="${ten_dang_nhap}"/>
                                        </c:url>" >
                                        Thanh toán
                                    </a>
                                </div></a>
                            </div>
                        </div>

                        <div class="col-md-12 col-sm-12  col-xs-12 continue-shop">

                            <a  href="CT_index">
                                <i class="fa fa-reply"></i> Tiếp tục mua hàng</a>
                        </div>
                </form>
            </div>
        </div>



        <!-- End cart -->

    </div>


    </div>
</section>
<jsp:include page="footer.jsp"/>
