package controll_admin;

import bin.BinhLuan;
import entity.BinhLuanEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CT_LienHe", urlPatterns = "/CT_LienHe")
public class CT_LienHe extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BinhLuanEntity bl= new BinhLuanEntity();
        List<BinhLuan> value = bl.getAll();
        request.setAttribute("list",value);
        request.getRequestDispatcher("admin/lienhe.jsp").forward(request,response);
    }
}
