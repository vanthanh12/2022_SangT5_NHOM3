package controll_dao;

import bin.Product;
import entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "CT_Product_Sale", urlPatterns = "/CT_Product_Sale")
public class CT_Product_Sale extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Collection<Product> values = new ProductEntity().getProductSale();
        request.setAttribute("list", values);
        request.getRequestDispatcher("products.jsp").forward(request, response);
    }
}
