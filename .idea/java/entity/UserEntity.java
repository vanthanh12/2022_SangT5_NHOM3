package entity;

import bin.User;
import database.ConnectionDB;

import java.sql.*;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

public class UserEntity {
    public List<User> getAll() {
        List<User> re;
        Statement st = null;
        try {
            st = ConnectionDB.connect();
            ResultSet rs = st.executeQuery("select * from users");
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)

                ));
            }
            rs.close();
            st.close();
            return re ;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();

        }

    }
    public int insertAll(Collection<User> data){
        Statement st = null;
        try {
            st = ConnectionDB.connect();
            String sql ="insert into users (ma_tai_khoan,ten_tai_khoan,mat_khau,ma_nhom_tk,trang_thai ) values";
            int i =0;
            for (User d:data) {
                if(++i<data.size())
                    sql +="(" +d.getId()+",\"" +d.getUsername()+"\",\""+d.getPassword()+"\","+ d.getGroupId()+","  +d.getPermission()+"),";
                else
                    sql +="(" +d.getId()+",\"" +d.getUsername()+"\",\""+d.getPassword()+"\","+ d.getGroupId()+","  +d.getPermission()+")";            }
            st.executeUpdate(sql);
            //         System.out.println(sql);
            st.close();
            return 0;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return 0;

        }
    }
    // Thêm 1 tài khoản vào database
    public static int addone(User user){
        Connection con;
        PreparedStatement pre = null;
        try {

            String sql ="insert into users (ma_tai_khoan,ten_tai_khoan,mat_khau,ma_nhom_tk,trang_thai ) values (?,?,?,?,?)" ;
            pre = ConnectionDB.connect(sql);
            pre.setInt(1,user.getId());
            pre.setString(2, user.getUsername());
            pre.setString(3, user.getPassword());
            pre.setInt(4,user.getGroupId());
            pre.setInt(5,user.getPermission());

            pre.executeUpdate();

            return 0;
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return 0;
    }
    public static boolean checkLogin(String username , String password){
        boolean check =false;
        PreparedStatement pre ;


        try {
            String sql ="select * from users where ten_tai_khoan =? and mat_khau =?";
            pre = ConnectionDB.connect(sql);
            pre.setString(1,username);
            pre.setString(2,password);
            ResultSet rs = pre.executeQuery();
            if(rs.next()){
                check = true;
            }else check=false;

            rs.close();
            pre.close();
        }

        catch (Exception e){
            e.printStackTrace();
        }
        return check;
    }
    //Lấy tổng số tài khoản đang quản trị trang
    public static int count() {
        PreparedStatement pre = null;
        try {
            String sql = "select count(*) from users";
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
    public static List<User> phanTrang(int index , int size){
        PreparedStatement pre = null;
        List<User> re;
        try {
            String sql = "select * from users limit ? offset ?";
            pre = ConnectionDB.connect(sql);
            pre.setInt(1,size);
            pre.setInt(2,index);

            ResultSet rs = pre.executeQuery();
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)

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
    //Xóa 1 tài khoản trong database
    public static void deleteUser(int id){
        PreparedStatement ps =null ;
        try {
            String sql = "Delete From users where ma_tai_khoan =?";
            ps = ConnectionDB.connect(sql);
            ps.setInt(1,id);

            ps.executeUpdate();
        }catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    //Lấy thông tin tài khoản cần chỉnh sữa
    public static User getUserUpdate(int idUpdate) {
        User user ;
        Connection con=null;
        PreparedStatement ps = null;
        try {
            String sql = "select * from users where ma_tai_khoan = ?";
            ps = ConnectionDB.connect(sql);
            ps.setInt(1, idUpdate);
            System.out.println(sql);
            ResultSet rs = ps.executeQuery();
            user = new User();
            while (rs.next()) {
                int id= rs.getInt(1);
                String username =rs.getString(2);
                String password = rs.getString(3);
                int groupId = rs.getInt(4);
                int permission = rs.getInt(5);
                user= new User(id,username,password,groupId,permission);
            }
            rs.close();
            ps.close();
            return user;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return  null;
        }
    }
    //Chỉnh sữa thông tin sản phẩm
    public static int update(User user){
        Connection con;
        PreparedStatement pre = null;
        try {

            String sql ="update users set ten_tai_khoan=?,mat_khau=?,ma_nhom_tk=?,trang_thai=?  where ma_tai_khoan = ?" ;
            pre= ConnectionDB.connectupdate(sql);
            pre.setString(1,user.getUsername());
            pre.setString(2, user.getPassword());
            pre.setInt(3,user.getGroupId());
            pre.setInt(4,user.getPermission());
            pre.setInt(5,user.getId());
            System.out.println(sql);
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
