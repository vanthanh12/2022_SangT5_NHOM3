package bin;

import java.io.Serializable;

public class HienThiCTHD implements Serializable {
    private int ma_hd;
    private String ten_sp;
    private Long gia_sp;
    private int so_luong;

    public HienThiCTHD() {
    }

    public HienThiCTHD(int ma_hd, String ten_sp, Long gia_sp, int so_luong) {
        this.ma_hd = ma_hd;
        this.ten_sp = ten_sp;
        this.gia_sp = gia_sp;
        this.so_luong = so_luong;
    }

    public int getMa_hd() {
        return ma_hd;
    }

    public void setMa_hd(int ma_hd) {
        this.ma_hd = ma_hd;
    }

    public String getTen_sp() {
        return ten_sp;
    }

    public void setTen_sp(String ten_sp) {
        this.ten_sp = ten_sp;
    }

    public Long getGia_sp() {
        return gia_sp;
    }

    public void setGia_sp(Long gia_sp) {
        this.gia_sp = gia_sp;
    }

    public int getSo_luong() {
        return so_luong;
    }

    public void setSo_luong(int so_luong) {
        this.so_luong = so_luong;
    }

    @Override
    public String toString() {
        return "HienThiCTHD{" +
                "ma_hd=" + ma_hd +
                ", ten_sp='" + ten_sp + '\'' +
                ", gia_sp=" + gia_sp +
                ", so_luong=" + so_luong +
                '}';
    }
}
