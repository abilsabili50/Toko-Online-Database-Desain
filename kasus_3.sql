-- untuk melihat stok 5 produk terbanyak
select nama, harga, stok from produk order by stok desc limit 5;

-- untuk melihat 5 jumlah barang terbanyak yang dijual setiap toko
select toko.nama as nama_toko, sum(produk.stok) as jumlah_barang from produk
inner join toko on toko.id = produk.id_toko
group by nama_toko order by jumlah_barang desc;