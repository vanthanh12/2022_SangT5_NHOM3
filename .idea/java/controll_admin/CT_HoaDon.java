package controll_admin;

import bin.HoaDon;
import entity.HoaDonEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CT_HoaDon", urlPatterns = "/CT_HoaDon")
public class CT_HoaDon extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        try{
            String count_page = request.getParameter("count_page");
            HoaDonEntity hd = new HoaDonEntity();
            int n =0;
            if (count_page != null) n =Integer.parseInt(count_page);
            if (count_page == null) n =1;
            int size = 2;
            int index = size *(n-1) ;
            int count = hd.count();
            int endpage =0;
            endpage= count /size;
            if(count%size != 0){
                endpage++;
            }

            List<HoaDon> value = hd.phanTrang(index , size);

            request.setAttribute("list",value);
            request.setAttribute("endPage",endpage);
            request.getRequestDispatcher("admin/hoadon.jsp").forward(request,response);
        }catch (Exception e){

        }
    }
}
