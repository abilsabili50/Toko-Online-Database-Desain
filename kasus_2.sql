select produk.nama as nama_produk, sum(keranjang.jumlah) as jumlah_pembelian from produk
inner join keranjang on keranjang.id_produk = produk.id
group by nama_produk order by jumlah_pembelian desc limit 3;