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
import java.util.List;

@WebServlet(urlPatterns = "/CT_index")
public class CT_index extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");



        ProductEntity dao = new ProductEntity();
        String indexs = request.getParameter("index");
        int index =0 ;
        if(indexs ==null){ index =12;}
        if(indexs !=null){ index =Integer.parseInt(indexs);}

        List<Product> list = dao.getAll(index);

//        ProductNew dao1 = new ProductNew();
     //   List<Product> value = dao1.getProductNew();
        Collection<Product> values = new ProductEntity().getProductSaleA();

        request.setAttribute("listsale", values);

        request.setAttribute("List", list);
        request.setAttribute("index", index);
    //    request.setAttribute("ProductNew", value);
        request.getRequestDispatcher("index.html").forward(request,response);
    }
}
