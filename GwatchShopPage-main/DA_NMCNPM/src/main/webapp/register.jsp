<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="css/login.css" rel="stylesheet" type="text/css"  media="all"  />
<jsp:include page="header.jsp"/>

<%
    String user_err = "", email_err ="", pass_err ="";
    if (request.getAttribute("user_err") != null) {
        user_err = (String) request.getAttribute("user_err");
    }
    if (request.getAttribute("email_err") != null) {
        email_err = (String) request.getAttribute("email_err");
    }
    if (request.getAttribute("pass_err") != null) {
        pass_err = (String) request.getAttribute("pass_err");
    }
%>
<!--/start-login-two-->
<div class="login-02">
    <div class="two-login  hvr-float-shadow">
        <div class="two-login-head">
            <img src="images/top-note.png" alt="" />
            <h2>Đăng ký</h2>
            <lable></lable>
        </div>
        <form action="CT_register" method="post">
            <li style="color: red"><%=user_err%></li>
            Tên người dùng
            <li><input type="text" class="text" value=""
                       name="username"><a href="#" class=" icon2 user2"></a></li>
            <li style="color: red"><%=pass_err%></li>
            Mật khẩu
            <li><input type="password" value=""
                       name="password"><a href="#" class=" icon2 lock2"></a></li>
            Ngày sinh
            <li><input type="date" value=""
                       name="ngaysinh"><a href="#" class=" icon2 lock2"></a></li>
            Giới tính
            <li><input type="text" value="" list="exampleList"
                       name="gioitinh">
                <datalist id="exampleList">
                    <option value="Nam">
                    <option value="Nữ">
                </datalist><a href="#" class=" icon2 lock2"></a></li>
            <li style="color: red"><%=email_err%></li>
            Email
            <li><input type="text" value=""
                       name="email"><a href="#" class=" icon2 lock2"></a></li>
            Số điện thoại
            <li><input type="text" value=""
                       name="sdt"><a href="#" class=" icon2 lock2"></a></li>
            Địa chỉ
            <li><input type="text" value=""
                       name="diachi"><a href="#" class=" icon2 lock2"></a></li>

            <div class="p-container">
                <label class="checkbox two"><input type="checkbox"
                                                   name="checkbox" checked><i></i>Tôi đồng ý <a href="#">Điều khoản dịch vụ</a></label>
            </div>
            <div class="submit two">
                <input type="submit" value="ĐĂNG KÝ">
            </div>
            <h5>
                <a href="login.jsp">Đăng nhập</a>
            </h5>
        </form>
    </div>
</div>
<jsp:include page="footer.jsp"/>