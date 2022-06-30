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

@WebServlet(name = "CT_Search", urlPatterns = "/CT_Search")
public class CT_Search extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        String name = request.getParameter("productSearch");

        String count_page = request.getParameter("count_page");
        //   String count_after = request.getParameter("count_after");
        ProductEntity pr = new ProductEntity();
        int n =0;
        if (count_page != null) n =Integer.parseInt(count_page);
        if (count_page == null) n =1;
//            if(count_after!=null) n= Integer.parseInt(count_after);
        int size = 12;
        int index = size *(n-1) ;
        int count = pr.countS(name);
        int endpage =0;
        endpage= count /size;
        if(count%size != 0){
            endpage++;
        }

        Collection<Product> values = new ProductEntity().getSearchAllPT(name,index,size);
        if(values.size()==0){
            name ="";
            values = new ProductEntity().getSearchAllPT(name,index,size);
        }
        request.setAttribute("name" , name);
        request.setAttribute("endPage",endpage);
        request.setAttribute("list",values);
        request.getRequestDispatcher("productSeach.html").forward(request,response);
    }
}
