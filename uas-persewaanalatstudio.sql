/*
 Navicat Premium Data Transfer

 Source Server         : Localhost - SQL Server
 Source Server Type    : SQL Server
 Source Server Version : 11002100 (11.00.2100)
 Source Host           : WIN-JA4ORIHIEQL:1433
 Source Catalog        : uas-persewaanalatstudio
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 11002100 (11.00.2100)
 File Encoding         : 65001

 Date: 18/07/2023 01:32:45
*/


-- ----------------------------
-- Table structure for Barang
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Barang]') AND type IN ('U'))
	DROP TABLE [dbo].[Barang]
GO

CREATE TABLE [dbo].[Barang] (
  [KODEBarang] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Nama] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Stok] int  NULL,
  [HargaSewa] int  NULL
)
GO

ALTER TABLE [dbo].[Barang] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Barang
-- ----------------------------
INSERT INTO [dbo].[Barang] ([KODEBarang], [Nama], [Stok], [HargaSewa]) VALUES (N'B001', N'Kamera', N'4', N'100000')
GO

INSERT INTO [dbo].[Barang] ([KODEBarang], [Nama], [Stok], [HargaSewa]) VALUES (N'B002', N'Mikrofon', N'3', N'50000')
GO

INSERT INTO [dbo].[Barang] ([KODEBarang], [Nama], [Stok], [HargaSewa]) VALUES (N'B003', N'Lensa', N'6', N'80000')
GO

INSERT INTO [dbo].[Barang] ([KODEBarang], [Nama], [Stok], [HargaSewa]) VALUES (N'B004', N'Tripod', N'2', N'60000')
GO

INSERT INTO [dbo].[Barang] ([KODEBarang], [Nama], [Stok], [HargaSewa]) VALUES (N'B005', N'Flash', N'4', N'40000')
GO

INSERT INTO [dbo].[Barang] ([KODEBarang], [Nama], [Stok], [HargaSewa]) VALUES (N'B006', N'Lighting', N'6', N'75000')
GO

INSERT INTO [dbo].[Barang] ([KODEBarang], [Nama], [Stok], [HargaSewa]) VALUES (N'B007', N'Green Screen', N'6', N'100000')
GO

INSERT INTO [dbo].[Barang] ([KODEBarang], [Nama], [Stok], [HargaSewa]) VALUES (N'B008', N'Audio Mixer', N'3', N'150000')
GO

INSERT INTO [dbo].[Barang] ([KODEBarang], [Nama], [Stok], [HargaSewa]) VALUES (N'B009', N'Teleprompter', N'0', N'90000')
GO

INSERT INTO [dbo].[Barang] ([KODEBarang], [Nama], [Stok], [HargaSewa]) VALUES (N'B010', N'Stabilizer', N'3', N'120000')
GO

INSERT INTO [dbo].[Barang] ([KODEBarang], [Nama], [Stok], [HargaSewa]) VALUES (N'B011', N'Monitor', N'0', N'80000')
GO

INSERT INTO [dbo].[Barang] ([KODEBarang], [Nama], [Stok], [HargaSewa]) VALUES (N'B012', N'Backdrop Stand', N'6', N'60000')
GO

INSERT INTO [dbo].[Barang] ([KODEBarang], [Nama], [Stok], [HargaSewa]) VALUES (N'B013', N'Wireless Microphone', N'4', N'95000')
GO

INSERT INTO [dbo].[Barang] ([KODEBarang], [Nama], [Stok], [HargaSewa]) VALUES (N'B014', N'Camera Lens Filter', N'5', N'30000')
GO

INSERT INTO [dbo].[Barang] ([KODEBarang], [Nama], [Stok], [HargaSewa]) VALUES (N'B015', N'Boom Pole', N'5', N'50000')
GO

INSERT INTO [dbo].[Barang] ([KODEBarang], [Nama], [Stok], [HargaSewa]) VALUES (N'B016', N'Handycam', N'5', N'100000')
GO


-- ----------------------------
-- Table structure for Karyawan
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Karyawan]') AND type IN ('U'))
	DROP TABLE [dbo].[Karyawan]
GO

CREATE TABLE [dbo].[Karyawan] (
  [KODEKarya] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Nama] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Username] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Karyawan] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Karyawan
-- ----------------------------
INSERT INTO [dbo].[Karyawan] ([KODEKarya], [Nama], [Username], [Password]) VALUES (N'K001', N'Bakti Thamrin', N'admin', N'admin')
GO

INSERT INTO [dbo].[Karyawan] ([KODEKarya], [Nama], [Username], [Password]) VALUES (N'K002', N'Siti', N'siti456', N'password456')
GO

INSERT INTO [dbo].[Karyawan] ([KODEKarya], [Nama], [Username], [Password]) VALUES (N'K003', N'Wahyu', N'wahyu789', N'password789')
GO

