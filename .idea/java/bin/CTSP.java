package bin;

import java.io.Serializable;

public class CTSP implements Serializable {
    private int id;
    private String noi_sx;
    private String trinh_trang;
    private String clv;
    private String clm;
    private String nang_luong;
    private String chong_nuoc;
    private String ktm;
    private String ktd;

    public CTSP() {
    }

    public CTSP(int id, String noi_sx, String trinh_trang, String clv, String clm, String nang_luong, String chong_nuoc, String ktm, String ktd) {
        this.id = id;
        this.noi_sx = noi_sx;
        this.trinh_trang = trinh_trang;
        this.clv = clv;
        this.clm = clm;
        this.nang_luong = nang_luong;
        this.chong_nuoc = chong_nuoc;
        this.ktm = ktm;
        this.ktd = ktd;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNoi_sx() {
        return noi_sx;
    }

    public void setNoi_sx(String noi_sx) {
        this.noi_sx = noi_sx;
    }

    public String getTrinh_trang() {
        return trinh_trang;
    }

    public void setTrinh_trang(String trinh_trang) {
        this.trinh_trang = trinh_trang;
    }

    public String getClv() {
        return clv;
    }

    public void setClv(String clv) {
        this.clv = clv;
    }

    public String getClm() {
        return clm;
    }

    public void setClm(String clm) {
        this.clm = clm;
    }

    public String getNang_luong() {
        return nang_luong;
    }

    public void setNang_luong(String nang_luong) {
        this.nang_luong = nang_luong;
    }

    public String getChong_nuoc() {
        return chong_nuoc;
    }

    public void setChong_nuoc(String chong_nuoc) {
        this.chong_nuoc = chong_nuoc;
    }

    public String getKtm() {
        return ktm;
    }

    public void setKtm(String ktm) {
        this.ktm = ktm;
    }

    public String getKtd() {
        return ktd;
    }

    public void setKtd(String ktd) {
        this.ktd = ktd;
    }
}
