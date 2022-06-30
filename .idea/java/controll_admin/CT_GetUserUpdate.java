package controll_admin;

import bin.User;
import entity.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CT_GetUserUpdate", urlPatterns = "/CT_GetUserUpdate")
public class CT_GetUserUpdate extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        String id = request.getParameter("id");
        if(id!=null) {
            int a = Integer.parseInt(id);
            UserEntity dao = new UserEntity();
            User value = dao.getUserUpdate(a);
            request.setAttribute("user", value);
            request.getRequestDispatcher("admin/user_update.jsp").forward(request, response);

        }
    }
}
