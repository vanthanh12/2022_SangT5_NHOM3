package bin;

import java.io.Serializable;

public class CTHD implements Serializable {
    private int ma_hd;
    private int ma_sp;
    private int so_luong;

    public CTHD() {
    }

    public CTHD(int ma_hd, int ma_sp, int so_luong) {
        this.ma_hd = ma_hd;
        this.ma_sp = ma_sp;
        this.so_luong = so_luong;
    }

    public int getMa_hd() {
        return ma_hd;
    }

    public void setMa_hd(int ma_hd) {
        this.ma_hd = ma_hd;
    }

    public int getMa_sp() {
        return ma_sp;
    }

    public void setMa_sp(int ma_sp) {
        this.ma_sp = ma_sp;
    }

    public int getSo_luong() {
        return so_luong;
    }

    public void setSo_luong(int so_luong) {
        this.so_luong = so_luong;
    }
}
