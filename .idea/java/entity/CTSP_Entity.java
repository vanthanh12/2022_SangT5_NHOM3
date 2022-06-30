package entity;

import bin.CTSP;
import bin.Image;
import database.ConnectionDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CTSP_Entity {
    public CTSP getCTSP(int id){
        CTSP ctsp ;
        Connection con=null;
        PreparedStatement ps = null;
        try {
            String sql = "select * from ctsp where id = ?";
            ps = ConnectionDB.connect(sql);
            ps.setInt(1, id);
            System.out.println(sql);
            ResultSet rs = ps.executeQuery();
            ctsp = new CTSP();
            while (rs.next()) {
                int masp= rs.getInt(1);
                String nsx =rs.getString(2);
                String tt = rs.getString(3);
                String clv =rs.getString(4);
                String clm = rs.getString(5);
                String nl = rs.getString(6);
                String cn =rs.getString(7);
                String ktm = rs.getString(8);
                String ktd = rs.getString(9);

               ctsp= new CTSP(masp,nsx,tt,clv,clm,nl,cn,ktm,ktd);

            }
            rs.close();
            ps.close();
            return ctsp;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }
    public Image getImage(int id) {
        Image image;
        Connection con = null;
        PreparedStatement ps = null;
        try {
            String sql = "select * from images where id = ?";
            ps = ConnectionDB.connect(sql);
            ps.setInt(1, id);
            System.out.println(sql);
            ResultSet rs = ps.executeQuery();
            image = new Image();
            while (rs.next()) {
                int id1 = rs.getInt(1);
                String img1 = rs.getString(2);
                String img2 = rs.getString(3);
                String img3 = rs.getString(4);
                String img4 = rs.getString(5);
                String img5 = rs.getString(6);
                String img6 = rs.getString(7);
                String img7 = rs.getString(8);
                String img8 = rs.getString(9);


                image = new Image(id1, img1, img2, img3, img4, img5, img6, img7, img8);

            }
            rs.close();
            ps.close();
            return image;
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return null;

        }

    }
}
