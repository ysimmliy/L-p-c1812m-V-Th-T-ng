/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectsemii;

/**
 *
 * @author Boss
 */
public class ClassNhaCungCap {

    int MaNCC;
    String TenNCC;
    String DiaChi;
    String SDT;
    String LienHe;

    public ClassNhaCungCap() {
    }

    public ClassNhaCungCap(int MaNCC, String TenNCC, String DiaChi, String SDT, String LienHe) {
        this.MaNCC = MaNCC;
        this.TenNCC = TenNCC;
        this.DiaChi = DiaChi;
        this.SDT = SDT;
        this.LienHe = LienHe;
    }

    public int getMaNCC() {
        return MaNCC;
    }

    public void setMaNCC(int MaNCC) {
        this.MaNCC = MaNCC;
    }

    public String getTenNCC() {
        return TenNCC;
    }

    public void setTenNCC(String TenNCC) {
        this.TenNCC = TenNCC;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    public String getSDT() {
        return SDT;
    }

    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

    public String getLienHe() {
        return LienHe;
    }

    public void setLienHe(String LienHe) {
        this.LienHe = LienHe;
    }
    
    @Override
    public String toString() {
        return TenNCC;
    }

}
