package controll_dao;

import entity.CustomerEntity;
import entity.UserEntity;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CT_Login", urlPatterns = "/CT_Login")
public class CT_Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();


        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");


            boolean check1 = CustomerEntity.checkLogin(username,password);
            boolean check2 = UserEntity.checkLogin(username,password);
            System.out.println(check1 +" "+ check2 + username + " " + password);
            if(check1){
                HttpSession session =request.getSession();
                session.setAttribute("ten_dang_nhap" , username);
                //session.setAttribute("ten dang nhap" , username);
                session.setAttribute("dn", "Đăng xuất");
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CT_index");
                dispatcher.forward(request,response);
            }
            if(check2) {
                HttpSession session =request.getSession();
                session.setAttribute("ten_dang_nhap", username);
                session.setAttribute("dn", "Đăng xuất");
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CT_IndexAdmin");
                dispatcher.forward(request, response);
                 }
            if(!check1 && !check2){
                HttpSession session =request.getSession();
                session.setAttribute("ten_dang_nhap", username);
                session.setAttribute("dn", "Đăng nhập");
                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login.html");
                    dispatcher.forward(request,response);
                    }

        }finally {
            out.close();
        }
    }
}
