package controll_admin;

import bin.Product;
import entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "CT_SeachProductAdmin", urlPatterns = "/CT_SeachProductAdmin")
public class CT_SeachProductAdmin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        String name = request.getParameter("productSearch");

        Collection<Product> values = new ProductEntity().getSearchAll(name);
        if(values.size()==0){
            name ="";
            values = new ProductEntity().getSearchAll(name);
        }
        request.setAttribute("list",values);
        request.getRequestDispatcher("admin/products.jsp").forward(request,response);
    }
}
