package controll_dao;

import entity.BinhLuanEntity;
import entity.CustomerEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CT_Binh_Luan", urlPatterns = "/CT_Binh_Luan")
public class CT_Binh_Luan extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        String a1=request.getParameter("a1");
        String tdn=request.getParameter("username");
        String email="";
        String[] ar = tdn.split("");
        for(int i=0;i<ar.length;i++){
            email +=ar[i];
        }
        CustomerEntity cu = new CustomerEntity();

        System.out.println(email);
         int ma_kh =cu.getByEmail1(email.trim());
        tdn.replaceAll(""+"" ,"");
        System.out.println(id+"jjjjj"+tdn +a1);
        if(tdn !=null && tdn!="+"&& tdn.length()>=3 ) {
            BinhLuanEntity bl = new BinhLuanEntity();


            int ma_sp =Integer.parseInt(id);
            int mabl = bl.count();
            bl.addone(mabl,ma_kh,ma_sp,a1);
            request.getRequestDispatcher("chitietsanpham.jsp").forward(request, response);
        }else{
            response.sendRedirect("login.html");
        }
    }
}
