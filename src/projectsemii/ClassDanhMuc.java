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
public class ClassDanhMuc {
    int MaDM;
    String TenDM;

    public ClassDanhMuc() {
    }

    public ClassDanhMuc(int MaDM, String TenDM) {
        this.MaDM = MaDM;
        this.TenDM = TenDM;
    }

    public int getMaDM() {
        return MaDM;
    }

    public void setMaDM(int MaDM) {
        this.MaDM = MaDM;
    }

    public String getTenDM() {
        return TenDM;
    }

    public void setTenDM(String TenDM) {
        this.TenDM = TenDM;
    }

    @Override
    public String toString() {
        return TenDM;
    }
    
    
}
