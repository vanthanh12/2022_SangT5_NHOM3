package controll_admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CT_IndexAdmin", urlPatterns = "/CT_IndexAdmin")
public class CT_IndexAdmin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Collection<Product> values = new ProductEntity().getAll();
//        request.setAttribute("list",values);
        response.setContentType("text/html; charset=UTF-8");
        request.getRequestDispatcher("admin/indexadmin.jsp").forward(request,response);

    }
}
