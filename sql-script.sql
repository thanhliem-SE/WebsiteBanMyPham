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
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 
GO
INSERT [dbo].[NhaCungCap] ([id], [tenNCC], [thongTinNCC]) VALUES (1, N'Bioderma', N'BIODERMA là một thương hiệu được xây dựng dựa trên sự thấu hiểu sinh học và an toàn da liễu nhằm bảo vệ hệ sinh thái và sức khoẻ làn da. Mang lại hiệu quả lâu dài')
GO
INSERT [dbo].[NhaCungCap] ([id], [tenNCC], [thongTinNCC]) VALUES (2, N'Huxley', N'Huxley Việt Nam chuyên cung cấp sản phẩm chính hãng dòng mỹ phẩm Huxley Hàn Quốc. Huxley Việt Nam cam kết với khách hàng về nguồn gốc sản phẩm.')
GO
INSERT [dbo].[NhaCungCap] ([id], [tenNCC], [thongTinNCC]) VALUES (3, N'iS Clinical', N'Thương hiệu mỹ phẩm iS CLINICAL nổi tiếng toàn cầu về trẻ hoá, làm sáng, điều trị và bảo dưỡng da được các ngôi sao hàng đầu Hollywood như Jennifer ...')
GO
INSERT [dbo].[NhaCungCap] ([id], [tenNCC], [thongTinNCC]) VALUES (4, N'Kérastase', N'Kérastase là thương hiệu hàng đầu chuyên về chăm sóc tóc cao cấp được không ít các ngôi sao thế giới đang sử dụng và yêu chuộng. Ra đời vào năm 1964 tại Pháp vào thời điểm mà chăm sóc tóc chỉ dừng ở thói quen làm sạch tóc, Kérastase ngay lập tức trở thành ngôi sao trong việc chăm sóc và bảo vệ cho mái tóc với hiệu quả được chứng minh rõ ràng nhất. ')
GO
INSERT [dbo].[NhaCungCap] ([id], [tenNCC], [thongTinNCC]) VALUES (5, N'PREBIOTIC', N'Nhà cung cấp có kinh nghiệm và uy tín lâu năm. Chất lượng được đảm bảo')
GO
INSERT [dbo].[NhaCungCap] ([id], [tenNCC], [thongTinNCC]) VALUES (6, N'Valmont', N'Nhà cung cấp uy tín, lâu năm, xuất xứ từ Thụy Sỹ')
GO
INSERT [dbo].[NhaCungCap] ([id], [tenNCC], [thongTinNCC]) VALUES (7, N'Vital Beautie', N'Nhà cung cấp thực phẩm chức năng làm đẹp uy tín có nguồn gốc từ Hàn Quốc')
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
INSERT [dbo].[users] ([username], [enabled], [password]) VALUES (N'admin', 1, N'$2a$12$eoKAwww5WpI/eyb.mBJ6u.B1FZ.69cgs7tdEcv99PYQamouaGQPS6')
GO
INSERT [dbo].[users] ([username], [enabled], [password]) VALUES (N'liem123', 1, N'$12$YxWRc.QiP8qMnq3PlsgwaOZzcgUe3ERmhdP/kbNbhIKJ7YtXbAXGC')
GO
INSERT [dbo].[users] ([username], [enabled], [password]) VALUES (N'liem2n', 1, N'$12$YxWRc.QiP8qMnq3PlsgwaOZzcgUe3ERmhdP/kbNbhIKJ7YtXbAXGC')
GO
INSERT [dbo].[users] ([username], [enabled], [password]) VALUES (N'manager', 1, N'$2a$12$IWi6n6i2XQe907.YTOf4p.iR2BjQ2L0Zv55HI57.fyAGT37ihZ.jG')
GO
INSERT [dbo].[users] ([username], [enabled], [password]) VALUES (N'username', 1, N'$2a$12$ARKpvN7h3saxDtJwB/raAuk/fZAx872K8kCmlowKs.Z6Yh.v9yWDu')
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 
GO
INSERT [dbo].[NhanVien] ([maNhanVien], [CMND], [chucVu], [email], [gioiTinh], [namSinh], [soDienThoai], [tenNhanVien], [trinhDoHocVan], [username]) VALUES (1, N'026332823431', N'Admin', N'liem@gmail.com', N'Nam', 2000, N'0234432322', N'Nguyễn Thanh Liêm', N'Đại học', N'liem2n')
GO
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 
GO
INSERT [dbo].[SanPham] ([maSanPham], [congDung], [donGia], [donViTinh], [giamGia], [hanSuDung], [soLuongTon], [tenSanPham], [thanhPhan], [thue], [maNhaCungCap], [maDanhMuc], [maNhanVien]) VALUES (1, N'Bioderma Sebium Gel Gommant với kết cấu dạng gel có chứa những hạt Polyethylene sẽ giúp nhẹ nhàng lấy đi lớp tế bào chết, bụi bẩn, bã nhờn tồn đọng trên da...giúp lỗ chân lông thông thoáng.
- Giúp thúc đẩy quá trình tái tạo da mới nhằm mang đến cho bạn làn da sáng mịn màng và khỏe  mạnh hơn.', 351000, N'Tuýp', 10, 24, 20, N'Tẩy Da Chết Bioderma Sebium Gel Gommant 100ml', N'Aqua/water/eau, polyethylene, sodium laureth sulfate, xanthan gum, lauryl glucoside, ginkgo biloba leaf extract, mannitol, xylitol, rhamnose, fructooligosaccharides, glycolic acid, salicylic acid, sodium hydroxide, disodium edta, propylene glycol, fragrance (parfum)', 10, 1, 2, 1)
GO
INSERT [dbo].[SanPham] ([maSanPham], [congDung], [donGia], [donViTinh], [giamGia], [hanSuDung], [soLuongTon], [tenSanPham], [thanhPhan], [thue], [maNhaCungCap], [maDanhMuc], [maNhanVien]) VALUES (5, N'Hiệu ứng "Photoshop” làn da từ Valmont - là biểu tượng chăm sóc da thiết yếu, mặt nạ kem giúp xoá đi dấu hiệu mệt mỏi bằng cách làm mới làn da và làm đầy nếp nhăn chỉ trong vài phút', 6510000, N'Lọ', 10, 32, 8, N'VALMONT Prime Renewing Pack - Mặt nạ kem tái sinh làn da', N'Water (Aqua), Mineral Oil (Paraffinum Liquidum), Propylene Glycol, Calcium Dna, Gynostemma Pentaphyllum Extract, Lecithin, Magnesium Dna, Palmitoyl, Tetrapeptide-7, Palmitoyl Tripeptide-1, Panax Ginseng Root Extract, Rna, Sodium Dna, Urea, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Butylene Glycol, C12-20 Acid Peg-8 Ester, C13-14 Isoparaffin, Caprylyl Glycol, Carbomer, Coco-Glucoside, Disodium Edta, Glycerin, Helylene Glycol, Laureth-7, Menthyl Lactate, Polyacrylamide, Potassium Cetyl Phosphate, Sodium Carboxymethyl Beta-Glucan, Sodium Hydroxide, Sodium Lactate, Titanium Dioxide (Ci 77891), Ethylhexylglycerin, Phenoxyethanol, Fragrance (Parfum), Benzyl Benzoate, Cinnamyl Alcohol, Citronellol, Eugenol, Geranoil, Hexyl Cinnamal, Hydroxycitronellal, Limonene, Linalool.', 10, 2, 1, 1)
GO
INSERT [dbo].[SanPham] ([maSanPham], [congDung], [donGia], [donViTinh], [giamGia], [hanSuDung], [soLuongTon], [tenSanPham], [thanhPhan], [thue], [maNhaCungCap], [maDanhMuc], [maNhanVien]) VALUES (7, N'Tẩy da chết da đầu chiết xuất từ muối biển tràn đầy năng lượng giúp làm sạch sâu da đầu đồng thời loại bỏ các tạp chất tăng sâu và mang lại sự tươi mát lâu dài. Dành cho da dầu, tóc nhanh bết và nhìu gàu.', 1300000, N'Lọ', 10, 32, 10, N'KERASTASE Scrub Energisant - Tẩy da chết da dầu, tóc bết & gàu', N'Helianthus Annuus Seed Oil, Sunflower Seed Oil, Citrus Limon Peel Oil, Lemon Peel Oil, Limonene, Parfum, Fragrance, Citral, Zingiber Officinale Root Oil, Ginger Root Oil, Pelargonium Graveolens Flower Oil, Linalool, Citronellol, Geraniol, Hydroxycitronellal, Hexyl Cinnamal.', 10, 3, 3, 1)
GO
INSERT [dbo].[SanPham] ([maSanPham], [congDung], [donGia], [donViTinh], [giamGia], [hanSuDung], [soLuongTon], [tenSanPham], [thanhPhan], [thue], [maNhaCungCap], [maDanhMuc], [maNhanVien]) VALUES (9, N'Nước hoa hồng giàu chất chống oxy hoá với hơn 90% chiếc xuất từ xương rồng ép tươi sau khi thu hoạch giúp cân bằng độ pH của da và làm ẩm da mang lại một làn da tươi mát, trong trẻo và khoẻ mạnh', 750000, N'Chai', 10, 24, 20, N'HUXLEY Toner; Extract It - Nước hoa hồng dưỡng ẩm', N'Opuntia Ficus-Indica Stem Extract, Propanediol, Dipropylene Glycol, 1,2-Hexanediol, Opuntia Ficus-Indica Seed Oil, Lagerstroemia Indica Flower Extract, Rosa Centifolia Flower Extract, PEG-60 Hydrogenated Castor Oil, Xanthan Gum, Butylene Glycol, Ethylhexylglycerin, Water, Disodium EDTA, Phenoxyethanol, Fragrance', 10, 4, 4, 1)
GO
INSERT [dbo].[SanPham] ([maSanPham], [congDung], [donGia], [donViTinh], [giamGia], [hanSuDung], [soLuongTon], [tenSanPham], [thanhPhan], [thue], [maNhaCungCap], [maDanhMuc], [maNhanVien]) VALUES (14, N'Một loại phấn nước có kết cấu mỏng nhẹ, cung cấp lớp nền có độ che phủ hoàn hảo nhưng tự nhiên và ẩm mượt, không gây khô mốc cũng không gây bóng dầu, rất phù hợp cho những làn da nhạy cảm, kể cả da mụn, và khí hậu nhiệt đới nóng ẩm quanh năm.', 990000, N'Hủ', 10, 32, 20, N'HUXLEY Moist Cushion; Own Attitude SPF24/PA++ - Phấn nước trang điểm', N'Opuntia Ficus-Indica Stem Extract, Water, Titanium Dioxide (CI 77891), Cyclopentasiloxane, Ethylhexyl Methoxycinnamate, Diphenylsiloxy Phenyl Trimethicone, Dipropylene Glycol, Ethylhexyl Salicylate, Cyclohexasiloxane, Butylene Glycol Dicaprylate/Dicaprate, Lauryl PEG-10 Tris(Trimethylsiloxy)silylethyl Dimethicone, Methyl Trimethicone, Mica (CI 77019), Dimethicone, 1,2-Hexanediol, Centella Asiatica Extract, Chamomilla Recutita (Matricaria) Flower Extract, Opuntia Ficus-Indica Seed Oil, Balanites Roxburghii Seed Oil, PEG-10 Dimethicone, Disteardimonium Hectorite, Magnesium Sulfate, Isododecane, Methyl Methacrylate Crosspolymer, Stearic Acid, Alumina, Acrylates/Polytrimethylsiloxymethacrylate Copolymer, Dimethicone/Vinyl Dimethicone Crosspolymer, Triethoxycaprylylsilane, Aluminum Hydroxide, Butylene Glycol, Ethylhexylglycerin, Glyceryl Caprylate, Cassia Angustifolia Seed Polysaccharide, Tocopherol, Disodium EDTA, Phenoxyethanol, Fragrance(Parfum), Iron Oxides (CI 77492), Iron Oxides (CI 77491), Iron Oxides (CI 77499)', 10, 5, 5, 1)
GO
INSERT [dbo].[SanPham] ([maSanPham], [congDung], [donGia], [donViTinh], [giamGia], [hanSuDung], [soLuongTon], [tenSanPham], [thanhPhan], [thue], [maNhaCungCap], [maDanhMuc], [maNhanVien]) VALUES (17, N'Nước uống bổ sung Collagen cần thiết cho da, cân bằng độ ẩm đồng thời làm giảm và ngăn chặn tình trạng lão hóa da mang đến cho bạn làn da căng mọng, tươi tắn, tràn đầy sức sống. ', 1850000, N'Hộp', 10, 24, 10, N'VITAL BEAUTIE Super Collagen - Nước uống bổ sung Collagen', N'Contains 1000mg of Hydrolysed Collagen, Purified Water, Orange Concentrate, Citric Acid, Pectin, Sodium Oral Ginseng, Enzyme Treated Stevia, Tea Powder, Calcium Powder Mixture, Hyaluronic Acid, Bonito Fish Protein Hydrolysate, Vitamin C', 10, 6, 6, 1)
GO
INSERT [dbo].[SanPham] ([maSanPham], [congDung], [donGia], [donViTinh], [giamGia], [hanSuDung], [soLuongTon], [tenSanPham], [thanhPhan], [thue], [maNhaCungCap], [maDanhMuc], [maNhanVien]) VALUES (18, N'
Là sản phẩm tẩy trang 4-trong-1
(1) Loại bỏ lớp trang điểm trên mặt, mắt và môi.
(2) Rửa sạch tạp chất và dầu thừa
(3) Nuôi dưỡng với prebiotic
(4) Cấp ẩm sâu
', 1125000, N'Chai', 10, 32, 10, N'PREBIOTIC 4-IN-1 MULTICLEANSER', N'Water/Aqua/Eau, Glycerin, Decyl Glucoside, C13-C16 Isoparaffin, Hexylene Glycol, Propanediol, Hydroxyethyl Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Lactobacillus, Alpha-Glucan Oligosaccharide, Polymnia Sonchifolia Root Juice, Xylitol, Xylitylglucoside, Anhydroxylitol, Sodium Hyaluronate, Sodium Surfactin, Squalane, Urea, Yeast Amino Acids, Trehalose, Inositol, Taurine, Betaine, Isohexadecane, Caprylhydroxamic Acid, Maltodextrin, 1,2 Hexanediol, Polysorbate 80, Acrylamide/Sodium Acryloyldimethyltaurate Copolymer, Citric Acid, Disodium EDTA', 10, 7, 1, 1)
GO
INSERT [dbo].[SanPham] ([maSanPham], [congDung], [donGia], [donViTinh], [giamGia], [hanSuDung], [soLuongTon], [tenSanPham], [thanhPhan], [thue], [maNhaCungCap], [maDanhMuc], [maNhanVien]) VALUES (19, N'- Giới hạn sự tăng sắc tố và bảo vệ sẹo.

- Đảm bảo sự bảo vệ chống lại sự tổn thương do tia UVA/UVB (cháy nắng, không dung nạp ánh mặt trời...)

- Hàng rào bảo vệ tự nhiên và chủ động của da, chống lại những nguy cơ tổn thương tế bào và lão hóa sớm: bản quyền sinh học Bioprotection Cell.

Đặc trưng:

- Không chứa chất tạo hương.

- Không chứa paraben.

- Không bị rửa trôi bởi nước.

- Ổn định trước ánh sáng.

- Không sinh nhân mụn', 441000, N'Tuýp', 10, 24, 10, N'Kem Chống Nắng Bioderma Ngừa Vết Thâm SPF50+ 30ml', N'AQUA/WATER/EAU, DICAPRYLYL CARBONATE, OCTOCRYLENE, METHYLENE BIS-BENZOTRIAZOLYL TETRAMETHYLBUTYLPHENOL (Tinosorb M), BUTYL METHOXYDIBENZOYLMETHANE (Avobenzone), BIS-ETHYLHEXYLOXYPHENOL METHOXYPHENYL TRIAZINE (Tinosorb S), CYCLOPENTASILOXANE, DIPROPYLENE GLYCOL, C20-22 ALKYL PHOSPHATE, GLYCERYL STEARATE, PEG-100 STEARATE, ECTOIN, MANNITOL, XYLITOL, RHAMNOSE, FRUCTOOLIGOSACCHARIDES, LAMINARIA OCHROLEUCA EXTRACT, C20-22 ALCOHOLS, DECYL GLUCOSIDE, CYCLOHEXASILOXANE, HYDROXYETHYL ACRYLATE/SODIUM ACRYLOYLDIMETHYL TAURATE COPOLYMER, GLYCYRRHIZA GLABRA (LICORICE) ROOT EXTRACT, GLYCYRRHETINIC ACID, XANTHAN GUM, PROPYLENE GLYCOL, CITRIC ACID, PENTYLENE GLYCOL, CAPRYLIC/CAPRIC TRIGLYCERIDE, DISODIUM EDTA, SODIUM HYDROXIDE, PHENOXYETHANOL, CHLORPHENESIN.', 10, 2, 2, 1)
GO
INSERT [dbo].[SanPham] ([maSanPham], [congDung], [donGia], [donViTinh], [giamGia], [hanSuDung], [soLuongTon], [tenSanPham], [thanhPhan], [thue], [maNhaCungCap], [maDanhMuc], [maNhanVien]) VALUES (20, N'Sữa rửa mặt tạo bọt cân bằng và thanh lọc da như một đám mây tinh khiết với kết cấu nhẹ và mềm mịn giúp đào thải những bụi bẩn, bã nhờn trên da mang lại cảm giác sạch, sáng mịn và thông thoáng.', 2070000, N'Chai', 10, 24, 10, N'VALMONT Bubble Falls - Sữa rửa mặt tạo bọt cân bằng da', N'Water (Aqua), Coco-Glucoside, Sodium Lauryl Glucose Carboxylate, Lauryl Glucoside, PEG-6 Caprylic/Capric Glycerides, Cocamidopropyl Betaine, Alpha-Glucan Oligosaccharide, Anhydroxylitol, Lactobacillus, Levulinic Acid, Maltodextrin, Polymnia Sonchifolia Root Juice, Sodium Levulinate, Xylitol, Xylitylglucoside, Citric Acid, Disodium Edta, Glycerin, Sodium Chloride, Sodium Citrate, Sodium Benzoate, Sorbic Acid, Fragrance (Parfum), Citronellol, Eugenol, Hydroxycitronellal, Limonene, Linalool.', 10, 6, 1, 1)
GO
INSERT [dbo].[SanPham] ([maSanPham], [congDung], [donGia], [donViTinh], [giamGia], [hanSuDung], [soLuongTon], [tenSanPham], [thanhPhan], [thue], [maNhaCungCap], [maDanhMuc], [maNhanVien]) VALUES (22, N'Mặt nạ cao cấp dưỡng sáng, căng bóng và bảo vệ da khỏi các tác hại từ môi trường. Thiết kế túi kép độc đáo, hai chiết xuất đặc trưng của Huxley là Dầu xương rồng và Tinh chất dưỡng sáng được bảo quản riêng biệt, cho phép người dùng tự kết hợp khi sử dụng.', 600000, N'Cái', 10, 12, 5, N'HUXLEY Mask; Glow And Brightness - Mặt dưỡng sáng và căng bóng', N'Oil Pouch: Cyclopentasiloxane, Cetyl Ethylhexanoate, Polyglyceryl-10 Oleate, Polyglyceryl-2 Dioleate, Aqua, Prunus armeniaca (Apricot) Kernel Oil, Macadamia integrifolia Seed Oil, Argania spinosa Kernel Oil, Opuntia ficus-indica Seed Oil, Fragrance.

Sheet mask Pouch: Opuntia Ficus-Indica Stem Extract, Aqua, Glycerin, Niacinamide, Alcohol, Methylpropanediol, Althaea rosea Flower Extract, Gossypium herbaceum (Cotton) Extract, Buddleja davidii Extract, Thymus vulgaris (Thyme) Extract, Leontopodium alpinum Flower/Leaf Extract, 1,2-Hexanediol, Hydroxyacetophenone, Choleth-24, Arginine, Allantoin, Silica, Butylene Glycol, Ethylhexylglycerin, Glutathione, Gluconolactone, Calcium Gluconate, Carbomer, Caffeine, Xanthan Gum, Disodium EDTA, Sodium Benzoate, Fragrance.', 10, 7, 5, 1)
GO
INSERT [dbo].[SanPham] ([maSanPham], [congDung], [donGia], [donViTinh], [giamGia], [hanSuDung], [soLuongTon], [tenSanPham], [thanhPhan], [thue], [maNhaCungCap], [maDanhMuc], [maNhanVien]) VALUES (23, N'Một loại huyết thanh đa tác dụng cung cấp các lợi ích chống lão hóa, trị mụn và làm sáng da. Đã được chứng minh lâm sàng có thể mang lại kết quả tức thì và lâu dài trong việc làm mờ nếp nhăn, làm giảm sự xuất hiện của chứng tăng sắc tố, làm sáng màu da rõ rệt, đồng thời giảm mẩn đỏ và mụn trứng cá, làn da trông sáng và khỏe mạnh hơn.

Được đánh giá là một sản phẩm tuyệt vời cho làn da dễ bị mụn.', 2990000, N'Chai', 10, 12, 10, N'IS CLINICAL Active Serum - Tinh chất đặc trị mụn, lỗ chân lông & dầu thừa', N'Water/Aqua/Eau, Glycerin, Butylene Glycol, Alcohol Denat., Saccharum Officinarum (Sugarcane) Extract [Extrait De Canne à Sucre], Vaccinium Myrtillus Fruit/Leaf Extract, Triethanolamine, Salix Alba (Willow) Bark Extract, Glyceryl Polyacrylate, Arbutin, Polyporus Umbellatus (Mushroom) Extract, Menthol, Phenoxyethanol', 10, 3, 6, 1)
GO
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 
GO
INSERT [dbo].[KhachHang] ([maKhachHang], [ghiChu], [phuong], [quan], [soNha], [thanhPho], [email], [gioiTinh], [namSinh], [ngheNghiep], [soCMND], [soDienThoai], [tenKhachHang], [username]) VALUES (1, NULL, NULL, NULL, NULL, NULL, N'thanhliem2n@gmail.com', NULL, 0, NULL, NULL, N'0123456789', N'Nguyễn Thanh Liêm', N'liem123')
GO
INSERT [dbo].[KhachHang] ([maKhachHang], [ghiChu], [phuong], [quan], [soNha], [thanhPho], [email], [gioiTinh], [namSinh], [ngheNghiep], [soCMND], [soDienThoai], [tenKhachHang], [username]) VALUES (4, NULL, NULL, NULL, NULL, NULL, N'abc@gmail.com', NULL, 0, NULL, NULL, N'1234567891', N'Nguyễn Văn A', N'username')
GO
INSERT [dbo].[KhachHang] ([maKhachHang], [ghiChu], [phuong], [quan], [soNha], [thanhPho], [email], [gioiTinh], [namSinh], [ngheNghiep], [soCMND], [soDienThoai], [tenKhachHang], [username]) VALUES (5, NULL, NULL, NULL, NULL, NULL, N'abcd@gmail.com', NULL, 0, NULL, NULL, N'0234563821', N'Nguyễn Văn B', N'admin')
GO
INSERT [dbo].[KhachHang] ([maKhachHang], [ghiChu], [phuong], [quan], [soNha], [thanhPho], [email], [gioiTinh], [namSinh], [ngheNghiep], [soCMND], [soDienThoai], [tenKhachHang], [username]) VALUES (6, NULL, NULL, NULL, NULL, NULL, N'abcde@gmail.com', NULL, 0, NULL, NULL, N'0444444441', N'Nguyễn Văn C', N'manager')
GO
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[GioHang] ON 
GO
INSERT [dbo].[GioHang] ([maGioHang], [ngayTao], [maKhachHang]) VALUES (1, CAST(N'2016-01-06' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[GioHang] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhToan] ON 
GO
INSERT [dbo].[ThanhToan] ([maThanhToan], [phuongThucTT]) VALUES (1, N'COD')
GO
SET IDENTITY_INSERT [dbo].[ThanhToan] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 
GO
INSERT [dbo].[HoaDon] ([maHoaDon], [ghiChu], [phuong], [quan], [soNha], [thanhPho], [diaChiNhanHang], [email], [ngayGiao], [ngayLap], [sdtNhanHang], [tenNhanHang], [tongTien], [trangThaiHoaDon], [maThanhToan]) VALUES (2, N'sdsd', N'12', N'8', N'120', N'HCM', N'PhuDInh', N'mail', CAST(N'2021-01-06' AS Date), CAST(N'2021-08-06' AS Date), N'034324233', N'Liem', 100000, N'DaGiao', 1)
GO
INSERT [dbo].[HoaDon] ([maHoaDon], [ghiChu], [phuong], [quan], [soNha], [thanhPho], [diaChiNhanHang], [email], [ngayGiao], [ngayLap], [sdtNhanHang], [tenNhanHang], [tongTien], [trangThaiHoaDon], [maThanhToan]) VALUES (3, N'TRG', N'Phường 2', N'Quận 2', N'343/3', N'Hồ Chí Minh', NULL, N'thanhliem2n@gmail.com', CAST(N'2021-06-08' AS Date), CAST(N'2021-06-03' AS Date), N'0123456789', N'Nguyen Thanh Liem', 6510000, N'Thành công', 1)
GO
INSERT [dbo].[HoaDon] ([maHoaDon], [ghiChu], [phuong], [quan], [soNha], [thanhPho], [diaChiNhanHang], [email], [ngayGiao], [ngayLap], [sdtNhanHang], [tenNhanHang], [tongTien], [trangThaiHoaDon], [maThanhToan]) VALUES (4, N'gdf', N'Phường 2', N'Quận 11', N'343/3', N'Hồ Chí Minh', NULL, N'thanhliem2n@gmail.com', CAST(N'2021-06-08' AS Date), CAST(N'2021-06-03' AS Date), N'0123456789', N'Nguyen Thanh Liem', 6510000, N'Thành công', 1)
GO
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[LineItem] ON 
GO
INSERT [dbo].[LineItem] ([maLineItem], [soLuong], [thanhTien], [maGioHang], [maHoaDon], [maSanPham]) VALUES (3, 1, 10000, 1, 2, 1)
GO
INSERT [dbo].[LineItem] ([maLineItem], [soLuong], [thanhTien], [maGioHang], [maHoaDon], [maSanPham]) VALUES (4, 1, 1000, 1, 2, 5)
GO
INSERT [dbo].[LineItem] ([maLineItem], [soLuong], [thanhTien], [maGioHang], [maHoaDon], [maSanPham]) VALUES (5, 1, 5859000, NULL, 3, 5)
GO
INSERT [dbo].[LineItem] ([maLineItem], [soLuong], [thanhTien], [maGioHang], [maHoaDon], [maSanPham]) VALUES (6, 1, 5859000, NULL, 4, 5)
GO
SET IDENTITY_INSERT [dbo].[LineItem] OFF
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (1, N'sp-1.jpg')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (5, N'sp-2.png')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (7, N'sp-3.png')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (9, N'sp-4.png')
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
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (19, N'sp-14.jpg')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (19, N'sp-15.jpg')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (19, N'sp-16.jpg')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (20, N'sp-17.png')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (20, N'sp-18.jpg')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (20, N'sp-19.jpg')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (22, N'sp-20.png')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (22, N'sp-21.jpg')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (22, N'sp-22.jpg')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (23, N'sp-23.png')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (23, N'sp-24.png')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (23, N'sp-25.png')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (14, N'sp-5.png')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (17, N'sp-6.png')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (18, N'sp-7.jpg')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (18, N'sp-8.jpg')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (1, N'sp-9.jpg')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (5, N'sp-10.jpg')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (7, N'sp-11.jpg')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (9, N'sp-12.jpg')
GO
INSERT [dbo].[HinhAnh] ([maSanPham], [hinhAnh]) VALUES (14, N'sp-13.jpg')
GO
SET IDENTITY_INSERT [dbo].[roles] ON 
GO
INSERT [dbo].[roles] ([id], [name]) VALUES (1, N'USER')
GO
INSERT [dbo].[roles] ([id], [name]) VALUES (2, N'ADMIN')
GO
INSERT [dbo].[roles] ([id], [name]) VALUES (3, N'MANAGER')
GO
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
INSERT [dbo].[user_role] ([USER_ID], [ROLE_ID]) VALUES (N'liem123', 2)
GO
INSERT [dbo].[user_role] ([USER_ID], [ROLE_ID]) VALUES (N'username', 1)
GO
INSERT [dbo].[user_role] ([USER_ID], [ROLE_ID]) VALUES (N'admin', 1)
GO
INSERT [dbo].[user_role] ([USER_ID], [ROLE_ID]) VALUES (N'manager', 3)
GO
INSERT [dbo].[user_role] ([USER_ID], [ROLE_ID]) VALUES (N'liem2n', 3)
GO
