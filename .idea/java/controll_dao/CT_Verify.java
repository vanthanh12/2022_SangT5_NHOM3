package controll_dao;

import bin.ChangePass;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/CT_Verify")
public class CT_Verify extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        ChangePass changePass = (ChangePass) session.getAttribute("authcode");
        String code = request.getParameter("authcode");

        if(code.equals(changePass.getCode())){
            request.getRequestDispatcher("forgetpassword.jsp").forward(request,response);
        }else{
            System.out.println("Incorretc");
            request.getRequestDispatcher("verify.jsp").forward(request,response);
        }
    }
}
