// ignore_for_file: file_names, prefer_final_fields

import 'package:flutter/foundation.dart';

import 'ListMinuman/minuman_model.dart';

class MinumanProvider with ChangeNotifier {
   List<MinumanModel> _listMinumanProvider = listMinuman;
  List<MinumanModel> get listMinumanProvider {
    return _listMinumanProvider;
  }

}
