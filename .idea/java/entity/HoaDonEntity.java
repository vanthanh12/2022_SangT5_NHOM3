package entity;

import bin.HoaDon;
import database.ConnectionDB;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class HoaDonEntity {

    public List<HoaDon> getAll() {
        List<HoaDon> re;
        PreparedStatement ps = null;
        try {
            String sql ="select * from hoadon";
            ps = ConnectionDB.connect(sql);
            ResultSet rs = ps.executeQuery();
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new HoaDon(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getLong(4),
                        rs.getString(5)

                ));
            }
            rs.close();
            ps.close();
            return re ;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();

        }

    }
    //Lấy tổng số tài khoản đang quản trị trang
    public static int count() {
        PreparedStatement pre = null;
        try {
            String sql = "select count(*) from hoadon";
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
    public static List<HoaDon> phanTrang(int index , int size){
        PreparedStatement pre = null;
        List<HoaDon> re;
        try {
            String sql = "select * from hoadon limit ? offset ?";
            pre = ConnectionDB.connect(sql);
            pre.setInt(1,size);
            pre.setInt(2,index);

            ResultSet rs = pre.executeQuery();
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new HoaDon(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getLong(4),
                        rs.getString(5)

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
    // Thêm 1 hóa đơn mới vào database
    public static int addone(HoaDon hd){
        Connection con;
        PreparedStatement pre = null;
        try {

            Class.forName("com.mysql.jdbc.Driver");
            con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            String sql ="insert into hoadon (ma_hd,ma_kh,ngay_mua,tri_gia,trang_thai ) values (?,?,?,?,?)" ;
            pre = con.prepareStatement(sql);
            pre.setInt(1,hd.getMa_hd());
            pre.setInt(2,hd.getMa_kh());
            pre.setString(3,hd.getNgay_mua());
            pre.setLong(4,hd.getTri_gia());
            pre.setString(5,hd.getTrang_thai());


            pre.executeUpdate();

            return 0;
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return 0;
    }
}
