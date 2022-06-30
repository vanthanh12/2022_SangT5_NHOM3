package controll_admin;

import bin.Product;
import entity.ProductEntity;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CT_AddProduct", urlPatterns = "/CT_AddProduct")
public class CT_AddProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String id = request.getParameter("id");
            String ma_loai = request.getParameter("ma_loai");
            String name = request.getParameter("name");
            String img1 =request.getParameter("img1");
            String img2 =request.getParameter("img2");
            String sale = request.getParameter("sale");
            String price = request.getParameter("price");
          //  String pricesale = request.getParameter("pricesale");
            String brand = request.getParameter("brand");


            Product pro = new Product();

            if(id!=null ||ma_loai!=null|| name!=null || img1 !=null ||img2 !=null || sale !=null || price !=null || brand!=null) {
                pro.setId(Integer.parseInt(id));
                pro.setMa_loaisp(ma_loai);
                pro.setName(name);
                pro.setImg1(img1);
                pro.setImg2(img2);
                pro.setBrand(brand);
                pro.setPrice(Long.parseLong(price));
                long a = (long) ( Long.parseLong(price)-Long.parseLong(price)*(Integer.parseInt(sale)*0.01));
                pro.setCompare_price(a);
                pro.setSale(sale);
                pro.setQuantity(1);

                ProductEntity.addone(pro);
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CT_Product");
                dispatcher.forward(request,response);
            }else {
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/product_add.jsp");
                dispatcher.forward(request,response);
            }
        }finally {
            out.close();
        }



    }
}
