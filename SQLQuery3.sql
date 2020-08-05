CREATE DATABASE ThongTin
GO
USE ThongTin
GO
CREATE TABLE Class(
    MaLop int primary key,
	StartDate datetime,
	EndDate datetime
)
GO
CREATE TABLE Students(
     MaSV int primary key,
	 Ten nvarchar(100) not null,
	 NgaySinh datetime,
	 GioiTinh bit,
	 TenLop char(10),
	 
)
GO

CREATE TABLE ClassDetils(
    MaLop int not null,
	MaSV int not null,
	Startdate datetime not null,
	Enddate datetime not null,
	FOREIGN KEY(MaSV) REFERENCES Students(MaSV)
	FOREIGN KEY(MaLop) REFERENCES Class(MaLop)
)
GO
INSERT INTO Class VALUES (1,04-06-2020,22-11-2020)
INSERT INTO Class VALUES (2,04-06-2020,22-11-2020)
INSERT INTO Class VALUES (3,04-06-2020,22-11-2020)

INSERT INTO Students VALUES (1,N'Nguyễn Trọng Sơn',12-06-2000,1,1)
INSERT INTO Students VALUES (2,N'Nguyễn Trọng Sơn',12-06-2000,0,3)
INSERT INTO Students VALUES (3,N'Nguyễn Trọng Sơn',12-06-2000,1,2)

INSERT INTO ClassDetils VALUES (1,2,3-8-2020,3-9-2020)
INSERT INTO ClassDetils VALUES (2,1,3-8-2020,3-9-2020)
INSERT INTO ClassDetils VALUES (3,3,3-8-2020,3-9-2020)


UPDATE dbo.Students set Ten = N'Mai Văn Phúc' WHERE MaSV = 1
UPDATE dbo.Class SET EndDate= '22-11-2021' where MaLop = 2

Delete	ClassDetils where MaSV = 3