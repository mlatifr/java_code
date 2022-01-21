import 'package:flutter/foundation.dart';

class BottomNavBarProvider with ChangeNotifier {
  int _currentTab = 0;
  int get currentTab => _currentTab;
  set currentTab(int tab) {
    _currentTab = tab;
    notifyListeners();
  }
}
