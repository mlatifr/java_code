// ignore_for_file: file_names

import 'package:flutter/foundation.dart';

class BerandaMenuProvider with ChangeNotifier {
  int _currentTab = 0;
  int get currentTab => _currentTab;
  set currentTab(int tab) {
    _currentTab = tab;
    notifyListeners();
  }
}
