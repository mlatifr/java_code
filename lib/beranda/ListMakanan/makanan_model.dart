List<MakananModel> listMakanan = [
  MakananModel(
      nama: 'Chicken Katsu',
      foto: 'chicken_katsu',
      harga: 10000,
      stok: 10,
      jumlah: 0,
      topping: '-',
      level: 1,
      catatan: 'tidak ada catatan'),
  MakananModel(
      nama: 'Chicken Katsu',
      foto: 'chicken_katsu',
      harga: 10000,
      stok: 10,
      jumlah: 0,
      topping: '-',
      level: 2,
      catatan: 'tidak ada catatan'),
  MakananModel(
      nama: 'Chicken Katsu',
      foto: 'chicken_katsu',
      harga: 10000,
      stok: 10,
      jumlah: 0,
      topping: '-',
      level: 3,
      catatan: 'tidak ada catatan'),
  MakananModel(
      nama: 'Chicken Katsu',
      foto: 'chicken_katsu',
      harga: 10000,
      stok: 10,
      jumlah: 0,
      topping: '-',
      level: 4,
      catatan: 'tidak ada catatan'),
  MakananModel(
      nama: 'Chicken Katsu',
      foto: 'chicken_katsu',
      harga: 10000,
      stok: 10,
      jumlah: 0,
      topping: '-',
      level: 1,
      catatan: 'tidak ada catatan'),
  MakananModel(
      nama: 'Chicken Katsu',
      foto: 'chicken_katsu',
      harga: 10000,
      stok: 10,
      jumlah: 0,
      topping: '-',
      level: 2,
      catatan: 'tidak ada catatan'),
  MakananModel(
      nama: 'Chicken Kari',
      foto: 'chicken_katsu',
      harga: 15000,
      stok: 5,
      jumlah: 0,
      topping: '-',
      level: 3,
      catatan: 'tidak ada catatan'),
  MakananModel(
      nama: 'Chicken Slam',
      foto: 'chicken_katsu',
      harga: 8500,
      stok: 0,
      jumlah: 0,
      topping: '-',
      level: 4,
      catatan: 'tidak ada catatan'),
];

class MakananModel {
  // ignore: prefer_typing_uninitialized_variables
  var nama, foto, harga, stok, jumlah, level, topping, catatan;
  MakananModel(
      {this.nama,
      this.stok,
      this.foto,
      this.harga,
      this.jumlah,
      this.level,
      this.topping,
      this.catatan});
}
