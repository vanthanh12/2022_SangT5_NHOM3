package controll_admin;

import bin.Product;
import entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CT_GetProductUpdate", urlPatterns = "/CT_GetProductUpdate")
public class CT_GetProductUpdate extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        String id = request.getParameter("id");
        if(id!=null) {
            int a = Integer.parseInt(id);
            ProductEntity dao = new ProductEntity();
            Product value = dao.getProductUpdate(a);
            request.setAttribute("detail", value);
            request.getRequestDispatcher("admin/product_update.jsp").forward(request, response);

        }
    }
}
