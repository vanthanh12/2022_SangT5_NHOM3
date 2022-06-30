package file;

import bin.Customer;

import java.util.HashMap;
import java.util.Map;

public class DataCustomer {
    public static Map<String , Customer> data = new HashMap<>();

    static{
        data.put("1",new Customer(101,"Trần Văn Đời","doitino","10/11/2000","nam","doitino@gmail.com","0123456789","Phú Yên"));
        data.put("2",new Customer(102,"Nguyễn Văn Tuấn","tuansuri","23/07/200","nam","tuansuri@gmail.com","0987654321","Lâm Đồng"));
        data.put("3",new Customer(103,"Hoàng Quốc Duy","duygb","09/02/200","nam","duygb@gmail.com","0987987987","Gia Lai"));
    }
}
