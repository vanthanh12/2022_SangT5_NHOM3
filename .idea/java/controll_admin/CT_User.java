package controll_admin;

import bin.User;
import entity.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CT_User", urlPatterns = "/CT_User")
public class CT_User extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        try{
            String count_page = request.getParameter("count_page");
            UserEntity user = new UserEntity();
            int n =0;
            if (count_page != null) n =Integer.parseInt(count_page);
            if (count_page == null) n =1;
            int size = 2;
            int index = size *(n-1) ;
            int count = user.count();
            int endpage =0;
            endpage= count /size;
            if(count%size != 0){
                endpage++;
            }

            List<User> value = user.phanTrang(index , size);
            //test xem có lấy đúng số lượng sản phẩm
            for (User p : value) {
                System.out.println(p);
            }
            request.setAttribute("list",value);
            request.setAttribute("endPage",endpage);
            request.getRequestDispatcher("admin/user.jsp").forward(request,response);
        }catch (Exception e){

        }
//        Collection<User> values = new UserEntity().getAll();
//        request.setAttribute("list",values);
//        request.getRequestDispatcher("admin/user.jsp").forward(request,response);
    }
}
