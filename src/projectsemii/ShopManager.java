/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectsemii;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dangq
 */
public class ShopManager {
    public int LoaiNV = 2;
    
    /**
     * 
     * @param user
     * @param pass
     * @return Loại nhân viên, 1 là nhân viên, 0 là quản lý, mặc định là 2 - không là gì cả
     */
    public int login(String user, String pass){
        Connection conn = new ConnectDB().getConnect();
        String sql = "SELECT n.Loai FROM tblAccount a INNER JOIN TblNhanVien n "
                + "ON a.maNV = n.maNV "
                + "WHERE a.Username = ? AND a.password = ?";
        int row = 0;
        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {                
                row++;
                LoaiNV = rs.getInt("Loai");
            }
            
//            if (row>0) {
//                System.out.println("Login Thành công");
//                System.out.println("Loai NV : " + LoaiNV);
//            } else{
//                System.out.println("Login Thất bại");
//                System.out.println("Loai NV : " + LoaiNV);
//            }
        } catch (SQLException ex) {
            Logger.getLogger(ShopManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return row;
    }
    
    public void addProduct(){
        
    }
    
    public ArrayList<ClassNhaCungCap> getNCC(){
        ArrayList<ClassNhaCungCap> listNCC = new ArrayList<>();
        String sql  = "SELECT * FROM tblNhaCungCap";
        Connection conn = new ConnectDB().getConnect();
        
        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {                
                ClassNhaCungCap ncc = new ClassNhaCungCap(rs.getInt("MaNCC"), 
                        rs.getString("TenNCC"), rs.getString("DiaChi"), 
                        rs.getString("SDT"), rs.getString("LienHe"));
                listNCC.add(ncc);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ShopManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listNCC;
    }
    
    public ArrayList<ClassDanhMuc> getDM(){
        ArrayList<ClassDanhMuc> listDM = new ArrayList<>();
        String sql  = "SELECT * FROM tblDanhMuc";
        Connection conn = new ConnectDB().getConnect();
        
        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {                
                ClassDanhMuc dm = new ClassDanhMuc(rs.getInt("MaDM"), 
                        rs.getString("TenDM"));
                listDM.add(dm);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ShopManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listDM;
    }
}
