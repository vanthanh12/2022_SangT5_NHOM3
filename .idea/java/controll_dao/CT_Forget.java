package controll_dao;

import entity.CustomerEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CT_Forget", urlPatterns = "/CT_Forget")
public class CT_Forget extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("username");
        String pass =request.getParameter("newpass");
        String con =request.getParameter("confirmpass");
        if(pass.equals(con)) {
            CustomerEntity cu = new CustomerEntity();

            cu.updatePassword(user, pass);

            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
