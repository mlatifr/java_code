library java_code.check_connection;

import 'dart:async';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'no_internet.dart';

class checkInternet {
  late StreamSubscription<DataConnectionStatus> listener;
  var InternetStatus = "Unknown";
  checkConnection(BuildContext context) async {
    listener = DataConnectionChecker().onStatusChange.listen((status) {
      switch (status) {
        case DataConnectionStatus.connected:
          if (InternetStatus == "no internet") {
            Navigator.pop(context);
          }
          InternetStatus = "internet";
          print('${InternetStatus}');
          break;
        case DataConnectionStatus.disconnected:
          InternetStatus = "no internet";
          print('${InternetStatus}');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NoInternetPage(),
            ),
          );
          break;
      }
    });
    return await DataConnectionChecker().connectionStatus;
  }
}