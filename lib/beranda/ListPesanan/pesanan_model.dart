List<PesananModel> listPesanan = [];

class PesananModel {
  // ignore: prefer_typing_uninitialized_variables
  var nama, foto, harga, stok, jumlah, level, topping, catatan;
  PesananModel(
      {this.nama,
      this.stok,
      this.foto,
      this.harga,
      this.jumlah,
      this.level,
      this.topping,
      this.catatan});
}
