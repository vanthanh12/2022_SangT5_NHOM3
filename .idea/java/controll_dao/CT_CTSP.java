package controll_dao;

import bin.CTSP;
import bin.Image;
import bin.Product;
import entity.CTSP_Entity;
import entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "CT_CTSP", urlPatterns = "/CT_CTSP")
public class CT_CTSP extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("masp");
        String tdn = request.getParameter("username");
        Collection<Product> values = new ProductEntity().getSaleTop(25);

        System.out.println();
        if(id!=null){

            ProductEntity pe = new ProductEntity();
            Product product = pe.getById(id);
            System.out.println(product.getName());
            int ma = Integer.parseInt(id);
            CTSP_Entity ctsp = new CTSP_Entity();
            CTSP c = ctsp.getCTSP(ma);


            CTSP_Entity dao = new CTSP_Entity();
            Image value = dao.getImage(ma);
            request.setAttribute("n", value);

            request.setAttribute("username", id);
            request.setAttribute("ctsp", c);
            request.setAttribute("list", values);
            request.setAttribute("p", product);
            request.getRequestDispatcher("chitietsanpham.jsp").forward(request,response);

        }
    }
}
