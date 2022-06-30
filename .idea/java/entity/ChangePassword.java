package entity;

import database.ConnectionDB;

import java.sql.PreparedStatement;


public class ChangePassword {
    public static void changePass(String newpass ,String user,String pass ) {


        PreparedStatement pre = null;
        try {
//            String sql = "update customers set mat_khau =? where email =? and mat_khau =?";
            pre = ConnectionDB.connect("update customers set mat_khau =? where email =? and mat_khau =?");
            pre.setString(1,newpass);
            pre.setString(2,user);
            pre.setString(3,pass);
            pre.executeUpdate();



        } catch (Exception e) {

            e.printStackTrace();
        }


    }

}
