package bin;


import java.io.Serializable;

public class Product implements Serializable {

    private int id;
    private String ma_loaisp;
    private String name;
    private String img1;
    private String img2;
    private String brand;
    private long price;
    private long compare_price;
    private String sale;
    private long quantity;

    public Product() {

    }

    public Product(int id, String ma_loaisp, String name, String img1, String img2, String brand, long price, long compare_price, String sale, long quantity) {
        this.id = id;
        this.ma_loaisp = ma_loaisp;
        this.name = name;
        this.img1 = img1;
        this.img2 = img2;
        this.brand = brand;
        this.price = price;
        this.compare_price = compare_price;
        this.sale = sale;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMa_loaisp() {
        return ma_loaisp;
    }

    public void setMa_loaisp(String ma_loaisp) {
        this.ma_loaisp = ma_loaisp;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg1() {
        return img1;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public String getImg2() {
        return img2;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public long getCompare_price() {
        return compare_price;
    }

    public void setCompare_price(long compare_price) {
        this.compare_price = compare_price;
    }

    public String getSale() {
        return sale;
    }

    public void setSale(String sale) {
        this.sale = sale;
    }

    public long getQuantity() {
        return quantity;
    }

    public void setQuantity(long quantity) {
        this.quantity = quantity;
    }

    public void add() {
    }
}