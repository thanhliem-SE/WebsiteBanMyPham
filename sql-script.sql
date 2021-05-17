USE [MyPhamDatabase]
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 
GO
INSERT [dbo].[DanhMuc] ([maDanhMuc], [tenDanhMuc]) VALUES (1, N'Chăm Sóc Da Mặt')
GO
INSERT [dbo].[DanhMuc] ([maDanhMuc], [tenDanhMuc]) VALUES (2, N'Chăm Sóc Cơ Thể')
GO
INSERT [dbo].[DanhMuc] ([maDanhMuc], [tenDanhMuc]) VALUES (3, N'Chăm Sóc Tóc')
GO
INSERT [dbo].[DanhMuc] ([maDanhMuc], [tenDanhMuc]) VALUES (4, N'Nước Hoa')
GO
INSERT [dbo].[DanhMuc] ([maDanhMuc], [tenDanhMuc]) VALUES (5, N'Trang Điểm')
GO
INSERT [dbo].[DanhMuc] ([maDanhMuc], [tenDanhMuc]) VALUES (6, N'Thực Phẩm Chức Năng')
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
INSERT [dbo].[users] ([username], [enabled], [password]) VALUES (N'liem2n', 1, N'11233334')
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 
GO
INSERT [dbo].[NhanVien] ([maNhanVien], [CMND], [chucVu], [email], [gioiTinh], [namSinh], [soDienThoai], [tenNhanVien], [trinhDoHocVan], [username]) VALUES (1, N'026332823431', N'Admin', N'liem@gmail.com', N'Nam', 2000, N'0234432322', N'Nguyễn Thanh Liêm', N'Đại học', N'liem2n')
GO
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 
GO
INSERT [dbo].[SanPham] ([maSanPham], [congDung], [donGia], [donViTinh], [hanSuDung], [nhaCungCap], [soLuongTon], [tenSanPham], [thanhPhan], [thue], [maDanhMuc], [maNhanVien]) VALUES (1, N'Bioderma Sebium Gel Gommant với kết cấu dạng gel có chứa những hạt Polyethylene sẽ giúp nhẹ nhàng lấy đi lớp tế bào chết, bụi bẩn, bã nhờn tồn đọng trên da...giúp lỗ chân lông thông thoáng.
- Giúp thúc đẩy quá trình tái tạo da mới nhằm mang đến cho bạn làn da sáng mịn màng và khỏe  mạnh hơn.', 351000, N'Tuýp', 24, N'Bioderma', 20, N'Tẩy Da Chết Bioderma Sebium Gel Gommant 100ml', N'Aqua/water/eau, polyethylene, sodium laureth sulfate, xanthan gum, lauryl glucoside, ginkgo biloba leaf extract, mannitol, xylitol, rhamnose, fructooligosaccharides, glycolic acid, salicylic acid, sodium hydroxide, disodium edta, propylene glycol, fragrance (parfum)', 0.5, 2, 1)
GO
INSERT [dbo].[SanPham] ([maSanPham], [congDung], [donGia], [donViTinh], [hanSuDung], [nhaCungCap], [soLuongTon], [tenSanPham], [thanhPhan], [thue], [maDanhMuc], [maNhanVien]) VALUES (5, N'Hiệu ứng "Photoshop” làn da từ Valmont - là biểu tượng chăm sóc da thiết yếu, mặt nạ kem giúp xoá đi dấu hiệu mệt mỏi bằng cách làm mới làn da và làm đầy nếp nhăn chỉ trong vài phút', 6510000, N'Lọ', 32, N'Valmont', 10, N'VALMONT Prime Renewing Pack - Mặt nạ kem tái sinh làn da', N'Water (Aqua), Mineral Oil (Paraffinum Liquidum), Propylene Glycol, Calcium Dna, Gynostemma Pentaphyllum Extract, Lecithin, Magnesium Dna, Palmitoyl, Tetrapeptide-7, Palmitoyl Tripeptide-1, Panax Ginseng Root Extract, Rna, Sodium Dna, Urea, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Butylene Glycol, C12-20 Acid Peg-8 Ester, C13-14 Isoparaffin, Caprylyl Glycol, Carbomer, Coco-Glucoside, Disodium Edta, Glycerin, Helylene Glycol, Laureth-7, Menthyl Lactate, Polyacrylamide, Potassium Cetyl Phosphate, Sodium Carboxymethyl Beta-Glucan, Sodium Hydroxide, Sodium Lactate, Titanium Dioxide (Ci 77891), Ethylhexylglycerin, Phenoxyethanol, Fragrance (Parfum), Benzyl Benzoate, Cinnamyl Alcohol, Citronellol, Eugenol, Geranoil, Hexyl Cinnamal, Hydroxycitronellal, Limonene, Linalool.', 0.5, 1, 1)
GO
INSERT [dbo].[SanPham] ([maSanPham], [congDung], [donGia], [donViTinh], [hanSuDung], [nhaCungCap], [soLuongTon], [tenSanPham], [thanhPhan], [thue], [maDanhMuc], [maNhanVien]) VALUES (7, N'Tẩy da chết da đầu chiết xuất từ muối biển tràn đầy năng lượng giúp làm sạch sâu da đầu đồng thời loại bỏ các tạp chất tăng sâu và mang lại sự tươi mát lâu dài. Dành cho da dầu, tóc nhanh bết và nhìu gàu.', 1300000, N'Lọ', 32, N'Kérastase', 10, N'KERASTASE Scrub Energisant - Tẩy da chết da dầu, tóc bết & gàu', N'Helianthus Annuus Seed Oil, Sunflower Seed Oil, Citrus Limon Peel Oil, Lemon Peel Oil, Limonene, Parfum, Fragrance, Citral, Zingiber Officinale Root Oil, Ginger Root Oil, Pelargonium Graveolens Flower Oil, Linalool, Citronellol, Geraniol, Hydroxycitronellal, Hexyl Cinnamal.', 0.5, 3, 1)
GO
INSERT [dbo].[SanPham] ([maSanPham], [congDung], [donGia], [donViTinh], [hanSuDung], [nhaCungCap], [soLuongTon], [tenSanPham], [thanhPhan], [thue], [maDanhMuc], [maNhanVien]) VALUES (9, N'Nước hoa hồng giàu chất chống oxy hoá với hơn 90% chiếc xuất từ xương rồng ép tươi sau khi thu hoạch giúp cân bằng độ pH của da và làm ẩm da mang lại một làn da tươi mát, trong trẻo và khoẻ mạnh', 750000, N'Chai', 24, N'Huxley', 20, N'HUXLEY Toner; Extract It - Nước hoa hồng dưỡng ẩm', N'Opuntia Ficus-Indica Stem Extract, Propanediol, Dipropylene Glycol, 1,2-Hexanediol, Opuntia Ficus-Indica Seed Oil, Lagerstroemia Indica Flower Extract, Rosa Centifolia Flower Extract, PEG-60 Hydrogenated Castor Oil, Xanthan Gum, Butylene Glycol, Ethylhexylglycerin, Water, Disodium EDTA, Phenoxyethanol, Fragrance', 0.5, 4, 1)
GO
INSERT [dbo].[SanPham] ([maSanPham], [congDung], [donGia], [donViTinh], [hanSuDung], [nhaCungCap], [soLuongTon], [tenSanPham], [thanhPhan], [thue], [maDanhMuc], [maNhanVien]) VALUES (14, N'Một loại phấn nước có kết cấu mỏng nhẹ, cung cấp lớp nền có độ che phủ hoàn hảo nhưng tự nhiên và ẩm mượt, không gây khô mốc cũng không gây bóng dầu, rất phù hợp cho những làn da nhạy cảm, kể cả da mụn, và khí hậu nhiệt đới nóng ẩm quanh năm.', 990000, N'Hủ', 32, N'Huxley', 20, N'HUXLEY Moist Cushion; Own Attitude SPF24/PA++ - Phấn nước trang điểm', N'Opuntia Ficus-Indica Stem Extract, Water, Titanium Dioxide (CI 77891), Cyclopentasiloxane, Ethylhexyl Methoxycinnamate, Diphenylsiloxy Phenyl Trimethicone, Dipropylene Glycol, Ethylhexyl Salicylate, Cyclohexasiloxane, Butylene Glycol Dicaprylate/Dicaprate, Lauryl PEG-10 Tris(Trimethylsiloxy)silylethyl Dimethicone, Methyl Trimethicone, Mica (CI 77019), Dimethicone, 1,2-Hexanediol, Centella Asiatica Extract, Chamomilla Recutita (Matricaria) Flower Extract, Opuntia Ficus-Indica Seed Oil, Balanites Roxburghii Seed Oil, PEG-10 Dimethicone, Disteardimonium Hectorite, Magnesium Sulfate, Isododecane, Methyl Methacrylate Crosspolymer, Stearic Acid, Alumina, Acrylates/Polytrimethylsiloxymethacrylate Copolymer, Dimethicone/Vinyl Dimethicone Crosspolymer, Triethoxycaprylylsilane, Aluminum Hydroxide, Butylene Glycol, Ethylhexylglycerin, Glyceryl Caprylate, Cassia Angustifolia Seed Polysaccharide, Tocopherol, Disodium EDTA, Phenoxyethanol, Fragrance(Parfum), Iron Oxides (CI 77492), Iron Oxides (CI 77491), Iron Oxides (CI 77499)', 0.5, 5, 1)
GO
INSERT [dbo].[SanPham] ([maSanPham], [congDung], [donGia], [donViTinh], [hanSuDung], [nhaCungCap], [soLuongTon], [tenSanPham], [thanhPhan], [thue], [maDanhMuc], [maNhanVien]) VALUES (17, N'Nước uống bổ sung Collagen cần thiết cho da, cân bằng độ ẩm đồng thời làm giảm và ngăn chặn tình trạng lão hóa da mang đến cho bạn làn da căng mọng, tươi tắn, tràn đầy sức sống. ', 1850000, N'Hộp', 24, N'Vital Beautie', 10, N'VITAL BEAUTIE Super Collagen - Nước uống bổ sung Collagen', N'Contains 1000mg of Hydrolysed Collagen, Purified Water, Orange Concentrate, Citric Acid, Pectin, Sodium Oral Ginseng, Enzyme Treated Stevia, Tea Powder, Calcium Powder Mixture, Hyaluronic Acid, Bonito Fish Protein Hydrolysate, Vitamin C', 0.5, 6, 1)
GO
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (1, N'sp-1.jpg')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (5, N'sp-2.png')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (7, N'sp-3.png')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (9, N'sp-4.png')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (14, N'sp-5.png')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (17, N'sp-6.png')
GO
