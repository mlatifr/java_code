// ignore_for_file: file_names, prefer_final_fields

import 'package:flutter/foundation.dart';

import 'ListMakanan/makanan_model.dart';

class MakananProvider with ChangeNotifier {
  List<MakananModel> _listMakananProvider = listMakanan;
  List<MakananModel> get listMakananProvider {
    return _listMakananProvider;
  }

  // void addMakanan(MakananModel mkn) {
  //   _listMakananProvider.add(mkn);
  //   notifyListeners();
  // }

  // void removeMakanan(MakananModel mkn) {
  //   _listMakananProvider.remove(mkn);
  //   notifyListeners();
  // }
  // void addJumlah(int item) {
  //   MakananModel mm = MakananModel(jumlah: item);
  //   listMakananProvider.add(mm);
  // }

  // void removeItem(int item) {
  //   listMakananProvider.remove(item);
  // }

  // int _jumlah = 0;
  // int get jumlah => _jumlah;
  // set jumlah(int tab) {
  //   _jumlah = tab;
  //   notifyListeners();
  // }
}
