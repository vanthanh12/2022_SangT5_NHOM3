<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>

<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
<link href="css/login.css" rel="stylesheet" type="text/css"  media="all"  />
<jsp:include page="header.jsp"/>

<%
    String err = "";
    if (request.getAttribute("err") != null) {
        err = (String) request.getAttribute("err");
    }
%>
<!--/start-login-one-->
<div class="login-01">
    <div class="one-login  hvr-float-shadow">
        <div class="one-login-head">
            <img src="images/top-lock.png" alt="" />
            <h1>Đổi mật khẩu</h1>
            <span></span>
        </div>
        <form action="CT_Forget?username=${user_forget}" method="post">
            <li style="color: red"><%=err%></li>
            <li><input type="text" class="text" value="New Password"
                       onfocus="this.value = '';"
                       onblur="if (this.value == '') {this.value = 'New Password';}"
                       name="newpass"><a href="#" class=" icon user"></a></li>
            <li><input type="text" class="text" value="Confirm Password"
                       onfocus="this.value = '';"
                       onblur="if (this.value == '') {this.value = 'Confirm Password';}"
                       name="confirmpass"><a href="#" class=" icon user"></a></li>
            <div class="p-container">

                <div class="clear"></div>
            </div>
            <div class="submit">
                <input type="submit" value="Đồng ý">
            </div>
            <div><a  href="login.jsp">Đăng nhập ?</a></div>

        </form>
    </div>
</div>
<jsp:include page="footer.jsp"/>

