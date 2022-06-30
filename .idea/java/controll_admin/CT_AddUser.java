package controll_admin;

import bin.User;
import entity.UserEntity;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CT_AddUser", urlPatterns = "/CT_AddUser")
public class CT_AddUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String id = request.getParameter("id");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String groupid = request.getParameter("groupid");
            String permission = request.getParameter("permission");


            User user = new User();
            if( username!=null || password !=null || groupid !=null || permission !=null ) {
                user.setId(Integer.parseInt(request.getParameter("id")));
                user.setUsername(request.getParameter("username"));
                user.setPassword(request.getParameter("password"));
                user.setGroupId(Integer.parseInt(request.getParameter("groupid")));
                user.setPermission(Integer.parseInt(request.getParameter("permission")));


                UserEntity.addone(user);
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CT_User");
                dispatcher.forward(request,response);
            }else {
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/user_add.jsp");
                dispatcher.forward(request,response);
            }
        }finally {
            out.close();
        }
    }
}
