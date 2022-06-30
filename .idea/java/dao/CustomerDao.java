package dao;

import bin.Customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CustomerDao {

    public static void addCustomer(Customer rscus) {
        Connection con;
        PreparedStatement ps = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
            String sql = "insert into customers(ten_kh,mat_khau,ngay_sinh,gioi_tinh,email,sdt,dia_chi) values (?,?,?,?,?,?,?)";
            System.out.println(sql);
            ps = con.prepareStatement(sql);
            ps.setString(1, rscus.getTen_kh());
            ps.setString(2, rscus.getPassword());
            ps.setString(3, rscus.getNgay_sinh());
            ps.setString(4, rscus.getGioi_tinh());
            ps.setString(5, rscus.getEmail());
            ps.setString(6, rscus.getSdt());
            ps.setString(7, rscus.getDia_chi());

            ps.executeUpdate();
            con.close();


        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }

    }


}
