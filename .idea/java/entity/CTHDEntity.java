package entity;

import bin.CTHD;
import bin.HienThiCTHD;
import database.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

public class CTHDEntity {
    public List<HienThiCTHD> getAll(int mahd) {
        List<HienThiCTHD> re;
        PreparedStatement ps = null;
        try {
            String sql ="SELECT ct.ma_hd , p.ten_sp , p.price , ct.so_luong FROM hoadon hd join cthd ct on hd.ma_hd = ct.ma_hd join products p on ct.ma_sp=p.ma_sp where ct.ma_hd = ?";
            ps = ConnectionDB.connect(sql);
            ps.setInt(1,mahd);
            ResultSet rs = ps.executeQuery();
            re = new LinkedList<>();
            while (rs.next()) {
                re.add(new HienThiCTHD(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getLong(3),
                        rs.getInt(4)

                ));
            }
//            for (HienThiCTHD h:re
//                 ) {
//                System.out.println(h.toString());
//            }
            rs.close();
            ps.close();
            return re ;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();

        }

    }
    //Thêm nhiều sản phẩm vào database
    public static int insertAll(Collection<CTHD> data){
        PreparedStatement pre = null;
        try {
            String sql ="insert into cthd (ma_hd,ma_sp,so_luong) values ";
            int i =0;
            for (CTHD d:data) {


                if(++i<data.size())
                    sql +="(" +d.getMa_hd()+"," +d.getMa_sp()+","  +d.getSo_luong()+"),";
                else
                    sql +="(" +d.getMa_hd()+"," +d.getMa_sp()+","  +d.getSo_luong()+")";
            }
            pre = ConnectionDB.connect( sql);

        //    pre.setString(1,sql);


            pre.executeUpdate();
              System.out.println(sql);
            pre.close();
            return 0;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return 0;

        }
    }

    public static void main(String[] args) {
        CTHDEntity c = new CTHDEntity();
        List<CTHD> list = new ArrayList<>();
        list.add(new CTHD(1001,3,2));
        list.add(new CTHD(1001,2,2));
        c.insertAll(list);
    }

}