INSERT INTO [dbo].[Karyawan] ([KODEKarya], [Nama], [Username], [Password]) VALUES (N'K004', N'Lina', N'lina321', N'password321')
GO

INSERT INTO [dbo].[Karyawan] ([KODEKarya], [Nama], [Username], [Password]) VALUES (N'K005', N'Rina', N'rina654', N'password654')
GO

INSERT INTO [dbo].[Karyawan] ([KODEKarya], [Nama], [Username], [Password]) VALUES (N'K006', N'Ramandhika Ilham', N'rama', N'rama')
GO


-- ----------------------------
-- Table structure for Transaksi
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Transaksi]') AND type IN ('U'))
	DROP TABLE [dbo].[Transaksi]
GO

CREATE TABLE [dbo].[Transaksi] (
  [KODESewa] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NamaPenyewa] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JaminanJenis] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [JaminanKode] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TglSewa] date  NULL,
  [TglKembali] date  NULL,
  [JumlahHari] int  NULL,
  [TotalHarga] int  NULL,
  [BarangKODE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PegawaiKODE] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Transaksi] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Transaksi
-- ----------------------------
INSERT INTO [dbo].[Transaksi] ([KODESewa], [NamaPenyewa], [JaminanJenis], [JaminanKode], [TglSewa], [TglKembali], [JumlahHari], [TotalHarga], [BarangKODE], [PegawaiKODE]) VALUES (N'S001', N'Anita', N'SIM', N'123456', N'2023-07-01', N'2023-07-05', N'5', N'400000', N'B001', N'K001')
GO

INSERT INTO [dbo].[Transaksi] ([KODESewa], [NamaPenyewa], [JaminanJenis], [JaminanKode], [TglSewa], [TglKembali], [JumlahHari], [TotalHarga], [BarangKODE], [PegawaiKODE]) VALUES (N'S002', N'Hendra', N'KTP', N'789012', N'2023-07-02', N'2023-07-04', N'2', N'100000', N'B003', N'K002')
GO

INSERT INTO [dbo].[Transaksi] ([KODESewa], [NamaPenyewa], [JaminanJenis], [JaminanKode], [TglSewa], [TglKembali], [JumlahHari], [TotalHarga], [BarangKODE], [PegawaiKODE]) VALUES (N'S003', N'Dewi', N'KTP', N'345678', N'2023-07-03', N'2023-07-06', N'3', N'150000', N'B002', N'K003')
GO

INSERT INTO [dbo].[Transaksi] ([KODESewa], [NamaPenyewa], [JaminanJenis], [JaminanKode], [TglSewa], [TglKembali], [JumlahHari], [TotalHarga], [BarangKODE], [PegawaiKODE]) VALUES (N'S004', N'Joko', N'SIM', N'901234', N'2023-07-04', N'2023-07-07', N'3', N'180000', N'B005', N'K004')
GO

INSERT INTO [dbo].[Transaksi] ([KODESewa], [NamaPenyewa], [JaminanJenis], [JaminanKode], [TglSewa], [TglKembali], [JumlahHari], [TotalHarga], [BarangKODE], [PegawaiKODE]) VALUES (N'S005', N'Rina', N'KTP', N'567890', N'2023-07-05', N'2023-07-09', N'4', N'160000', N'B004', N'K005')
GO

INSERT INTO [dbo].[Transaksi] ([KODESewa], [NamaPenyewa], [JaminanJenis], [JaminanKode], [TglSewa], [TglKembali], [JumlahHari], [TotalHarga], [BarangKODE], [PegawaiKODE]) VALUES (N'S006', N'Khairul', N'KTM', N'21400027', N'2023-07-14', N'2023-07-16', N'2', N'200000', N'B007', N'K006')
GO

INSERT INTO [dbo].[Transaksi] ([KODESewa], [NamaPenyewa], [JaminanJenis], [JaminanKode], [TglSewa], [TglKembali], [JumlahHari], [TotalHarga], [BarangKODE], [PegawaiKODE]) VALUES (N'S006', N'Khairul', N'KTM', N'21400027', N'2023-07-14', N'2023-07-16', N'2', N'60000', N'B014', N'K006')
GO


-- ----------------------------
-- Primary Key structure for table Barang
-- ----------------------------
ALTER TABLE [dbo].[Barang] ADD CONSTRAINT [PK__Barang__1C086DCF7E081D49] PRIMARY KEY CLUSTERED ([KODEBarang])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Karyawan
-- ----------------------------
ALTER TABLE [dbo].[Karyawan] ADD CONSTRAINT [PK__Karyawan__FC0A60AD5B7B425E] PRIMARY KEY CLUSTERED ([KODEKarya])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

