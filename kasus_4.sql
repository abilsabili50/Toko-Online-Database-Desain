select pengguna.nama, avg(keranjang.jumlah * produk.harga) as rata2_pembelian from pengguna
inner join pesanan on pesanan.id_pengguna = pengguna.id
inner join keranjang on keranjang.id_pesanan = pesanan.id
inner join produk on produk.id = keranjang.id_produk
group by pesanan.id_pengguna;