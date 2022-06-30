package controll_admin;

import bin.HienThiCTHD;
import entity.CTHDEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CT_CTHD", urlPatterns = "/CT_CTHD")
public class CT_CTHD extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        try{
            String s = request.getParameter("count");
            if(s!=null){
                int mahd = Integer.parseInt(s);
                CTHDEntity c  = new CTHDEntity();
                List<HienThiCTHD> value = c.getAll(mahd);

                request.setAttribute("hd",mahd);
                request.setAttribute("list",value);
                request.getRequestDispatcher("admin/chitiethoadon.jsp").forward(request,response);
            }else
            request.getRequestDispatcher("admin/hoadon.jsp").forward(request,response);
        }catch (Exception e){

        }
    }
}
