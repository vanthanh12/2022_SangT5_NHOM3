package entity;

import bin.Product;
import database.ConnectionDB;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class ProductNew {
    public static List<Product> getProductNew() {
        List<Product> re;
        Statement st = null;
        try {
            st = ConnectionDB.connect();
            ResultSet rs = st.executeQuery("select * from products_all");
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
            return re ;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();

        }

    }

}
