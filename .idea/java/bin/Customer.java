package bin;

import java.io.Serializable;

public class Customer implements Serializable {
    private int ma_kh;
    private String ten_kh;
    private String password;
    private String ngay_sinh;
    private String gioi_tinh;
    private String email;
    private String sdt;
    private String dia_chi;

    public Customer() {
    }

    public Customer(int ma_kh, String ten_kh, String password, String ngay_sinh, String gioi_tinh, String email, String sdt, String dia_chi) {
        this.ma_kh = ma_kh;
        this.ten_kh = ten_kh;
        this.password = password;
        this.ngay_sinh = ngay_sinh;
        this.gioi_tinh = gioi_tinh;
        this.email = email;
        this.sdt = sdt;
        this.dia_chi = dia_chi;
    }
    public Customer( String ten_kh, String password, String ngay_sinh, String gioi_tinh, String email, String sdt, String dia_chi) {
        this.ma_kh = ma_kh;

        this.ten_kh = ten_kh;
        this.password = password;
        this.ngay_sinh = ngay_sinh;
        this.gioi_tinh = gioi_tinh;
        this.email = email;
        this.sdt = sdt;
        this.dia_chi = dia_chi;
    }

    public int getMa_kh() {
        return ma_kh;
    }

    public void setMa_kh(int ma_kh) {
        this.ma_kh = ma_kh;
    }

    public String getTen_kh() {
        return ten_kh;
    }

    public void setTen_kh(String ten_kh) {
        this.ten_kh = ten_kh;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNgay_sinh() {
        return ngay_sinh;
    }

    public void setNgay_sinh(String ngay_sinh) {
        this.ngay_sinh = ngay_sinh;
    }

    public String getGioi_tinh() {
        return gioi_tinh;
    }

    public void setGioi_tinh(String gioi_tinh) {
        this.gioi_tinh = gioi_tinh;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getDia_chi() {
        return dia_chi;
    }

    public void setDia_chi(String dia_chi) {
        this.dia_chi = dia_chi;
    }
}