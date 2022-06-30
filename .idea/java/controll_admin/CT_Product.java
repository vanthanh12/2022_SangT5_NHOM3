package controll_admin;

import bin.Product;
import entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CT_Product", urlPatterns = "/CT_Product")
public class CT_Product extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Collection<Product> values = new ProductEntity().getAll();
//        request.setAttribute("list",values);
//        request.getRequestDispatcher("admin/products.jsp").forward(request,response);
        response.setContentType("text/html; charset=UTF-8");
        try{
            String count_page = request.getParameter("count_page");
            ProductEntity pr = new ProductEntity();
            int n =0;
            if (count_page != null) n =Integer.parseInt(count_page);
            if (count_page == null) n =1;
            int size = 4;
            int index = size *(n-1) ;
            int count = pr.count();
            int endpage =0;
            endpage= count /size;
            if(count%size != 0){
                endpage++;
            }
            List<Product> value = pr.phanTrang(index , size);
   //         test xem có lấy đúng số lượng sản phẩm
            for (Product p : value){
                System.out.println(p);
            }
            request.setAttribute("list",value);
            request.setAttribute("endPage",endpage);
            request.getRequestDispatcher("admin/products.jsp").forward(request,response);
        }catch (Exception e){

        }
    }
}
