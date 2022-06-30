package entity;

import bin.Customer;
import database.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

public class CustomerEntity {

    public List<Customer> getAll() {
        List<Customer> re;
        Statement st = null;
        try {
            st = ConnectionDB.connect();
            ResultSet rs = st.executeQuery("select * from customers");
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new Customer(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)

                ));
            }
            rs.close();
            st.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();

        }

    }
    //Lấy 1 khách hàng bởi email
    public Customer getByEmail(String email) {
        Customer c = null;
        PreparedStatement pre = null;
        try {
            pre = ConnectionDB.connect("select * from customers where email = ?");
            pre.setString(1,email);
            ResultSet rs = pre.executeQuery();
            
            while (rs.next()) {
                c = new Customer(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)

                );
            }
            rs.close();
            pre.close();
            return c;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new Customer();

        }

    }
    //Lấy 1 khách hàng bởi email
    public int getByEmail1(String email) {
        int a = 0;
        PreparedStatement pre = null;
        try {
            pre = ConnectionDB.connect("select * from customers where email = ?");
            pre.setString(1, email);
            ResultSet rs = pre.executeQuery();

            while (rs.next()) {
                a = rs.getByte(1);
            }
            rs.close();
            pre.close();

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();


        }
        return a;

    }
    //update password cho khách hàng
    public static int updatePassword(String username ,String passNew) {
        PreparedStatement pre = null;
        try {

            pre = ConnectionDB.connect("update customers set mat_khau=? where email = ?");
            pre.setString(1,passNew);
            pre.setString(2,username);
            pre.executeUpdate();

            return 0;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }
    //Lấy tổng số sản phẩm
    public static int count() {
        PreparedStatement pre = null;
        try {
            String sql = "select count(*) from customers";
            pre = ConnectionDB.connect(sql);

            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
            rs.close();
            pre.close();

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return 0;

    }
    //phân trang
    public static List<Customer> phanTrang(int index ,int size){
        PreparedStatement pre = null;
        List<Customer> re;
        try {
            String sql = "select * from customers limit ? offset ?";
            pre = ConnectionDB.connect(sql);
            pre.setInt(1,size);
            pre.setInt(2,index);

            ResultSet rs = pre.executeQuery();
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new Customer(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)
                ));
            }
            rs.close();
            pre.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }

    }
    public int insertAll(Collection<Customer> data){
        Statement st = null;
        try {
            st = ConnectionDB.connect();
            String sql = "insert into customers (ma_kh,ten_kh,mat_khau,ngay_sinh,gioi_tinh,email,sdt,dia_chi ) values";
            int i = 0;
            for (Customer d : data) {
                if (++i < data.size())
                    sql += "(" + d.getMa_kh() + ",\"" + d.getTen_kh() + "\",\"" + d.getPassword() + "\",\"" + d.getNgay_sinh() + "\",\"" + d.getGioi_tinh() + "\",\"" + d.getEmail() + "\",\"" + d.getSdt() + "\",\"" + d.getDia_chi() + "\"),";
                else
                    sql += "(" + d.getMa_kh() + ",\"" + d.getTen_kh() + "\",\"" + d.getPassword() + "\",\"" + d.getNgay_sinh() + "\",\"" + d.getGioi_tinh() + "\",\"" + d.getEmail() + "\",\"" + d.getSdt() + "\",\"" + d.getDia_chi() + "\")";
            }
            st.executeUpdate(sql);
            //        System.out.println(sql);
            st.close();
            return 0;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return 0;

        }
    }

    public static boolean checkLogin(String email, String password) {
        boolean check = false;
        PreparedStatement pre;
        try {
            String sql = "select * from customers where email =? and mat_khau =?";
            pre = ConnectionDB.connect(sql);
            pre.setString(1, email);
            pre.setString(2, password);

            ResultSet rs = pre.executeQuery();
            if (rs.next()) {
                check = true;
            } else check = false;

            rs.close();
            pre.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return check;
    }




}
