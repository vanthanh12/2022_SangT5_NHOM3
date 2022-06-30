package database;

import entity.ProductEntity;
import file.Data;

import java.sql.*;

public class ConnectionDB {
    static Connection con ;

    public static Statement connect() throws  ClassNotFoundException , SQLException{
        if(con == null || con.isClosed()){
            Class.forName("com.mysql.jdbc.Driver");
            con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            if(con!=null) System.out.println("da ket noi");
            return con.createStatement();
        }
        else
            return con.createStatement();

    }
    public static PreparedStatement connect(String sql) throws ClassNotFoundException ,SQLException{
        if(con==null || con.isClosed()){
            Class.forName("com.mysql.jdbc.Driver");
            con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
            return con.prepareStatement(sql);
        }else{
            return con.prepareStatement(sql);
        }
    }
    public static PreparedStatement connectupdate(String sql) throws ClassNotFoundException ,SQLException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
            return con.prepareCall(sql);
        } else {
            return con.prepareCall(sql);
        }
    }
    public static void main(String[] args) {
        ProductEntity p = new ProductEntity();
        p.insertAll(Data.data.values());
//        CustomerEntity cs = new CustomerEntity();
//        cs.insertAll(DataCustomer.data.values());

//        HoaDonEntity pr = new HoaDonEntity();
//        pr.insertAll(DataHoadon.data.values());
//        ProductEntity pr =new ProductEntity();


//        User user = new User(11, "aaaa","1234",103,3);
//        RegisterEntity re = new RegisterEntity();
//        re.insertOne( user);

//         Statement st = ConnectionDB.connect();
//        ResultSet rs = st.executeQuery("select * from hoadon");
//        rs.last();
//        System.out.println(rs.getRow());
//        rs.beforeFirst();
//
//        while (rs.next()){
//            System.out.println(rs.getInt(1));
//        }
//
//        Product pro = new Product(123,"aaaaaaaaa","hsadh,kjdkjad","dkjk,jad",1234,1234,"20%");
//        ProductEntity a = new ProductEntity();
//        a.addone(pro);
    }

}
