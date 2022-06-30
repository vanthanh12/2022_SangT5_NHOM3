package controll_dao;

import bin.Customer;
import dao.CustomerDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/CT_register")
public class CT_register extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

//            PrintWriter out = response.getWriter();



            String user = request.getParameter("username");
            String pass = request.getParameter("password");
            String birthday = request.getParameter("ngaysinh");
            String sex = request.getParameter("gioitinh");
            String email = request.getParameter("email");
            String sdt = request.getParameter("sdt");
            String address = request.getParameter("diachi");

            String user_err = "", pass_err = "", email_err = "";
            if (user_err.equals("")) {
                user_err = "Vui lòng nhập tên của bạn !";
            }
            if (user_err.length() > 0) {
                request.setAttribute("user_err", user_err);
            }
            if (email_err.equals("")) {
                email_err = "Vui lòng nhập email đăng ký !";
            }
            if (email_err.length() > 0) {
                request.setAttribute("email_err", email_err);
            }
            if (pass_err.equals("")) {
                pass_err = "Vui lòng nhập mật khẩu !";
            }
            if (pass_err.length() > 0) {
                request.setAttribute("pass_err", pass_err);
            }

            Customer cus = new Customer(  user,  pass,  birthday,  sex,  email,  sdt,  address);

            if (!user_err.equals("") && !pass_err.equals("")) {

                CustomerDao.addCustomer(cus);
                HttpSession session = request.getSession();
                session.setAttribute("user", cus);
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CT_Login");
                dispatcher.forward(request,response);
            } else {

                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/register.html");
                dispatcher.forward(request,response);
            }


    }
}
