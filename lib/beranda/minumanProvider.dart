// ignore_for_file: file_names

import 'package:flutter/foundation.dart';

class MinumanProvider with ChangeNotifier {
  int _jumlah = 0;
  int get jumlah => _jumlah;
  set jumlah(int tab) {
    _jumlah = tab;
    notifyListeners();
  }
}
