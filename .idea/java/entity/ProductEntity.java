package entity;

import bin.Product;
import database.ConnectionDB;

import java.sql.*;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

public class ProductEntity {

    //Lấy ra tất cả sản phẩm trong database
    public static List<Product> getAll(int index) {
        List<Product> re;
        Statement st = null;
        try {
            st = ConnectionDB.connect();
            ResultSet rs = st.executeQuery("select * from products");
            re = new LinkedList<>();
            while (rs.next()) {
                if (re.size() < index){
                    re.add(new Product(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6),
                            rs.getLong(7),
                            rs.getLong(8),
                            rs.getString(9),
                            rs.getLong(10)
                    ));
            }
            }
            rs.close();
            st.close();

            return re ;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();

        }

    }
    public static List<Product> getAll(String ma_km) {
        List<Product> re;
        PreparedStatement ps = null;
        String sql ="";
        try {
            sql ="select * from products where ma_loaisp like ? ";
            ps = ConnectionDB.connect(sql);
            ps.setString(1,"%"+ma_km+"%");
            ResultSet rs = ps.executeQuery();
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getLong(7),
                        rs.getLong(8),
                        rs.getString(9),
                        rs.getLong(10)
                ));
            }
            System.out.println(re.size());
            rs.close();
            ps.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();

        }

    }
    //lấy sản phẩm được khuyến mãi
    public static List<Product> getProductSale() {
        List<Product> re;
        PreparedStatement ps = null;
        String sql ="";
        try {
            sql ="select * from products where sale not like ? ";
            ps = ConnectionDB.connect(sql);
            ps.setString(1,"0%");
            ResultSet rs = ps.executeQuery();
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getLong(7),
                        rs.getLong(8),
                        rs.getString(9),
                        rs.getLong(10)
                ));
            }
            System.out.println(re.size());
            rs.close();
            ps.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();

        }

    }
    //lấy sản phẩm được khuyến mãi
    public static List<Product> getProductSaleA() {
        List<Product> re;
        PreparedStatement ps = null;
        String sql ="";
        try {
            sql ="select * from products where sale not like ? limit 12 offset 6 ";
            ps = ConnectionDB.connect(sql);
            ps.setString(1,"0%");
            ResultSet rs = ps.executeQuery();
            re = new LinkedList<>();
            while (rs.next() ) {
                re.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getLong(7),
                        rs.getLong(8),
                        rs.getString(9),
                        rs.getLong(10)
                ));

            }
            System.out.println(re.size());
            rs.close();
            ps.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();

        }

    }
    //lấy sản phẩm bán chạy nhất
    public static List<Product> getSaleTop(int top) {
        List<Product> re;
        PreparedStatement ps = null;
        String sql ="";
        try {
            sql ="select * from sale s join products p on s.ma_sp = p.ma_sp  where sldb > ? order by  sldb desc";
            ps = ConnectionDB.connect(sql);
            ps.setInt(1,top);
            ResultSet rs = ps.executeQuery();
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new Product(
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getLong(12),
                        rs.getLong(13),
                        rs.getString(14),
                        rs.getLong(15)
                ));
            }
            System.out.println(re.size());
            rs.close();
            ps.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();

        }

    }
    //Thêm nhiều sản phẩm vào database
    public static int insertAll(Collection<Product> data){
        Statement st = null;
        try {
            st = ConnectionDB.connect();
            String sql ="insert into products (id,name,img1,img2,brand ,price,compare_price,sale) values";
            int i =0;
            for (Product d:data) {
                if(++i<data.size())
                    sql +="(" +d.getId()+",\"" +d.getName()+"\",\""+d.getImg1()+"\",\""+d.getImg1()+"\",\""+ d.getBrand()+"\","  +d.getPrice()+","+ d.getCompare_price()+",\"" + d.getSale()+"\"),";
                else
                    sql +="(" +d.getId()+",\"" +d.getName()+"\",\""+d.getImg1()+"\",\""+d.getImg1()+"\",\""+ d.getBrand()+"\","  +d.getPrice()+","+ d.getCompare_price()+",\"" + d.getSale()+"\")";
            }
            st.executeUpdate(sql);
            //  System.out.println(sql);
            st.close();
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
            String sql = "select count(*) from products";
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
    //Lấy tổng số sản phẩm
    public static int countP(String maloai) {
        PreparedStatement pre = null;
        try {

            pre = ConnectionDB.connect( "select count(*) from products where ma_loaisp =?");
            pre.setString(1,maloai);

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
    public static List<Product> phanTrang(int index ,int size){
        PreparedStatement pre = null;
        List<Product> re;
        try {
            String sql = "select * from products limit ? offset ?";
            pre = ConnectionDB.connect(sql);
            pre.setInt(1,size);
            pre.setInt(2,index);

            ResultSet rs = pre.executeQuery();
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getLong(7),
                        rs.getLong(8),
                        rs.getString(9),
                        rs.getLong(10)
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
    //phân trang
    public static List<Product> phanTrangP(int index ,int size,String maloai){
        PreparedStatement pre = null;
        List<Product> re;
        try {
            String sql = "select * from products where ma_loaisp =? limit ? offset ?";
            pre = ConnectionDB.connect(sql);
            pre.setString(1,maloai);
            pre.setInt(2,size);
            pre.setInt(3,index);

            ResultSet rs = pre.executeQuery();
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getLong(7),
                        rs.getLong(8),
                        rs.getString(9),
                        rs.getLong(10)
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
    // Thêm 1 sản phẩm vào database
    public static int addone(Product pro){
        Connection con;
        PreparedStatement pre = null;
        try {

            Class.forName("com.mysql.jdbc.Driver");
            con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            String sql ="insert into products (ma_sp,ma_loaisp,ten_sp,img1,img2,brand ,price,compare_price,sale,quantity) values (?,?,?,?,?,?,?,?,?,?)" ;
            pre = con.prepareStatement(sql);
            pre.setInt(1,pro.getId());
            pre.setString(2,pro.getMa_loaisp());
            pre.setString(3,pro.getName());
            pre.setString(4,pro.getImg1());
            pre.setString(5,pro.getImg2());
            pre.setString(6,pro.getBrand());
            pre.setLong(7,pro.getPrice());
            pre.setLong(8,pro.getCompare_price());
            pre.setString(9,pro.getSale());
            pre.setLong(10,pro.getQuantity());

            pre.executeUpdate();

            return 0;
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return 0;
    }
    //Xóa 1 sản phẩm trong database
    public static void deleteProduct(int id){
        PreparedStatement ps =null ;
        try {
            String sql = "Delete From products where ma_sp =?";
            ps = ConnectionDB.connect(sql);
            ps.setInt(1,id);

            ps.executeUpdate();
        }catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    //Lấy thông tin sản phẩm cần chỉnh sữa
    public static Product getProductUpdate(int idUpdate) {
        Product pro ;
        Connection con=null;
        PreparedStatement ps = null;
        try {
            String sql = "select * from products where ma_sp = ?";
            ps = ConnectionDB.connect(sql);
            ps.setInt(1, idUpdate);
            System.out.println(sql);
            ResultSet rs = ps.executeQuery();
            pro = new Product();
            while (rs.next()) {
                int id= rs.getInt(1);

                String ma_loai =rs.getString(2);

                String ma_loaisp = rs.getString(2);

                String name =rs.getString(3);
                String img1 = rs.getString(4);
                String img2 = rs.getString(5);
                String brand =rs.getString(6);
                Long price = rs.getLong(7);
                Long com =rs.getLong(8);
                String sale = rs.getString(9) ;
                Long quanlity = rs.getLong(10);

                pro= new Product(id,ma_loai,name,img1,img2,brand,price,com,sale,quanlity);

                pro= new Product(id,ma_loaisp,name,img1,img2,brand,price,com,sale,quanlity);

            }
            rs.close();
            ps.close();
            return pro;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return  null;
        }
    }
    //Chỉnh sữa thông tin sản phẩm
    public static int update(Product pro){
        Connection con;
        PreparedStatement pre = null;
        try {

            String sql ="update products set ma_loaisp=?, ten_sp=?,img1=?,img2=?,brand=? ,price=?,compare_price=?,sale=? where ma_sp = ?" ;
            pre= ConnectionDB.connectupdate(sql);
            pre.setString(1,pro.getMa_loaisp());
            pre.setString(2,pro.getName());
            pre.setString(3,pro.getImg1());
            pre.setString(4,pro.getImg2());
            pre.setString(5,pro.getBrand());
            pre.setLong(6,pro.getPrice());
            pre.setLong(7,pro.getCompare_price());
            pre.setString(8,pro.getSale());
            pre.setInt(9,pro.getId());
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
    public static List<Product> getSearchAll(String name) {
        List<Product> re;
        PreparedStatement st = null;
        try {
            String sql = "select * from products where ten_sp like ?";
            st = ConnectionDB.connect(sql);
            st.setString(1, "%" + name + "%");
            System.out.println(sql);
            ResultSet rs = st.executeQuery();
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getLong(7),
                        rs.getLong(8),
                        rs.getString(9),
                        rs.getLong(10)
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
    public static List<Product> getSearchAllPT(String name,int index,int size) {
        List<Product> re;
        PreparedStatement st = null;
        try {
            String sql = "select * from products where ten_sp like ? limit ? offset ?";
            st = ConnectionDB.connect(sql);
            st.setString(1, "%" + name + "%");
            st.setInt(2,size);
            st.setInt(3,index);
            System.out.println(sql);
            ResultSet rs = st.executeQuery();
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getLong(7),
                        rs.getLong(8),
                        rs.getString(9),
                        rs.getLong(10)
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
    public static int countS(String name) {
        PreparedStatement st = null;
        int count =0;
        try {
            String sql = "select * from products where ten_sp like ? ";
            st = ConnectionDB.connect(sql);
            st.setString(1, "%" + name + "%");
            System.out.println(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                count ++;
            }
            rs.close();
            st.close();
            return count;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return 0;

        }
    }
    public Product getById(String id) {
        PreparedStatement s = null;
        try{
            String sql="select * from products where ma_sp= ?";
            s= ConnectionDB.connect(sql);
            s.setString(1,id);
            ResultSet rs = s.executeQuery();
            Product p;
            List<Product> re = new LinkedList<>();
            if (rs.next()){
                p=new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getLong(7),
                        rs.getLong(8),
                        rs.getString(9),
                        rs.getLong(10)
                );
                rs.close();
                s.close();
                return p;
            }
            return null;

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }

    }

    public static Product getByid(int id) {
        PreparedStatement st = null;
        try {
            String sql="select* from products where ma_sp = ? ";
            st = ConnectionDB.connect(sql);
            st.setInt(1,id);
            ResultSet rs = st.executeQuery();
            Product p;
            if (rs.next()) {
                p= new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getLong(7),
                        rs.getLong(8),
                        rs.getString(9),
                        rs.getLong(10)
                );
                rs.close();
                st.close();
                return  p;
            }
            return null;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return  null;

        }

    }

}
