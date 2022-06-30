package bin;

import java.io.Serializable;

public class BinhLuan implements Serializable {
    private int ma_bl;
    private int ma_kh;
    private int ma_sp;
    private String noi_dung;

    public BinhLuan() {
    }

    public BinhLuan(int ma_bl, int ma_kh, int ma_sp, String noi_dung) {
        this.ma_bl = ma_bl;
        this.ma_kh = ma_kh;
        this.ma_sp = ma_sp;
        this.noi_dung = noi_dung;
    }

    public int getMa_bl() {
        return ma_bl;
    }

    public void setMa_bl(int ma_bl) {
        this.ma_bl = ma_bl;
    }

    public int getMa_kh() {
        return ma_kh;
    }

    public void setMa_kh(int ma_kh) {
        this.ma_kh = ma_kh;
    }

    public int getMa_sp() {
        return ma_sp;
    }

    public void setMa_sp(int ma_sp) {
        this.ma_sp = ma_sp;
    }

    public String getNoi_dung() {
        return noi_dung;
    }

    public void setNoi_dung(String noi_dung) {
        this.noi_dung = noi_dung;
    }
}
