-- melihat seluruh pesanan
select pesanan.id as id_pesanan, pengguna.nama as user, produk.nama as produk from pengguna
inner join pesanan on pesanan.id_pengguna = pengguna.id
inner join keranjang on keranjang.id_pesanan = pesanan.id
inner join produk on produk.id = keranjang.id_produk;

-- penyelesaian kasus 1
select pesanan.id as id_pesanan, pengguna.nama as user, produk.nama as produk from pengguna
inner join pesanan on pesanan.id_pengguna = pengguna.id
inner join keranjang on keranjang.id_pesanan = pesanan.id
inner join produk on produk.id = keranjang.id_produk
where id_pesanan = 1;