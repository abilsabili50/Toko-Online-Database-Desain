create table provinsi (
	id int primary key not null auto_increment,
    nama varchar(50)
);

-- hanya untuk delete table
create table lokasi (
	id int primary key not null auto_increment,
    nama_lokasi varchar(200)
);

create table toko (
	id int primary key not null auto_increment,
    nama varchar(50),
    telp varchar(25),
    id_provinsi int,
    foreign key (id_provinsi) references provinsi(id)
);

create table pengguna (
	id int primary key not null auto_increment,
    nama varchar(50),
    email varchar(50),
    password varchar(50),
    telp varchar(25),
    alamat varchar(100),
    id_provinsi int,
    foreign key (id_provinsi) references provinsi(id)
);

create table produk (
	id int primary key not null auto_increment,
    nama varchar(50),
    deskripsi varchar(255),
    harga int,
    stok int,
    id_toko int,
    foreign key (id_toko) references toko(id)
);

create table pesanan (
	id int primary key not null auto_increment,
    id_pengguna int,
    foreign key (id_pengguna) references pengguna(id)
);

create table keranjang (
	id_pesanan int,
    id_produk int,
    jumlah int,
    foreign key (id_pesanan) references pesanan(id),
    foreign key (id_produk) references produk(id)
);

create table metode (
	id int primary key not null auto_increment,
    nama varchar(50)
);

create table pembayaran (
	id int primary key not null auto_increment,
    id_pesanan int,
    id_metode int,
    total_harga int,
    foreign key (id_pesanan) references pesanan(id),
    foreign key (id_metode) references metode(id)
);