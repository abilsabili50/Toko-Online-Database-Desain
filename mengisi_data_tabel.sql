insert into provinsi (nama) values 
('Yogyakarta'),
('DKI Jakarta'),
('Jawa Timur'),
('Jawa Barat'),
('Jawa Tengah'),
('Banten'),
('Sumatera Barat'),
('Sumatera Utara'),
('Kalimantan Timur'),
('Sulawesi Utara');

insert into toko (nama, telp, id_provinsi) values
('Adidas','08123456123', 2),
('Nike','08123456124',2),
('Puma','08123456125',2),
('Ventela','08123456126',4),
('Patrobas','08123456127',5),
('Sampoerna','08123456128',3),
('Converse','08123456129',2),
('LusukaCraft','08123456130',1),
('Erigo','08123456131',1),
('SilaTStore','08123456132',9);

insert into pengguna (nama, email, password, telp, alamat, id_provinsi) values
('abil', 'abil@gmail.com', 'abil123', '088123123123', 'Balongsari', 3),
('syaugi', 'syaugi@gmail.com', 'syaugi123', '088123123124', 'Wonocolo', 3),
('fahrul', 'fahrul@gmail.com', 'fahrul123', '088123123125', 'Tambak Wedi', 3),
('denna', 'denna@gmail.com', 'denna123', '088123123126', 'Cihampelas', 4),
('rodhi', 'rodhi@gmail.com', 'rodhi123', '088123123127', 'Cibubur', 4),
('julio', 'julio@gmail.com', 'julio123', '088123123128', 'Tegalrejo', 5),
('alwan', 'alwan@gmail.com', 'alwan123', '088123123129', 'Bungkaman', 5),
('ilyas', 'ilyas@gmail.com', 'ilyas123', '088123123130', 'Bekasi', 2),
('nicky', 'nicky@gmail.com', 'nicky123', '088123123131', 'Tanjung Priuk', 2),
('hafi', 'hafi@gmail.com', 'hafi123', '088123123132', 'Krian', 7);

insert into produk (nama, deskripsi, harga, stok, id_toko) values
('Adidas Superstar', 'Jual murah gan', 200000, 2, 1),
('Nike Air', 'Jual murah gan', 250000,1, 2),
('Ventela Public', 'Jual murah gan', 150000, 15, 4),
('Ventela Vintage', 'Jual murah gan', 220000, 6, 4),
('Sampoerna Mild', 'Jual murah gan', 30000, 113, 6),
('Converse Low', 'Jual murah gan', 300000, 5, 7),
('Converse High', 'Jual murah gan', 320000, 9, 7),
('Erigo Crewneck', 'Jual murah gan', 130000, 12, 9),
('Baju Silat', 'Jual murah gan', 65000, 2, 10),
('Sampoerna Kretek', 'Jual murah gan', 18000, 39, 6);

insert into pesanan (id_pengguna) values
(1),
(3),
(4),
(1),
(2),
(7),
(5),
(3),
(4),
(9);

insert into keranjang (id_pesanan, id_produk, jumlah) values
(1, 5, 1),
(1, 6, 1),
(1, 8, 1),
(3, 5, 4),
(4, 10, 12),
(7, 9, 1),
(10, 8, 2),
(2, 10, 3),
(4, 9, 2),
(5, 2, 2);

insert into metode (nama) values
('Ovo'),
('Gopay'),
('Transfer'),
('COD'),
('Dana');

insert into pembayaran (id_pesanan, id_metode, total_harga) values
(1, 4, 460000),
(2, 3, 54000),
(3, 1, 120000),
(4, 2, 346000),
(5, 5, 500000),
(7, 2, 65000),
(10, 3, 260000);