-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:15:42.355




-- tables
-- Table TNhanVien
CREATE TABLE TNhanVien (
    MaNV varchar(200)    NOT NULL ,
    TenNV varchar(200)    NOT NULL ,
    NgaySinh varchar(200)    NOT NULL ,
    Email varchar(200)    NOT NULL ,
    Mucluong varchar(200)    NOT NULL ,
    MaPhong varchar(200)    NOT NULL ,
    CONSTRAINT TNhanVien_pk PRIMARY KEY (MaNV)
);

-- Table TPhongBan
CREATE TABLE TPhongBan (
    MaPhong varchar(200)    NOT NULL ,
    TenPhong varchar(200)    NOT NULL ,
    CONSTRAINT TPhongBan_pk PRIMARY KEY (MaPhong)
);





-- foreign keys
-- Reference:  client_order (table: TPhongBan)


ALTER TABLE TPhongBan ADD CONSTRAINT client_order FOREIGN KEY client_order (MaPhong)
    REFERENCES TNhanVien (MaNV);



-- End of file.

