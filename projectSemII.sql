create database ProjectSemII
go
use ProJectSemII
go

create table TblNhanVien(
maNV int primary key not null identity(1,1),
Pr_id int,
Loai bit,
Ten nvarchar(40),
GioiTinh tinyint,
NgaySinh date,
DiaChi nvarchar(120),
SDT varchar(12),
email varchar(80),
TrangThai bit not null,
)

create table tblNhaCungCap(
maNCC int primary key,
TenNCC nvarchar(40),
DiaChi nvarchar(120),
SDT varchar(12),
LienHe nvarchar(120),
)

create table tblDanhMuc(
maDM int primary key,
TenDM nvarchar(100),
)

create table tblSanPham(
maSP int primary key not null identity(1,1),
TenSP nvarchar(120) not null,
NhaCungCap int foreign key references tblNhaCungCap(maNCC),
NgayTao date,
Gia float not null,
DanhMuc int foreign key references tblDanhMuc(maDM),
TrangThai bit,
)

create table tblNghiPhep(
maNV int foreign key references tblNhanVien(maNV),
ThoiGian date,
primary key(maNV,ThoiGian),
)

create table tblNhapHang(
maSP int foreign key references tblSanPham(maSP),
maNCC int foreign key references tblNhaCungCap(maNCC),
SoLuong int,
DonGiaNhap float,
NgayNhap date,
)

create table tblLuong(
maNV int foreign key references tblNhanVien(maNV),
MucLuong float not null,
Thuong float default(0),
SoBuoiNghi int default(0),
MucPhat float default(0),
ThoiGian date primary key,
TrangThai bit,
)

create table tblAccount(
maNV int foreign key references tblNhanVien(maNV),
Username varchar(20),
password varchar(30),
)

create table tblHinhAnh(
maSP int foreign key references tblSanPham(maSP),
Link nvarchar(100),
)

create table tblHoaDon(
maHD int primary key,
maNV int foreign key references tblNhanVien(maNV),
maSP int foreign key references tblSanPham(maSP),
ThoiGian datetime,
)

create table tblHoaDonChiTiet(
maHD int foreign key references tblHoaDon(maHD),
maSP int foreign key references tblSanPham(maSP),
SoLuong int not null,
DonGia float not null,
ThanhTien float not null,
)

create table tblKhachHang(
maKH int primary key,
tenKH nvarchar(40),
DiaChi nvarchar(120),
SDT varchar(12),
Email varchar(80),
DiemThuong int,
)

create table tblKho(
maSP int foreign key references tblSanPham(maSP),
SoLuong int,
)

create table tblKhuyenMai(
maSP int foreign key references tblSanPham(maSP),
ThoiGian date,
PhanTram nvarchar(120),
SoTienGiam varchar(12),

)

