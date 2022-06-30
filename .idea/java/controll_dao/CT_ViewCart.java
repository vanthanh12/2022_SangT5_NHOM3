package controll_dao;

//import sun.security.pkcs11.wrapper.Functions;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "CT_ViewCart", urlPatterns = "/CT_ViewCart")
public class CT_ViewCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String dn =request.getParameter("dn");
        if(dn==null){
            request.setAttribute("dn", "Đăng nhập");
        }
            String username =request.getParameter("username");
             System.out.println(username);
            HttpSession session = request.getSession();
            session.setAttribute("ten_dang_nhap", username);
            request.getRequestDispatcher("cart.jsp").forward(request,response);
    }
}
