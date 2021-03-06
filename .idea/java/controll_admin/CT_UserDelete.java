package controll_admin;

import entity.UserEntity;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CT_UserDelete", urlPatterns = "/CT_UserDelete")
public class CT_UserDelete extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            String idDelete = request.getParameter("id");
            if(idDelete!=null) {
                int id = Integer.parseInt(idDelete);
                UserEntity.deleteUser(id);

                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CT_User");
                dispatcher.forward(request, response);

            }else {
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CT_IndexAdmin");
                dispatcher.forward(request,response);
            }
        }finally {
            out.close();
        }
    }
}
